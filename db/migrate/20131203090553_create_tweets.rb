class CreateTweets < ActiveRecord::Migration
 def self.up
    create_table :tweets do |t|
      t.string :content
      t.string :url
      t.datetime :created
    end
  end
  #######obselete#########

  def self.down
    drop_table :tweets
  end
end
