class CreateGAnalytics < ActiveRecord::Migration[5.1]
  def change
    create_table :g_analytics do |t|
      t.string :bounces
      t.date :date
      t.string :category
      t.string :landingpath
      t.string :medium
      t.float :sessionduration
      t.integer :sessions
      t.integer :transactions
      t.integer :visits

      t.timestamps
    end
  end
end
