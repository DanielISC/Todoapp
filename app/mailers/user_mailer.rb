class UserMailer < ApplicationMailer
  def new_task(user, task)
    @task = task
    mail(to: user.email, subject: 'Se ha publicado un nuevo libro!')
  end
end
