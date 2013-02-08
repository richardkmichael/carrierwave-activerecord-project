class ArticleFile < ActiveRecord::Base
  belongs_to :article

  attr_accessible :file

  mount_uploader  :file, ArticleFileUploader
end
