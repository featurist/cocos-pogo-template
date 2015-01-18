module.exports (file) = "res/#(file)"

module.exports.all = [
  entry <- require('../res/resources.json')
  module.exports (entry)
]
