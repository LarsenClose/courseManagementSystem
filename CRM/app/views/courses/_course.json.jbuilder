json.extract! course, :id, :number, :hours, :department, :sections, :created_at, :updated_at
json.url course_url(course, format: :json)
