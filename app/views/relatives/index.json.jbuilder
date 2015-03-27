json.array!(@relatives) do |relative|
  json.extract! relative, :id, :first_name, :last_name, :tree_id, :address, :age, :birthday, :date_of_death, :father, :mother, :children, :occupation, :user_id
  json.url relative_url(relative, format: :json)
end
