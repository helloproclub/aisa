require 'bcrypt'

class User < Hanami::Entity
  include BCrypt

  def initialize(attributes = nil)
    attributes[:password] = Password.create attributes[:password] unless attributes[:password].nil?
    @password = attributes[:password]
    @attributes = self.class.schema[attributes]
    freeze
  end

  def password=(new_password)
    @password = Password.create new_password
  end
end
