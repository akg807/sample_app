require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(name: "Example User", email: "user@example.com") }

  it "has a name" do
    expect(user).to respond_to(:name)
  end

  it "has an email" do
    expect(user).to respond_to(:email)
  end
end
