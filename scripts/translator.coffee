# Description:
#   @TODO

translator = require('yandex-translate-api')(process.env.HUBOT_YANDEX_API_KEY)

module.exports = (robot) ->
  robot.hear /(.* )?/i, (res) ->
    msg       = res.message
    textMsg   = msg.text.replace(/\:[a-zA-Z\_]+\:/g, '')
    translator.detect textMsg, (err, detect) ->
      if detect.lang == 'fr'
        translator.translate textMsg, {to: 'en', from: res.lang}, (err, trans) ->
          res.send '@'+msg.user.id+": "+trans.text
