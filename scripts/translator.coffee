# Description:
#   @TODO

LanguageDetect = require 'languagedetect'
lngDetector = new LanguageDetect()

module.exports = (robot) ->
  robot.hear /(.* )?/i, (res) ->
    console.log res.message.text
    language = lngDetector.detect(res.message.text, 3).shift()
    console.log language
    res.send 'I don\'t know what to say'

