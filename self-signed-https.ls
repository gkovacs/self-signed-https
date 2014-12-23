require! 'https'
require! 'path'
require! 'fs'

module.exports = (app) ->
  dirname = path.dirname(fs.realpathSync(__filename))
  key = fs.readFileSync(path.join(dirname, 'server.key'))
  cert = fs.readFileSync(path.join(dirname, 'server.crt'))
  return https.createServer({
    key: key
    cert: cert
    requestCert: false
    rejectUnauthorized: false
  }, app)
