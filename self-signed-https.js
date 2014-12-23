// Generated by LiveScript 1.3.1
(function(){
  var https, path, fs;
  https = require('https');
  path = require('path');
  fs = require('fs');
  module.exports = function(app){
    var dirname, key, cert;
    dirname = path.dirname(fs.realpathSync(__filename));
    key = fs.readFileSync(path.join(dirname, 'server.key'));
    cert = fs.readFileSync(path.join(dirname, 'server.crt'));
    return https.createServer({
      key: key,
      cert: cert,
      requestCert: false,
      rejectUnauthorized: false
    }, app);
  };
}).call(this);
