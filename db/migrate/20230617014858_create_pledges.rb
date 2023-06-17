class CreatePledges < ActiveRecord::Migration[7.0]
  def change
    create_table :pledges do |t|
      t.float :amount
      t.belongs_to :user, index: true, foreign_key:true
      t.belongs_to :campaign, index: true, foreign_key:true

      t.timestamps
    end
  end
end
