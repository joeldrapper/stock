Object::new = ->
  new @ arguments...

Object::aliasMethod = (alias, method) ->
  @::[alias] = ->
    @[method] arguments...

Object::property = (name, accessors) ->
  Object.defineProperty @::, name, accessors

Object::include = (obj) ->
  for method in Object.getOwnPropertyNames(obj)
    unless method in Object.getOwnPropertyNames(@)
      unless method is "included"
        @[method] = obj[method]

  for method in Object.getOwnPropertyNames(obj::)
    unless method in Object.getOwnPropertyNames(@::)
      @::[method] = obj::[method]

  obj.included @ if obj.included?
