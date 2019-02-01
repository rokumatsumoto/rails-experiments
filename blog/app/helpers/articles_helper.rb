# frozen_string_literal: true

module ArticlesHelper
  def author(article)
    article.user.email.split('@')[0]
  end
end
