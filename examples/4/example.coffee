React          = require "react/addons"
Frig           = require "frig"
md5            = require "MD5"
{div, h2, img} = React.DOM

module.exports = AdvancedDoomForm = React.createClass
  mixins: [
    Frig.Mixin
    React.addons.LinkedStateMixin
  ]

  getInitialState: ->
    account: {}
    saved: false
    avatar: "http://www.gravatar.com/avatar/"


  _onChange: ->
    @setState saved: false

  _onValidChange: ->
    console.log "valid"

  _onSubmit: ->
    url = "http://www.gravatar.com/avatar/#{md5 @state.account.email}"
    @setState
      avatar: url
      saved: true

  render: ->
    opts =
      data: @linkState("account"),
      onValidChange: @_onValidChange
      onChange: @_onChange
      onSubmit: @_onSubmit
    #               /\
    #             Fig. 4.1: Frig has events!

    div className: "container",
      div className: "row",
        div className: "col-sm-12",
          if @state.saved
            div className: "alert alert-success", "Saved"

          h2 {}, "Account Settings"

      @frig opts, (f) =>
        [
          div className: "row",
            div className: "col-sm-2",
              img src: @state.avatar if @state.avatar
            f.input "email", xs: 10
          div className: "row",
            f.submit "Save", className: "pull-right btn btn-primary"
        ]
