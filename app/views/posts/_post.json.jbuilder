json.extract! post, :id, :demande_id, :content, :pic, :rec, :info, :user_id, :created_at, :updated_at, :language_id
json.url post_url(post, format: :json)
