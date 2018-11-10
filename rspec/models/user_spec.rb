require 'rails_helper'

RSpec.describe User, :type => :model do
  user{
    describe_class.new(username: "Daniel", email:"iscluisdaniel@gmail.com",
    password: "123456")
  }
  it "is not valid without a username" do
    user.username = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a email" do
    user.email = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end
end
