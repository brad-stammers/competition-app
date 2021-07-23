class CreateCompetitions < ActiveRecord::Migration[6.1]
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :location
      t.string :sport
      t.date :start
      t.date :finish

      t.timestamps
    end
  end
end
