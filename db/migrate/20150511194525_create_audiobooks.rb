class CreateAudiobooks < ActiveRecord::Migration
  def change
    create_table :audiobooks do |t|
    	t.belongs_to :narrator
    	t.string :title
    	t.string :author
    	t.string :category
		t.timestamps null: false
    end
  end
end
