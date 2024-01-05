class CreateBranches < ActiveRecord::Migration[7.1]
  def change
    create_table :branches do |t|
      t.hstore :name
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
