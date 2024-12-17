class AddAgeAndLocationToProfiles < ActiveRecord::Migration[8.0]
  def change
    add_column :profiles, :age, :integer
    add_column :profiles, :location, :string
  end
end
