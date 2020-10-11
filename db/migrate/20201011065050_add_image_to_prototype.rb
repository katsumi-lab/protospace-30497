class AddImageToPrototype < ActiveRecord::Migration[6.0]
  def change
    add_column :prototypes, :images, :text
  end
end
