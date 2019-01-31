module ArticlesHelper
  def author(article)
    article.user.email.split('@')[0]
  end
end
