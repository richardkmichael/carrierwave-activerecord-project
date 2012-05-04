class Article < ActiveRecord::Base
  attr_accessible :file, :title

  mount_uploader :file, ArticleFileUploader
end
