class CreateCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.belongs_to :user, index: true, foreign_key:true
      
      t.timestamps
    end
  end
end
