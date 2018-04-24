json.extract! job, :id, :user_id, :sector_id, :capacity_id, :title, :description, :phone, :email, :salary, :date, :created_at, :updated_at
json.url job_url(job, format: :json)
