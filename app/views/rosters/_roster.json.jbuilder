json.extract! roster, :id, :user_id, :section_id, :status, :created_at, :updated_at
json.url roster_url(roster, format: :json)
