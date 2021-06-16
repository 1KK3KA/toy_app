class CreateMicrosofts < ActiveRecord::Migration[6.1]
  def change
    create_table :microsofts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
