require "greet.rb"

RSpec.describe "greet method" do

    it "returns a greeting to a person" do

        result = greet("George")

        expect(result).to eq "Hola, George!"

    end
end