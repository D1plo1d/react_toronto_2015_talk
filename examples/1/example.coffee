React         = require "react/addons"
Frig          = require "frig"
{h2}          = React.DOM

module.exports = LoginForm = React.createClass
  mixins: [
    Frig.Mixin
  ]

  render: ->
    #     Fig. 1.1: Data to prepopulate the form with
    #        \/
    data = {email: "d1plo1d@d1plo1d", rememberMe: false}

    #     Fig. 1.2: The form
    #        \/
    @frig data: data, (f) =>
      [
        h2 {}, "Login"
        f.input "email"
        f.input "password",  type: "password"
        f.input "remeberMe", type: "boolean"
        f.submit "Log in"
      ]

