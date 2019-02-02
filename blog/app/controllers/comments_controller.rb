# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :destroy
  before_action :set_comment, only: %i[create destroy]

  def new; end

  def create
    @comment = @article.comments.build(comment_params)
    @comment.user = current_user
    @comment.commenter = current_user_name

    @comment.save
    redirect_to article_path(@article)
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

  def set_comment
    @article = Article.find(params[:article_id])
  end
end
