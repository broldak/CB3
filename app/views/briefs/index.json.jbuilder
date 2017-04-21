json.array!(@briefs) do |brief|
  json.extract! brief, :id, :title
  json.url brief_url(brief, format: :json)
end
