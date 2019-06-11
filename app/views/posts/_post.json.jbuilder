json.extract! post, :id, :title, :description, :author, :creation_date, :location, :topic, :body, :attachments, :post_type, :innapropriate_status, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
