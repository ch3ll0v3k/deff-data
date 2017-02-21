// ----------------------------------------------------
// RFC-6455
// http://tools.ietf.org/html/rfc6455
// https://learn.javascript.ru/websockets

// ----------------------------------------------------
var DEBUG;

var TmxWebSocket = {

    WS       : null,
    proto    : ['wss', 'ws'],
    host     : null, 
    deffHost : 'zergo.ru',

    'codes' : {
        '1000' : '[Close : OKE]',
        '1001' : '[Remote host closed connection]',
        '1002' : '[Remote host closed connection, (PROTOCOL ERROR) ]',
        '1003' : '[Remote host closed connection, (WRONG DATA TYPE) ]',
        '1006' : '[Connection closed without a "close frame" ]',
    },
    close : function(){
        this.WS.close();
    },
    newSocket : function(){

        // this.WS = new WebSocket('wss://localhost/', ["soap", "wamp"] );  // response [Sec-WebSocket-Protocol: soap]

        if( this.host == null ) this.host = this.deffHost;

        // this.WS = new WebSocket(this.proto[0]+'://'+this.host);
        // this.WS = new WebSocket('wss://zergo.ru/wss');
        // this.WS = new WebSocket('ws://zergo.ru/wss'); // (ProxyPass /wss/ ws://zergo.ru:9000/)
        // console.log(this.WS);
        // return;

        this.WS.onopen = function() {
            console.log("Соединение установлено.");
        };

        this.WS.onclose = function(evt) {
            if (evt.wasClean) {
                console.log('Соединение закрыто чисто');
            } else {
                console.log('Обрыв соединения');
            }

            console.log('CODE: '+TmxWebSocket.codes[ evt.code ]+' | REASON: ['+evt.reason+']' );
            //console.log('CODE: ['+evt.code+'] | REASON: ['+evt.reason+']' );

        };



        this.WS.onreadyState = function(evt) {
            console.log( evt );
        };


        this.WS.onmessage = function(evt) {
            console.log("Получены данные " + evt.data);
        };

        this.WS.onerror = function(error) {


            DEBUG = error;


            console.log('Error: ['+error.message+']');
            console.log('Error: ['+error+']');

        };

    },


    /*
        onopen: null
        onerror: null
        onclose: null
        extensions: ""
        protocol: ""
        onmessage: null
        binaryType: "blob"
    */


};
