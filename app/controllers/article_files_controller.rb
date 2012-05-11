class ArticleFilesController < ApplicationController

  # WARNING: Exposes all your files, without any security checks.
  def show
    article = Article.find(params[:id])
    send_data(article.file.read)
  end

end
