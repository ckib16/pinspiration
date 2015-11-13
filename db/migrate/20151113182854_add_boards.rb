class AddBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
    t.string :title
    t.references :user, index: true, foreign_key: true
    end
  end
end
