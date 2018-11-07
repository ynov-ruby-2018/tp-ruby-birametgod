class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.text :contenu

      t.timestamps
    end
  end
end
