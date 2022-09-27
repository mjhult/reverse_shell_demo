const express = require('express');
const { execSync } = require("child_process");

const app = express();

app.use(express.static(__dirname + '/public'));
app.use(express.urlencoded({ extended: true }));

app.get('/', (_, res) => {
    res.sendFile('index.html');
});

app.post('/ping', (req, res) => {
    res.send(`<pre>${execSync(`ping -c 2 ${req.body.ip}`).toString('utf-8')}</pre>`);
});

app.listen(3000, () => console.log('Listening on port 3000'));