bot = require 'mock-hubot'
describe 'testing', ->
    beforeEach (done) ->
        bot.start ->
            bot.learn require './script.coffee'
            done()
    it 'passes', ->
        expect(true).toBe(true)
    it 'provides callback-based way of testing', (done) ->
      bot.test 'hello', (envelope, strings) ->
        expect(strings[0]).toBe('hello back')
        done()
    afterEach (done) ->
      bot.shutdown done
