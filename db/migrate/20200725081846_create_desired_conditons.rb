class CreateDesiredConditons < ActiveRecord::Migration[6.0]
  def change
    create_table :desired_conditons do |t|
      t.integer      :money
      t.string       :location
      t.references   :user
      t.timestamps
    end
  end
end
