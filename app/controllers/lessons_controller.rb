class LessonsController < ApplicationController

	def show					#show a specific lesson
  	  	@lesson = Lesson.find(params[:id])
        @vocab_lists = @lesson.vocab_lists.all
        @grammar_points = @lesson.grammar_points.all
  end

  def new 					#display lesson creation view
  	@lesson = Lesson.new
  	#@chapter = @lesson.chapter
  end

  def create
#... dont know how/ if possible to track the previous pages a user has been on... 
#possible temporary solution: select the chapter in a dropdown list...

  	#need to write a method to find the chapter of a lesson????????? not sure how to tie to each other
  	@lesson = Lesson.create!(lesson_params)
		if @lesson.save
			flash[:success] = "Lesson created!"
			redirect_to @lesson
		else
			flash[:error] = "failed to save"
		end
  end

  def destroy
  end

  def update
  end

  private

  	def lesson_params
  		params.require(:lesson).permit(:name, :chapter_id)
		end

end