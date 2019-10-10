class CreateVisitTable < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :museum_id
      t.integer :guest_id
    end
  end
end
