# Permits multiple files per article.
class ArticleFile < ActiveRecord::Base

  attr_accessible :file

  belongs_to :article

  mount_uploader :file, ArticleFileUploader

end
