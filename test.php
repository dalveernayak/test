
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
  <script type="text/javascript" src="js/mootools-core-1.4.5-nocompat.js"></script>

  

  
    <link rel="stylesheet" type="text/css" href="js/normalize.css">
  

  

  
    <link rel="stylesheet" type="text/css" href="js/result-light.css">
  

  

  <style type="text/css">
    

  </style>

  <title></title>

  
    




<script type='text/javascript'>//<![CDATA[

window.addEvent('load', function() {
        function fullscreen() {
            if (document.body.requestFullScreen) {document.body.requestFullScreen();}
            else if (document.body.webkitRequestFullScreen) {document.body.webkitRequestFullScreen();}
            else if (document.body.mozRequestFullScreen) {document.body.mozRequestFullScreen();}
        }
        
        var bash = document.createElement('span');
        bash.setAttribute('id', 'bash');
        document.body.appendChild(bash);
        
        var cursor = document.createElement('span');
        cursor.setAttribute('id', 'bashCursor');
        cursor.textContent = '_';
        cursor.style.display = 'none';
        cursor.style.fontWeight = 'bold';
        document.body.appendChild(cursor);
        
        window.Bash = {};
        window.Bash.printing = false;
        window.Bash.queue = Array();
        window.Bash.span = bash;
        window.Bash.span.cursor = cursor;
        
        delete bash; delete bash;
        
        
        function bashPrint() {
            window.Bash.writing = true;
            var bash = window.Bash.span
            var i;
            while (window.Bash.queue.length) {
                if (window.Bash.queue[0] == undefined) {
                    i = 0;
                    while (i < window.Bash.queue.length) {
                        window.Bash.queue[i] = window.Bash.queue[i+1];
                        console.log('l:'+window.Bash.queue.length);
                        console.log(window.Bash.queue);
                        delete window.Bash.queue[i+1];
                        window.Bash.queue.splice(i,1);
                        i++;
						
                    }
                    
                } else if (window.Bash.queue[0]['type'] == 'instant') {
                    bash.textContent += window.Bash.queue[0]['value'];
                    delete window.Bash.queue[0];
                    window.Bash.queue.splice(0,1);
                    
                } else if (window.Bash.queue[0]['type'] == 'wait') {
                    setTimeout(bashPrintWaiting, window.Bash.queue[0]['wait']);
                    break;
                    
                } else if (window.Bash.queue[0]['type'] == 'cursor') {
                    if (window.Bash.queue[0]['value']) {
                        window.Bash.span.cursor.style.display = 'inline';
                    } else {
                        window.Bash.span.cursor.style.display = 'none';
                    }
                }
            }
            window.Bash.writing = false;
        }
        
        function bashPrintWaiting() {
            window.Bash.writing = true;
            var bash = window.Bash.span;
            bash.textContent += window.Bash.queue[0]['value'];
            delete window.Bash.queue[0];
            window.Bash.queue.splice(0,1);
            window.Bash.writing = false;
            setTimeout(bashPrint, 0);
        }
        
        function bashWrite(string) {
            var array = Array();
            array['type'] = 'instant';
            array['value'] = string;
            window.Bash.queue[window.Bash.queue.length] = array
        }
        
        function bashPause(times, string) {
            if (!string) {string='';}
            while (times > 0) {
                var array = Array();
                array['type'] = 'wait';
                array['value'] = string;
                array['wait'] = 50 + Math.floor(Math.random()*450);
                window.Bash.queue[window.Bash.queue.length] = array;
                times--;
            }
        }
        
        function bashCursor(enabled) {
            var array = Array();
            array['type'] = 'cursor';
            array['value'] = enabled;
            window.Bash.queue[window.Bash.queue.length] = array;
        }
         
        bashWrite('Your data hacking');
        bashPause(12, '.');
        bashWrite('OK\n');
        
        bashPause(3);
        bashWrite('This is a virus your whole system data copy will complete 5 minutes, Please call us  \n');
        
        bashPause(2);
        bashWrite('Connecting');
        bashPause(1, '.');
        bashWrite('data hacking completed .\n');
        
        bashPause(2);
        bashWrite('none@m ~ $ >>');
        bashCursor(true);
        
        bashPrint();
		  
});//]]> 

</script>

  
</head>

<body>
  <!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8" />
    <title>The Bash</title>
    <meta name="author" content="m93a.cz@gmail.com" />
    <style id="bash-style">
        body {
			text-align:center;
            background-color: #000;
            font-family: 'courier new';
            color: #fff;
        }
        #bash {
            white-space: pre;
        }
    </style>
</head>
<body></body>
</html>
  
  <script>
  // tell the embed parent frame the height of the content
  if (window.parent && window.parent.parent){
    window.parent.parent.postMessage(["resultsFrame", {
      height: document.body.getBoundingClientRect().height,
      slug: "uQcCP"
    }], "*")
  }
</script>

</body>

</html>
