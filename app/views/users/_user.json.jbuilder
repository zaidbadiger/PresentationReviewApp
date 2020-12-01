json.extract! user, :id, :name, :course_code, :created_at, :updated_at
json.url user_url(user, format: :json)
