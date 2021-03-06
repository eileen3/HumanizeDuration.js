humanizing = require '..'
require('chai').should()

describe 'German humanization of duration', ->

  beforeEach ->
    humanizing.defaults.language = 'de'

  it 'humanizes 0ms', ->
    humanizing(0).should.equal '0'

  it 'humanizes 1ms, 1s, 1m, 1h, 1d, 1w, 1mo, and 1y', ->
    humanizing(1.millisecond()).should.equal '1 millisekunde'
    humanizing(1.second()).should.equal '1 sekunde'
    humanizing(1.minute()).should.equal '1 minute'
    humanizing(1.hour()).should.equal '1 stunde'
    humanizing(1.day()).should.equal '1 tag'
    humanizing(1.week()).should.equal '1 woche'
    humanizing(1.month()).should.equal '1 monat'
    humanizing(1.year()).should.equal '1 jahr'

  it 'humanizes 2ms, 2s, 2m, 2h, 2d, 2w, 2mo, and 2y', ->
    humanizing(2.milliseconds()).should.equal '2 millisekunden'
    humanizing(2.seconds()).should.equal '2 sekunden'
    humanizing(2.minutes()).should.equal '2 minuten'
    humanizing(2.hours()).should.equal '2 stunden'
    humanizing(2.days()).should.equal '2 tage'
    humanizing(2.weeks()).should.equal '2 wochen'
    humanizing(2.months()).should.equal '2 monate'
    humanizing(2.years()).should.equal '2 jahre'
