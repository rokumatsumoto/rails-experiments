class ChangeArticleToBeBigIntInComments < ActiveRecord::Migration[5.2]
  def up
    change_column :comments, :article_id, :bigint
  end

  def down
    change_column :customers, :article_id, :integer
  end
end
