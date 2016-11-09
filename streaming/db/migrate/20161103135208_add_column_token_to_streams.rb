class AddColumnTokenToStreams < ActiveRecord::Migration[5.0]
  def change
    add_column :streams, :token, :text
  end
end
