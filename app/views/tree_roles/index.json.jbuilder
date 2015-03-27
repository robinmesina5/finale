json.array!(@tree_roles) do |tree_role|
  json.extract! tree_role, :id, :family_id, :user_id, :role
  json.url tree_role_url(tree_role, format: :json)
end
