require 'features_helper'

RSpec.describe UserRepository, type: :repository do
  let(:repository) { UserRepository.new }
  before do
    repository.clear

    repository.create username: 'admin', password: 'admin'
    repository.create username: 'wisnu', password: 'wisnu'
  end

  it 'gets two records' do
    expect(repository.all.length).to eq(2)
  end

  it 'returns true when the credentials were matched' do
    expect(repository.match 'admin', 'admin').to be_truthy
  end

  it 'returns false when the credentials where mismatched' do
    expect(repository.match 'admin', 'wisnu').to be_falsy
  end
end
