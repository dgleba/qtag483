class CreateHealthchecks < ActiveRecord::Migration[5.2]
  def change
    create_table :healthchecks do |t|
      t.string :name
      t.string :ip_address
      t.string :username
      t.references :user, foreign_key: true
      t.string :comment
      t.integer :active_status
      t.integer :sort_order

      t.timestamps
    end
  end
end
