class CommentsController < ApplicationController
  include CommentsHelper

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    flash.notice = "Your comment is posted!"
    redirect_to article_path(@comment.article)
  end
end