class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :note
      t.references :article, foreign_key: true
      t.string :username

      t.timestamps
    end
  end
end
