class DeleteComp < ActiveRecord::Migration[6.1]
  def change
    drop_table 'competitions'
  end
end
