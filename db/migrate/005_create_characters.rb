class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :actor
      t.references :show
      t.string :name
    end
  end
end
