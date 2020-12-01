json.extract! review, :id, :user_id, :presentation_id, :score, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
