class Days
  constructor: (value) ->
    @valueOf = value

  inspect: ->
    "#{@valueOf} days"

Object.defineProperty Days::, "ago",
  get: ->
    date = new Date()
    date.setDate date.getDate() - @valueOf
    return date

Object.defineProperty Days::, "fromNow",
  get: ->
    date = new Date()
    date.setDate date.getDate() + @valueOf
    return date
