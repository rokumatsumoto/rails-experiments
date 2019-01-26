class PagesController < ApplicationController
  def index
    @articles = Article.joins(:user).left_outer_joins(:comments)
                       .select('articles.*, users.email as user_email, comments.count as comment_count')
                       .group('articles.id, users.email').order('articles.created_at desc')

    # @comments = Comment.joins(:article)
    #                     .select('comment.')
  end
end
