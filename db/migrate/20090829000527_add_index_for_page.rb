class AddIndexForPage < ActiveRecord::Migration
  def self.up
    add_index(:solidus_pages, :slug)
  end

  def self.down
    remove_index(:solidus_pages, :slug)
  end
end
