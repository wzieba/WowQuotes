require 'rails_helper'

RSpec.describe Quote, type: :model do
  subject {
    described_class.new(
        text: 'Test quote text',
        )
  }

  # Validation test
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without text" do
    subject.text = nil
    expect(subject).to be_invalid
  end

  it {should validate_uniqueness_of(:text)}

end
