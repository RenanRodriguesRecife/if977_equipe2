class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :description
      t.datetime :data
      t.references :complaint
      t.references :person

      t.timestamps
    end
  end
end
