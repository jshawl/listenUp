class CreateNarrators < ActiveRecord::Migration
  def change
    create_table :narrators do |t|
    	t.string :name
    	t.string :gender
    	t.string :accent
    	t.string :voices
    	t.timestamps null: false
    end
  end
end
