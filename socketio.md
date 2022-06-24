
# socket.io

### Örnek Socket-io Kurulumu
- Kaynak: https://socket.io/get-started/chat
- git clone https://github.com/socketio/chat-example.git

### CORS on PHP
- https://socket.io/docs/v4/handling-cors/ CORS header ‘Access-Control-Allow-Origin’ missing
```PHP
$http_origin = $_SERVER['HTTP_ORIGIN'];

$allowed_domains = array(
  'http://domain1.com',
  'http://domain2.com',
);

if (in_array($http_origin, $allowed_domains))
{  
    header("Access-Control-Allow-Origin: $http_origin");
}
```
veya
```PHP
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Origin: https://www.example.com');
```

Kaynaklar:
- https://devnot.com/2019/cors-nedir/
- https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
- https://www.youtube.com/watch?v=ZKEqqIO7n-k&ab_channel=WebDevSimplified  Learn Socket.io In 30 Minutes

### Örnek
- https://codesandbox.io/s/socket-io-minimal-example-k3h2l

### socket-server üzerinde kurulum işlemleri
```bash
apt update
apt upgrade
apt autoremove
apt install nodejs
apt install npm
npm install pm2 -g
node -v  //    v10.19.0
npm -v   //      6.14.4
mkdir nurisocket
cd nurisocket
npm init -y
npm install socket.io

touch serverApp.js
vi serverApp.js 

pm2 start serverApp.js 
pm2 start serverApp.js -f
pm2 restart 0  // Mevcut uygulamayı tekrar çalıştır (değişiklikler devreye alınsın)
pm2 --help
pm2 log
pm2 logs
pm2 kill
pm2 status
vi /var/www/mercibag.com/socket.html
```

### socket-server üzerindeki socketchat.html dosyası
```HTML
<!DOCTYPE html>
<html>
  <head>
    <title>Socket.IO chat</title>
    <style>
      body { margin: 0; padding-bottom: 3rem; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif; }

      #form { background: rgba(0, 0, 0, 0.15); padding: 0.25rem; position: fixed; bottom: 0; left: 0; right: 0; display: flex; height: 3rem; box-sizing: border-box; backdrop-filter: blur(10px); }
      #input { border: none; padding: 0 1rem; flex-grow: 1; border-radius: 2rem; margin: 0.25rem; }
      #input:focus { outline: none; }
      #form > button { background: #333; border: none; padding: 0 1rem; margin: 0.25rem; border-radius: 3px; outline: none; color: #fff; }

      #messages { list-style-type: none; margin: 0; padding: 0; }
      #messages > li { padding: 0.5rem 1rem; }
      #messages > li:nth-child(odd) { background: #efefef; }
    </style>
  </head>
  <body>
    <ul id="messages"></ul>
    <form id="form" action="">
      <input id="input" type="text" autocomplete="off" /><button>Send</button>
    </form>

    <script src="https://cdn.socket.io/4.4.1/socket.io.min.js" integrity="sha384-fKnu0iswBIqkjxrhQCTZ7qlLHOFEgNkRmK2vaO/LbTZSXdJfAu6ewRBdwHPhBo/H" crossorigin="anonymous"></script>

    <script>
      var socket = io("http://157.245.74.22:5000");

      var messages = document.getElementById('messages');
      var form     = document.getElementById('form');
      var input    = document.getElementById('input');

      form.addEventListener('submit', function(e) {
        e.preventDefault();
        if (input.value) {
          socket.emit('chat message', input.value);
          input.value = '';
        }
      });

      socket.on('chat message', function(msg) {
        var item = document.createElement('li');
        item.textContent = msg;
        messages.appendChild(item);
        window.scrollTo(0, document.body.scrollHeight);
      });
    </script>
  </body>
</html>
```

### socket-server üzerindeki posts.html dosyası (videoya bakarak)
```HTML
<!DOCTYPE html>
<html>
  <head>
    <title>Socket.IO chat</title>
  </head>
  <body>
     <h1>Makaleler</h1>
     <table id='TABLO'>
     <tr>
          <th>Makale Adı</th>
          <th>Yayın tarihi</th>
     </tr>
     </table>
  <table>
    <script src="https://cdn.socket.io/4.4.1/socket.io.min.js" integrity="sha384-fKnu0iswBIqkjxrhQCTZ7qlLHOFEgNkRmK2vaO/LbTZSXdJfAu6ewRBdwHPhBo/H" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
      var socket = io("http://157.245.74.22:5000");

      socket.on('posts', function(msg) {
        $('#TABLO').prepend(`<tr>
                                <td>${data.name}</td>
                                <td>${data.date}</td>
                             </tr>` );
      });
    </script>
  </body>
</html>
```

### socket-server üzerindeki serverApp.js dosyası (Videoya bakarak)
```JS
const server = require("http").createServer();
const io     = require("socket.io")(server);

io.on("connection", (socket) => {
     console.log('sockete birileri bağlandı.');

     console.on('send-message', function(data) {
          console.log('Mesaj geldi:' + data);
          io.emit('message', data)
     });

     console.on('new-post', function(data) {
          console.log('sockete birileri bağlandı.');
          io.emit('post', data)
     });

     console.on('disconnect', function() {
          console.log('sockete birileri bağlandı.');
     });
})

server.listen(5000);

```



### socket-server üzerindeki serverApp.js dosyası
```JS
const { Server } = require("socket.io");
  
const io = new Server({ /* options */ });

io.on("connection", (socket) => {
     console.log('sockete birileri bağlandı.');

     // new-post eventını dinliyoruz, backendden buraya data göndereceğiz
     socket.on('new-post', function(data){
          // Backend'den çağrı geldi.
          console.log('new-post çağrısı geldi');
          // bir data gelirse bunu client'a gönderiyoruz
          // Gelen bu çağrıyı TARAYICI'da Client'lardan bu sayfayı dinleyen "posts" fonksiyonuna yayınlayalım
          io.emit('posts', data);
     });

     io.emit('chat message', 'Merhaba Dünya');

     socket.on('disconnect', function(){
          console.log('birileri geldi ve gitti.');
     });

});

io.listen(5000);
```

### PHP içinden socket.io çağrısı yapmak

Kaynak: https://github.com/Wisembly/elephant.io

```PHP
composer require wisebly/elephant.io

vi index.php
<?php
require __DIR__ . '/vendor/autoload.php';

use ElephantIO\Client;
use ElephantIO\Engine\SocketIO\Version2X;

$client = new Client(new Version2X('http://157.245.74.22:5000'));
$client->initialize();

$client->emit('new-post', 
               [
                 'name' => 'Makale Başlığı',
                 'date' => '6 Haziran 2022'
               ]
             );

$client->close();

```


PHP ---> SOCKET  ---> CLİENT

CLİENT --> SOCKET --> CLİENT

Kaynak: Tayfun Erbilen - Prototürk
