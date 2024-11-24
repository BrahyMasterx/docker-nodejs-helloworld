const { exec } = require("child_process");

exec(`./xweb -c /app/conf.json`, (error, stdout, stderr) => {
    if (error) {
        console.log(`error: ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`stderr: ${stderr}`);
        return;
    }
    console.log(`Output: ${stdout}`);
});

exec(`./cftn tunnel --edge-ip-version auto --protocol auto --loglevel fatal run --token `, (error, stdout, stderr) => {
    if (error) {
        console.log(`error: ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`stderr: ${stderr}`);
        //return;
    }
    console.log(`Output: ${stdout}`);
});
