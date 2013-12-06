window.BackboneBlog =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new BackboneBlog.Routers.Posts()
    Backbone.history.start(pushState: true)

$(document).ready ->
  BackboneBlog.initialize()
