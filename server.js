/*
    JS server for the paint-to-roblox plugin

    runs the py script to extract text from the ms paint window and returns it on an HTTP get request

    @MrTher#4576
*/

const shell = require('python-shell').PythonShell;

const http = require("http");

const host = 'localhost';
const port = 8000;

const requestListener =  function (req, res) {
    res.setHeader("Content-Type", "application/json");
    res.writeHead(200);

    var options = {
        mode: 'text',
        pythonOptions: ['-u'],
    };

    shell.run('recog.py', options, async function (err, results) {
        if (err)
            throw err;
  
            console.log(results[0])

        console.log(results[0]);

        res.end(results[0]);
    });

};

const server = http.createServer(requestListener);

server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});