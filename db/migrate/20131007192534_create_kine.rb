class CreateKine < ActiveRecord::Migration
  def change
    create_table :kine do |t|
      t.string :name

      t.timestamps
    end
  end
end
