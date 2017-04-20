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


### first
Returns the first character in the string.

    String::first = ->
      @[0]

### last
Returns the last character in the string.

    String::last = ->
      @[@length - 1]

## Days
This class provides a simple way to get relative dates. For example, `10.days.ago` returns the date 10 days ago and `5.days.fromNow` returns a the date 5 days from now.

    class Days
      constructor: (value) ->
        @valueOf = value

      inspect: ->
        "#{@valueOf} days"

### ago
Subtracts the value of Days from todays date.

    Object.defineProperty Days::, "ago",
      get: ->
        date = new Date()
        date.setDate date.getDate() - @valueOf
        return date

### fromNow
Adds the value of Days to todays date.

    Object.defineProperty Days::, "fromNow",
      get: ->
        date = new Date()
        date.setDate date.getDate() + @valueOf
        return date

## Number

### times
Executes the function a given number of times.

    Number::times = (fn) ->
      if @valueOf
        i = 0
        for [1..@valueOf()]
          fn(i)
          i++

### days
Returns a `Days` object for the given number of days.

    Object.defineProperty Number::, "days",
      get: ->
        new Days(@valueOf())
