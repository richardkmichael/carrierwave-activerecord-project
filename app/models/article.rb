class Article < ActiveRecord::Base
  attr_accessible :title, :article_files_attributes

  has_many                      :article_files, dependent:     :destroy
  accepts_nested_attributes_for :article_files, allow_destroy: true
end
