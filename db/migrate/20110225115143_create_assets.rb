class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :title
      t.number :purchaseN
      t.number :requisition
      t.number :orderD
      t.text :location
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
