class UserMailer < ApplicationMailer
  def new_task(user, task)
    @task = task
    mail(to: user.email, subject: 'You have a new task')
  end
end
