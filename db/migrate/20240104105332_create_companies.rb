class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.hstore :name
      t.integer :branches_number

      t.timestamps
    end
  end
end
