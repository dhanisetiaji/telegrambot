const { Color } = require('chalk')
const chalk = require('chalk')
const { Telegraf } = require('telegraf')
const mysql = require('mysql');
const ss = require("string-searching");
// var db = require("./db_config")


const bot = new Telegraf('1438905551:AAG-WJCdCHNRXEL1MtHE9CGEnJlJfTLDAYo')
bot.start((ctx) => {
    ctx.reply("Selamat datang di chatbot penjurusan Amikom Yogyakarta. klik /help untuk bantuan menggunakan bot ini")
    console.log(`[]${chalk.red(ctx.message.from.username)} bergabung`)

})


const conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "bot"
})
dbcon();
function dbcon(){
    console.log(chalk.green('DB Connected!'))
    conn.query("SELECT * FROM message", function(err,result,fields){
        if(err){
            throw err
        };
        dataChat = [];
        result.forEach(item => {
            // console.log(item.jawab)
            dataChat.push({
                id: item.id,
                kata_kunci: item.kata_kunci,
                jawab: item.jawab,
                CreatedAt: item.CreatedAt
            })
        })
    })
}


bot.help((ctx) => {
    ctx.reply("Silahkan ajukan pertanyaan kamu seputar amikom dan penjurusan disini, setelah itu chatbot akan menjawab dan memberikan informasi dan rekomendasi yang sesuai dengan kamu :)\ncontoh: jurusan yang cocok untuk anak ips ?")
    console.log(`[]${chalk.green(ctx.message.from.username)} membuka commands /help`)
})
bot.command('adddata', (ctx) => {
    console.log(`[]Pesan dari ${chalk.yellow(ctx.message.from.username)} untuk /adddata`)
    let input = ctx.message.text.split(" ").slice(1).join(' ').split('|');
    let inputkey = input[0];
    let inputanswer = input[1];
    var sql =  `INSERT INTO message(kata_kunci,jawab) VALUES('${inputkey}','${inputanswer}')`;
    conn.query(sql, function(err,result){
        if(err){
            throw err;
        }
        console.log(chalk.green('Data ditambahkan!'))
        ctx.reply("Data Berhasil ditambahkan")
        dbcon();
    })
    

})
bot.command('deldata', (ctx) => {
    console.log(`[]Pesan dari ${chalk.yellow(ctx.message.from.username)} untuk /deldata`)
    let input = ctx.message.text.split(" ");
    let inputid = input[1];
    var sql =  `DELETE FROM message WHERE id='${inputid}'`;
    conn.query(sql, function(err,result){
        if(err){
            throw err;
        }
        console.log(chalk.green('Data dihapus!'))
        ctx.reply("Data Berhasil dihapus")
        dbcon();
    });
    

})
bot.command('listdata', (ctx) => {
    console.log(`[]Pesan dari ${chalk.yellow(ctx.message.from.username)}, untuk /listdata`)
    let isipesan = "List Data :\n\n";
    dataChat.forEach(item =>{
        isipesan += `id: ${item.id}\nKey: ${item.kata_kunci}\nRespon: ${item.jawab}\n\n`
    })
    ctx.reply(isipesan);
})
bot.use((ctx) => {
    console.log(`[]Pesan dari ${chalk.yellow(ctx.message.from.username)}. Isi pesan ${chalk.yellow(ctx.message.text)}`)
    let n = dataChat.length
    let respon = "";
    for(var i=0;i<n;i++){
        const text = ctx.message.text;
        const pattern = dataChat[i].kata_kunci;
        let index = ss.boyer_moore(text,pattern)
        if(index != "-1"){
            // console.log(dataChat[i].jawab);
            ctx.reply(dataChat[i].jawab)
            respon = 1;
            break
        }else{
            console.log(chalk.yellow('Mencari data..'));
            respon = 0;
        }
    }
    if(respon == "1"){
        console.log(chalk.green('Data ditemukan!'))
    }else{
        console.log(chalk.red('data tidak ada. mengirim replay'))
        ctx.reply("Data yang anda cari tidak ada, silahkan mencoba kembali.")
    }
  })


bot.launch(
    console.log(chalk.green('Bot berhasil dijalankan!'))
)