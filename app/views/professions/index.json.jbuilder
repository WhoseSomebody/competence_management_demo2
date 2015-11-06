json.array!(@professions) do |profession|
  json.extract! profession, :id, :min_level_of_compet_test, :profession_name, :qualification_name_id, :level
  json.url profession_url(profession, format: :json)
end
