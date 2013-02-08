class CreateArticleFiles < ActiveRecord::Migration
  def change
    create_table :article_files do |t|
      t.string     :file
      t.references :article

      t.timestamps
    end
  end
end
