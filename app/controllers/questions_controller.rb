class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  # def index
  #   @questions = Question.all
  # end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  # def new
  #   @question = Question.new
  # end

  # GET /questions/1/edit
  def edit
    # byebug
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.User_id = current_user.id
  
    respond_to do |format|
      if @question.save
        format.html { redirect_to '/', notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
        # QuestionCreated.notifyAddQues(current_user.email,@question.content).deliver_now

      else
        format.html { render '/' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
  
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to '/', notice: 'Question was successfully updated.' }
        format.json { render '/' , status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
            format.js   { render :layout => false }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question, :User_id, :content, :anonymous)
    end
end
