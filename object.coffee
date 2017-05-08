Object::new = ->
  new @ arguments...

Object::aliasMethod = (alias, method) ->
  @::[alias] = ->
    @[method] arguments...

Object::property = (name, accessors) ->
  Object.defineProperty @::, name, accessors
