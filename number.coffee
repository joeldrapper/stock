Number::times = (fn) ->
  if @valueOf
    i = 0
    for [1..@valueOf()]
      fn(i)
      i++

Number::floor = ->
  Math.floor @valueOf()

Number::round = ->
  Math.round @valueOf()

Number::ceil = ->
  Math.ceil @valueOf()

Object.defineProperty Number::, "days",
  get: ->
    new Days(@valueOf())
