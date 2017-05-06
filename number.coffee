Number::times = (fn) ->
  if @valueOf
    i = 0
    for [1..@valueOf()]
      fn(i)
      i++

Object.defineProperty Number::, "days",
  get: ->
    new Days(@valueOf())
