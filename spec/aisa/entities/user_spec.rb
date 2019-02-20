require 'bcrypt'

RSpec.describe User, type: :entity do
  let (:user) { User.new username: 'wisnu', password: 'wisnu' }

  it 'can be initialized with attributes' do
    expect(user.username).to eq('wisnu')
    expect(user.password).to eq('wisnu')
  end
end
