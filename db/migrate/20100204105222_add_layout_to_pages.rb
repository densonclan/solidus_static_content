class AddLayoutToPages < ActiveRecord::Migration
  def self.up
    add_column :solidus_pages, :layout, :string
  end

  def self.down
    remove_column :solidus_pages, :layout
  end
end
