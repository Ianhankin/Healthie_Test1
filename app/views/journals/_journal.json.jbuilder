json.extract! journal, :id, :text, :created_at, :updated_at
json.url journal_url(journal, format: :json)
