class BackboneBlog.Views.PostsShow extends Backbone.View

  template: JST["posts/show"]

  el: '#posts'

  initialize: ->
    @render()

  render: ->
    @$el.html(@template(@model))
    @