class CreateDranks < ActiveRecord::Migration
  def change
    create_table :dranks do |t|
      t.string :name
      t.string :size

      t.timestamps null: false
    end
  end
end
