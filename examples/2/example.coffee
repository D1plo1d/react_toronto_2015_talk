React         = require "react/addons"
Frig          = require "frig"
{div, h2, h4} = React.DOM

module.exports = AdvancedDoomForm = React.createClass
  mixins: [
    Frig.Mixin
    React.addons.LinkedStateMixin
  ]

  getInitialState: ->
    bureaucracy: {}

  render: ->
    #          Fig. 2.1: React linkState
    #               \/
    @frig data: @linkState("bureaucracy"), (f) =>
      div className: "container",
        div className: "row",
          h2 {}, "My First Bureaucratic Form"
          #          Fig. 2.2: Responsive sizing
          #               \/
          f.input "firstName", md: 6
          f.input "lastName",  md: 6
          f.input("sin",
            title: "Social Insurance Number"
            placeholder: "SIN"
            lg: 4
          )
          f.input "driversLicenseNumber", lg: 4

          #          Fig. 2.3: A numeric field with a min
          #               \/
          f.input("bureaucracyLevel",
            type: "integer"
            min: 2
            lg: 4
          )

          h2 {}, "Witnesses"
          #          Fig. 2.4: Conditional fields
          #               \/
          if @state.bureaucracy.bureaucracyLevel > 0
            [1..@state.bureaucracy.bureaucracyLevel].map (i) ->
              [
                h4 {}, "Witness ##{i}"
                f.input "witness#{i}FirstName"
                f.input "witness#{i}LastName"
              ]
          else
            div className: "lead",
              "Please Select a bureaucracy level"

