json.extract! course, :id, :number, :hours, :created_at, :updated_at
json.url course_url(course, format: :json)
