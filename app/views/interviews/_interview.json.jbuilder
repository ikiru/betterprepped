json.extract! interview, :id, :interview_number, :position_id, :interview_type_id, :interview_question_id, :interview_comments, :created_at, :updated_at
json.url interview_url(interview, format: :json)
