path = require "path"

module.exports =
  entry:
    1: "./1/runner.coffee"
    2: "./2/runner.coffee"
    3: "./3/runner.coffee"
    4: "./4/runner.coffee"
  output:
    filename: "[name]/example.js"
  resolve:
    root: [
      path.join(__dirname)
    ]
  module:
    loaders: [
      {
        test: /\.css$/
        loader: "style!css"
      }
      {
        test: /\.styl$/
        loader: "style-loader!css-loader!stylus-loader"
      }
      {
        test: /\.coffee$/
        loader: "coffee"
      }
      {
          test: /\.woff($|\?)|\.woff2($|\?)|\.ttf($|\?)|\.eot($|\?)|\.svg($|\?)/,
          loader: "url-loader"
      }
    ]
