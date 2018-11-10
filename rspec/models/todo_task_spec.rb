require 'rails_helper'

RSpec.describe TodoList, :type => :model do
  task{
    describe_class.new(content:"tarea prueba 1", string:"tarea creada",todo_task_id: 1)
  }
  it "is valid with valid attributes" do
    expect(list).to be_valid
  end
  it "is not valid without a content" do
    task.content = nil
    expect(list).to_not be_valid
  end
end
