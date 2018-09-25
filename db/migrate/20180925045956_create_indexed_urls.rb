class CreateIndexedUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :indexed_urls do |t|
      t.string 'url', null: false
      t.jsonb 'headers'
      t.jsonb 'links'

      t.timestamps
    end

    add_index :indexed_urls, [:url], unique: true
  end
end
