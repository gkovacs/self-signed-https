require! 'https'
require! 'path'
require! 'fs'

module.exports = (app) ->
  # to generate self-signed certificate:
  # http://www.akadia.com/services/ssh_test_certificate.html
  #
  # openssl genrsa -des3 -out server.key 1024
  # openssl req -new -key server.key -out server.csr
  # cp server.key server.key.org
  # openssl rsa -in server.key.org -out server.key
  # openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
  dirname = path.dirname(fs.realpathSync(__filename))
  key = fs.readFileSync(path.join(dirname, 'server.key'))
  cert = fs.readFileSync(path.join(dirname, 'server.crt'))
  return https.createServer({
    key: key
    cert: cert
    requestCert: false
    rejectUnauthorized: false
  }, app)
