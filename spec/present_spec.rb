require "present.rb"

RSpec.describe Present do
  context "when contents have not been wrapped" do
    it "fails" do
      present = Present.new
      expect { present.unwrap() }. to raise_error "No contents have been wrapped."
    end
  end

  context "when a present is already wrapped" do 
    it "fails" do
      present = Present.new
      present.wrap("socks")
      expect { present.wrap("wrap") }. to raise_error "A contents has already been wrapped." 
    end
  end

  context "when you wrap something and unwrap it" do
    it "fails" do
      present = Present.new
      present.wrap("socks")
      result = present.unwrap
      expect(result).to eq "socks"
    end
  end
end