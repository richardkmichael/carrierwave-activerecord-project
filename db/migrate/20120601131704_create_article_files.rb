class CreateArticleFiles < ActiveRecord::Migration
  def change
    create_table :article_files do |t|
      t.string :file
      t.references :article

      t.timestamps
    end
    add_index :article_files, :article_id
  end
end
