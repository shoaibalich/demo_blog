class AddPostingTitleToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :posting_title, :string
  end
end
