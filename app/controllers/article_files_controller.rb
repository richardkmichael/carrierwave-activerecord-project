class ArticleFilesController < ApplicationController

  def file
    article_file = ArticleFile.find(params[:id])

    send_data(article.file.read, :filename => article.file.file.filename)
  end

end
