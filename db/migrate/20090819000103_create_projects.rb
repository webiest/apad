class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.boolean :complete
      t.datetime :completed_date

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
