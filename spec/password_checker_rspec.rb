require "password_checker.rb"

RSpec.describe PasswordChecker do
  context "when password is less than 8 characters" do
    it "fails" do
      password_checker = PasswordChecker.new("lalala")
      expect { password_checker.check() }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "when password is more or equal to 8 characters" do
    it "passes" do
      password_checker = PasswordChecker.new
      password_checker.check("password")
      expect(result).to eq true
    end
  end
end


