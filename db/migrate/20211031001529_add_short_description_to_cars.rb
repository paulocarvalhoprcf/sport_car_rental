class AddShortDescriptionToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :short_description, :text
  end
end
