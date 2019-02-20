class UserRepository < Hanami::Repository
  def match(username, password)
    user = users.where(username: username).first
    unless user.nil?
      return user.password == password
    end

    return false
  end
end
