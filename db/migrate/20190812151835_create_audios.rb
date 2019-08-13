class CreateAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :audios do |t|
      t.text :title
      t.text :artist
      t.text :url

      t.timestamps
    end
  end
end
