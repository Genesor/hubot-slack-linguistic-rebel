# Description:
#   @TODO

module.exports = (robot) ->
  robot.hear /(.* )?/i, (res) ->
    console.log res.message.text
    res.send 'I don\'t know what to say'

