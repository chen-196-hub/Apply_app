class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :content
      t.string :memo
      t.text :apply_site
      t.text :hp
      t.integer :sequence

      t.timestamps
    end
  end
end
