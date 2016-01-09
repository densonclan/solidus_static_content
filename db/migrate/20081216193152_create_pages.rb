class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :solidus_pages do |t|
      t.string :title
      t.text :body
      t.string :slug

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :solidus_pages
  end
end
