class AddPositionToSubnote < ActiveRecord::Migration
  def change
    add_column :subnotes, :position, :integer
  end
end
