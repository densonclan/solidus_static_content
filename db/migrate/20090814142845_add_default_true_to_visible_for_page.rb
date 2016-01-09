class AddDefaultTrueToVisibleForPage < ActiveRecord::Migration
  def self.up
    change_column :solidus_pages, :visible, :boolean, default: true
  end

  def self.down
  end
end
