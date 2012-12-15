class CreateScrappings < ActiveRecord::Migration
  def change
    create_table :scrappings do |t|
      t.text :url

      t.timestamps
    end
  end
end
