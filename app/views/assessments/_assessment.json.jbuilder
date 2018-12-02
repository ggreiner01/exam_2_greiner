json.extract! assessment, :id, :grade, :faculty_id, :program_id, :created_at, :updated_at
json.url assessment_url(assessment, format: :json)
