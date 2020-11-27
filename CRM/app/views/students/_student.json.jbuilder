json.extract! student, :id, :name, :number, :sections, :created_at, :updated_at
json.url student_url(student, format: :json)
