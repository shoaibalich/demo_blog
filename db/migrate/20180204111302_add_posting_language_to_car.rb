class AddPostingLanguageToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :posting_language, :string
  end
end
