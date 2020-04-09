class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :comment
      t.boolean :purchased
      t.integer :status
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
