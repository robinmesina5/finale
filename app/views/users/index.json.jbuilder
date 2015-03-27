json.array!(@users) do |user|
  json.extract! user, :id, :email, :username, :first_name, :last_name, :password_digest, :session_token
  json.url user_url(user, format: :json)
end
