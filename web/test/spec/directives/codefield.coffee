'use strict'

describe 'Directive: codefield', ->

  # load the directive's module
  beforeEach module 'searchApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<codefield></codefield>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the codefield directive'
