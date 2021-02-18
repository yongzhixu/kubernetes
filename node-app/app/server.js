const express = require('express');
const pino = require('pino');

const app = express();

const logger = pino({
    level: 'info',
    timestamp: () => `,"time":"${new Date().toISOString()}"`
});

logger.info('hello elastic world');
logger.info('This is some great stuff');
logger.info('Some more entries for our logging');
logger.info('another line');
logger.info('This never stops');
logger.info('Logging logging all the way');
logger.info('I think this is enough');
logger.info('nope, one more!');
logger.info('version 3');
app.get('/', function (req, res) {
    logger.info('home page');
    res.send('Hello World!');
});


var server = app.listen(3001, function () {
    let host = server.address().address;
    let port = server.address().port;
    logger.info('Example app listening at http://%s:%s', host, port);
});
