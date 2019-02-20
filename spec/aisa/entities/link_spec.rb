RSpec.describe Link, type: :entity do
  it 'can be initialized with attributes' do
    link = Link.new user_id: 1, handle: 'proclub', destination: 'https://www.proclub.id/'
    expect(link.user_id).to eq(1)
    expect(link.handle).to eq('proclub')
    expect(link.destination).to eq('https://www.proclub.id/')
  end
end
