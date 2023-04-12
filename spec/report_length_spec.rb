require "report_length.rb"

RSpec.describe "string length method" do

    it "returns the length of a given string" do

        result = report_length("student at makers")
        expect(result).to eq "This string is 17 characters long."

        result = report_length("hola")
        expect(result).to eq "This string is 4 characters long."

    end
end