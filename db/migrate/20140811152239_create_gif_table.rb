class CreateGifTable < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :title
      t.string :url
    end
  end
end
