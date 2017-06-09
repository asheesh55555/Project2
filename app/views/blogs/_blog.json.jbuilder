json.extract! blog, :id, :name, :desc, :created_by, :created_at, :updated_at
json.url blog_url(blog, format: :json)
