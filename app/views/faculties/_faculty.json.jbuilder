json.extract! faculty, :id, :fname, :lname, :phone_number, :position, :administration_id, :committee_id, :created_at, :updated_at
json.url faculty_url(faculty, format: :json)
