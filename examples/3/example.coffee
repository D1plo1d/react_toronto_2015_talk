React         = require "react/addons"
Frig          = require "frig"
{div, h2}     = React.DOM

module.exports = AdvancedDoomForm = React.createClass
  mixins: [
    Frig.Mixin
    React.addons.LinkedStateMixin
  ]

  getInitialState: ->
    account: {}

  render: ->
    div className: "container",
      div className: "row",
        @frig data: @linkState("account"), (f) =>
          [
            div className: "col-sm-12",
              h2 {}, "Login"

              f.input "email"
              f.input "password", type: "password"

              f.input "twoFactorAuthentication", type: "boolean"

              if @state.account.twoFactorAuthentication
                f.input "PrivateKey", type: "text"
                #               /\
                #             Fig. 3.1: A text field

              f.input "threeFactorAuthentication", type: "boolean"

              if @state.account.threeFactorAuthentication
                f.input "eyeColor", options: [
                  "blue", "green", "red", "left"
                ]
                #               /\
                #             Fig. 3.2: Automatic type-inference

              f.submit "Log in"

          ]
