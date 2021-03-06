class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :author
      t.date :creation_date
      t.string :location
      t.string :topic
      t.text :body
      t.string :attachments
      t.string :post_type
      t.boolean :innapropriate_status
      t.integer :user_id

      t.timestamps
    end
  end
end
