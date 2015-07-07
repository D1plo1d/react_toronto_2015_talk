require "../node_modules/bootstrap/dist/css/bootstrap.css"
Example       = require "./example.coffee"
React         = require "react/addons"

document.addEventListener "DOMContentLoaded", ->
  reactElement = React.createElement Example
  domElement = document.getElementById('example')
  React.render reactElement, domElement
