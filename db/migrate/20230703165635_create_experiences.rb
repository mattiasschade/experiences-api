class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :note
      t.string :date
      t.string :address

      t.timestamps
    end
  end
end
