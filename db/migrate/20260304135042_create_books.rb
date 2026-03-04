class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :email
      t.string :status
      t.timestamps
    end
  end
end
