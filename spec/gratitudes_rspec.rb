require "gratitudes.rb"

RSpec.describe Gratitudes do

  it "displays a list of things to be grateful for" do
    gratitudes = Gratitudes.new
    gratitudes.add('Aphra')
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: Aphra"
  end
end