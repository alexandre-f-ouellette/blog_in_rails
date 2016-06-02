json.array!(@posts) do |post|
  json.extract! post, :id, :author_id, :title, :body, :published_date, :image_url
  json.url post_url(post, format: :json)
end
