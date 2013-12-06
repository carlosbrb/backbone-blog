class BackboneBlog.Routers.Posts extends Backbone.Router
  
  initialize: (options) ->
    @posts = new BackboneBlog.Collections.Posts()
    #@posts.reset options.posts

  routes:
    ""            : "index"
    "index"       : "index"
    "new"         : "newPost"
    ":id"         : "show"
    ":id/edit"    : "edit"
    ".*"          : "index"

  index: ->
    @view = new BackboneBlog.Views.PostsIndex({collection: @posts})

  newPost: ->
    @view = new BackboneBlog.Views.PostsNew({collection: @posts})

  show: (id) ->
    post = @posts.get(id)
    @view = new BackboneBlog.Views.PostsShow({model: post})

  edit: (id) ->
    post = @posts.get(id)
    @view = new BackboneBlog.Views.PostsEdit({model: post})