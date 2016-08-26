class AddDefaultsToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :happiness
    remove_column :users, :nausea
    remove_column :users, :height
    remove_column :users, :tickets
    add_column :users, :nausea, :integer, :default => 5
    add_column :users, :happiness, :integer, :default => 5
    add_column :users, :height, :integer, :default => 65
    add_column :users, :tickets, :integer, :default => 5
  end
end
