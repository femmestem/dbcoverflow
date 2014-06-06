class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |u|
      u.integer :score
      u.belongs_to :votable, polymorphic: true
      u.belongs_to :user
      u.timestamps
    end
  end
end
