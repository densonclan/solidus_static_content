class AddRenderAsPartialForLayoutForSpreePages < ActiveRecord::Migration
  def up
    unless column_exists? :solidus_pages, :render_layout_as_partial
      add_column :solidus_pages, :render_layout_as_partial, :boolean, default: false
    end
  end

  def down
    if column_exists? :solidus_pages, :render_layout_as_partial
      remove_column :solidus_pages, :render_layout_as_partial
    end
  end
end
