class ProjectMailer < ApplicationMailer
  def user_added_to_project
    @user = params[:user]
    @project = params[:project]
    @author = params[:author]

    mail to: @user.email, subject: "#{@author.name} added you to #{@project.title}"
  end
end
