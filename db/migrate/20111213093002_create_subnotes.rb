class CreateSubnotes < ActiveRecord::Migration
  def change
    create_table :subnotes do |t|
      t.string :img_url
      t.text :content
      t.integer :note_id

      t.timestamps
    end
  end
end
