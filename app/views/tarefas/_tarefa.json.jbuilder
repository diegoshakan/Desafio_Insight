json.extract! tarefa, :id, :title, :body, :date, :user_id, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
