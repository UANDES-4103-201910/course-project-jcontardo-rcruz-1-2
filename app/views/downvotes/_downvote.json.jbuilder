json.extract! downvote, :id, :user_id, :post_id, :created_at, :updated_at
json.url downvote_url(downvote, format: :json)
