class PostsController < ApplicationController
  def create
    new_post = Post.create(content: params[:content])
    render json: {book: new_post}
  end
  def getPosts
    posts = Post.all
    render json: {posts: posts}
end
