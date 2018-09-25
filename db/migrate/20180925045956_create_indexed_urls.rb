class CreateIndexedUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :indexed_urls do |t|
      t.string 'url', null: false, index: true, unique: true
      t.jsonb 'headers'
      t.jsonb 'links'

      t.timestamps
    end
  end
end
