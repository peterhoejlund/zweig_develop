class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.integer :user_id
      t.text :headline
      t.text :workbody

      t.timestamps
    end
  end
end
