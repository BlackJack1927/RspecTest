# frozen_string_literal: true

RSpec.describe ExchangeIt::User do
  let(:user) { |ex| described_class.new(ex.metadata[:name] || 'john', 'doe') }
  # let(:user_no_name) { described_class.new(nil, 'doe') } метаданніе заменили метод без имени
  let(:user_no_surname) { described_class.new('john', nil) } # если в заголовке описан класс и модкль то можно его не візівать) а

  it 'return name' do
    expect(user.name).to eq('john')
  end

  it 'return name as string', name: nil do
    expect(user.name).to be_an_instance_of(String)
  end

  it 'return surname' do
    expect(user.surname).to eq('doe')
  end

  it 'return surname as string', surname: nil do
    expect(user_no_surname.surname).to be_an_instance_of(String)
  end

  specify '#account' do
    expect(user.account).to be_an_instance_of(ExchangeIt::Account)
  end

  it 'has zero balance by default' do
    expect(user.balance).to eq(0)
  end
end
