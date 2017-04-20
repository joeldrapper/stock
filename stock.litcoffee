## Array

### first
Returns the first element of the array.

    Array::first = ->
      @[0]

### last
Returns the last element of the array.

    Array::last = ->
      @[@length - 1]

## String


## first
Returns the first character in the string.

    String::first = ->
      @[0]

## last
Returns the last character in the string.

    String::last = ->
      @[@length - 1]

## Days

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

## Number

    Number::times = (fn) ->
      if @valueOf
        i = 0
        for [1..@valueOf()]
          fn(i)
          i++

    Object.defineProperty Number::, "days",
      get: ->
        new Days(@valueOf())
