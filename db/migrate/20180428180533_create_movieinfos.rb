class CreateMovieinfos < ActiveRecord::Migration
  def change
    create_table :movieinfos do |t|
      t.string :title
      t.string :director
      t.string :actor
      t.string :team
      t.date :date
      t.string :youtubelink
      t.string :image
      t.text :content
      t.timestamps null: false
    end
  end
end
