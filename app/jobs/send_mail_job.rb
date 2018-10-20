class SendMailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "si entrooooooooooooooooooooooooooooooo"
    task = TodoTask.new
    task.todo_list_id = 1
    task.content = "seeeeeeeeeeeeeeeeeeee"
    task.save!
  end
end
