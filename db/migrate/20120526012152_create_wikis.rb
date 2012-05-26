class CreateWikis < ActiveRecord::Migration
  def self.up
    create_table :wikis do |t|
      t.string :title, :default => "untitled", :null => false
      t.string :notes, :default => "", :null => false
      t.string :author, :default => "anonymous", :null => false
      t.boolean :current, :default => true, :null => false
      t.text :body, :default => "", :null => false
      t.integer :revision, :default => 0, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :wikis
  end
end
