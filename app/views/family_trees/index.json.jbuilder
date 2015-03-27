json.array!(@family_trees) do |family_tree|
  json.extract! family_tree, :id, :name, :user_id, :relative_id
  json.url family_tree_url(family_tree, format: :json)
end
