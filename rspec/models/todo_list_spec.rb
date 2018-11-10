require 'rails_helper'

RSpec.describe TodoList, :type => :model do
  list{
    describe_class.new(title:"Prueba1", description:"Estoy probando",user_id: 1)
  }
  it "is not valid without a title" do
    list.title = nil
    expect(list).to_not be_valid
  end
  describe "Associations" do
  it "has one buyer" do
    assc = described_class.reflect_on_association(:user_id)
    expect(assc.macro).to eq :has_one
  end
end

end
