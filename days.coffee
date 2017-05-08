class Days
  constructor: (value) ->
    @valueOf = value

  inspect: ->
    "#{@valueOf} days"

  @property "ago",
    get: ->
      date = new Date()
      date.setDate date.getDate() - @valueOf
      return date

  @property "fromNow",
    get: ->
      date = new Date()
      date.setDate date.getDate() + @valueOf
      return date
