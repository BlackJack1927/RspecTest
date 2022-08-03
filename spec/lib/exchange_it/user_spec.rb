# frozen_string_literal: true

RSpec.describe ExchangeIt::User do
  let(:user) { described_class.new('john', 'doe') }
  let(:user_no_name) { described_class.new(nil, 'doe') }
  let(:user_no_surname) { described_class.new('john', nil) } # если в заголовке описан класс и модкль то можно его не візівать) а

  it 'return name' do
    expect(user.name).to eq('john')
  end

  it 'return name as string' do
    expect(user_no_name.name).to be_an_instance_of(String)
  end

  it 'return surname' do
    expect(user.surname).to eq('doe')
  end

  it 'return surname as string' do
    expect(user.name).to be_an_instance_of(String)
  end
end
