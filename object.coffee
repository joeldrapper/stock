Object::new = ->
  new @ arguments...

Object::aliasMethod = (alias, method) ->
  @::[alias] = ->
    @[method] arguments...

Object::extend = (obj) ->
  for key, value of obj when key not in ['extended', 'included']
    @[key] = value

  obj.extended?.apply(@)
  this

Object::include = (obj) ->
  for key, value of obj when key not in ['extended', 'included']
    @::[key] = value

  obj.included?.apply(@)
  this
