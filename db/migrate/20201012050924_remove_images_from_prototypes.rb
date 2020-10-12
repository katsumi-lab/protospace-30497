class RemoveImagesFromPrototypes < ActiveRecord::Migration[6.0]
  def change
    remove_column :prototypes, :images, :text
  end
end
