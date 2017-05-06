Set::union = (b) ->
  new Set [@valueOf()..., b...]

Set::intersection = (b) ->
  new Set [@valueOf()...].filter (x) ->
    b.has x

Set::difference = (b) ->
  new Set [@valueOf()...].filter (x) ->
    not b.has x
