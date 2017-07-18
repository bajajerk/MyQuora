class QuestionCreated < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question_created.notifyAddQues.subject
  #
  def notifyAddQues email , content
    @question_content = content

    mail to: email
  end
end
