# Preview all emails at http://localhost:3000/rails/mailers/question_created
class QuestionCreatedPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/question_created/notifyAddQues
  def notifyAddQues
    QuestionCreated.notifyAddQues
  end

end
