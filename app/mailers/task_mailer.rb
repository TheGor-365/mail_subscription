class TaskMailer < ApplicationMailer
  def task_created
    @task = params[:task]
    @user = params[:user]
    @author = params[:author]

    mail to: @user.email, subject: "#{@task.project.title}: A new task was created by #{@author.name}"
  end

  def task_completed
    @task = params[:task]
    @user = params[:user]
    @author = params[:author]

    mail to: @user.email, subject: "#{@task.project.title}: A task was completed by #{@author.name}"
  end
end
