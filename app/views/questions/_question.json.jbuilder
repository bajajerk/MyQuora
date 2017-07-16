json.extract! question, :id, :question, :User_id, :content, :anonymous, :created_at, :updated_at
json.url question_url(question, format: :json)
