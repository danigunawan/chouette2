class CreateApiKey < ActiveRecord::Migration
  def up
    create_table :api_keys do |a|
      a.belongs_to :referential
      a.string :token
      a.string :name
      a.timestamps
    end
  end

  def down
    drop_table :api_keys
  end
end
