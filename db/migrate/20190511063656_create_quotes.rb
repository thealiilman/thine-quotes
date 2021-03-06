class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :content
      t.references :originator, foreign_key: true

      t.timestamps
    end
  end
end
