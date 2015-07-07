










                           Frig - React forms made easy.*
                                                       / \
                                                        |
                                    Rob Gilson           --------
                                                                 |
                          TouchBistro Lead Rails Developer       |
                             & Generally Nice Person             |
                                                                 |
                                                                 |
    -------------------------------------------------------------
   |
   |
   |
   |
   |
   |
   |
   |
   |
   |
   |
    ---------------- *(In Coffeescript)



























Coffeescript!?!


` (╯°□°）╯︵ ┻━┻ `
















` ┬──┬﻿ ¯\_(ツ) `
















```coffeescript
{div, h2} = React.DOM

CsExample = React.createClass
  render: ->
    div className: "container",
      div className: "row",
        div className: "sm-col-12",
          h2 {}, "This is an H2"
          div className: "lead",  "Lead text is important for reasons"
```

vs.

```jsx
JsExample = React.createClass({
  render: function() {
    <div className="container">
      <div className="row">
        <div className="sm-col-12">
          <h2>This is an H2</h2>
          <div className="lead">
            Lead text is important for reasons
          </div>
        </div>
      </div>
    </div>
   }
})
```






















Ideally forms should:

- be simple to write
- be able to be layed out in any way I want
- feel native in React
- validate themselves
- be responsive
- have all the field types I need
- integrate with Bootstrap
- trigger events



























Frig is:

All of those things.












