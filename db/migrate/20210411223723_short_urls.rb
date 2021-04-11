class ShortUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :short_urls do |t|
      t.string :url
      t.string :code
      
      t.timestamps
    end
  end
end
