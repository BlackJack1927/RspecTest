RSpec.describe ExchangeIt::Api::Converter do
  specify '#convert' do
    converter_stub =instance_double ExchangeIt::Api::Converter# , convert: 100

  # expect(converter_stub).to receive(:convert).with(sum: 80)#обязательно ждем визова метода с аргументами with

    allow(converter_stub).to receive(:convert).with(sum: 80).and_return(100)

    expect(converter_stub.convert(sum: 80)).to eq(100)

    expect(converter_stub).to have_received(:convert).with(sum: 80).once #проверка візівался ли метод постфактум,так назіваемий Spy
    end
end
