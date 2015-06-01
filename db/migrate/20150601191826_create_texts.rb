class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.timestamps null: false
      t.string :body
    end
  end
end
