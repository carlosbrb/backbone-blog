class BackboneBlog.Views.PostsIndex extends Backbone.View

  el: '#posts'
  template: JST['posts/index']

  initialize: ->
    @render()
    @addAll()

  addAll: ->
      @collection.forEach(@addOne, @)

  addOne: (model) ->
      @view = new Blog.Views.PostView({model: model})
      @$el.find('tbody').append @view.render().el

  render: ->
      @$el.html @template()
      @
