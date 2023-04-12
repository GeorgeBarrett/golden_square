require "string_builder.rb"

RSpec.describe StringBuilder do

  it "adds strings together" do

    string_builder = StringBuilder.new
    string_builder.add("mundo")
    string_builder.size
    result = string_builder.output()
    expect(result).to eq "mundo"

    string_builder = StringBuilder.new
    string_builder.add("escala")
    string_builder.size
    result = string_builder.output()
    expect(result).to eq "escala"

  end
end