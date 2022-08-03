class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :word
      t.string :meaning

      t.timestamps
    end
  end
end
