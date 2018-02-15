class CreateResearches < ActiveRecord::Migration[5.1]
  def change
    create_table :researches do |t|
      t.string :movie

      t.timestamps
    end
  end
end
