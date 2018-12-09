class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy, :add]

  def start_quiz
    @score = Score.new()
    @score.quiz_id = params[:id]
    @score.user=current_user
    @score.save
    # Keep id in session, but keep score server side for security
    session[:score_id]=@score.id
    set_current_question 0
    redirect_to '/ask_question'
  end

  def show_results
    @score=Score.find(session[:score_id])
    @quiz=@score.quiz
    render :show

  end

  def ask_question
    @score=Score.find(session[:score_id])
    @current_question = current_question
  end

  def answer_question
    @score=Score.find(session[:score_id])
    @question_index = current_question
    #byebug
    qs=@score.quiz.questions[current_question]
    correct = qs.correct?(params[:answer_id])
    @score.answer(qs.id, params[:answer_id].to_i, correct )
    @score.save
    set_current_question @question_index + 1
    if qs=@score.quiz.questions[current_question]
      redirect_to '/ask_question'
    else
      redirect_to '/show_results'
    end
  end

  def current_question
    i = session[:question_index] || 0
    return i
  end

  #So we can do next/prev/first/last in controller
  def set_current_question(qi)
    session[:question_index]=qi
    return qi
  end

# GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    if current_user
      @quiz = Quiz.new(quiz_params)
      @quiz.user = current_user
    else
      flash[:error] = "Not signed in"
      redirect_to sign_in_url
    end


    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:name, :user_id)
    end
end
