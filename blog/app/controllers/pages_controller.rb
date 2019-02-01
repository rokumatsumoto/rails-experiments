# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @articles = Article.joins(:user).left_outer_joins(:comments)
                       .select('articles.*, users.email as user_email, comments.count as comment_count')
                       .group('articles.id, users.email').order('articles.created_at desc')

    @comments = Comment.limit(20).order('comments.created_at desc')
  end
end
