require "check_codeword.rb"

RSpec.describe "check_codeword method" do

    it "if the user enters the word horse then they win" do

        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."

       "if the user enters a word that starts with 'h' and ends with 'e' then they are close to winning"

        result = check_codeword("hedge")
        expect(result).to eq "Close, but nope."

       "if user enters word that does not start with 'h' or end with 'e' then they lose"

        result = check_codeword("oblisk")
        expect(result).to eq "WRONG!"
    end
end