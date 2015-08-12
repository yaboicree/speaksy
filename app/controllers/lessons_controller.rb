class LessonsController < ApplicationController

	def show					#show a specific lesson
  	  	@lesson = Lesson.find(params[:id])
  end
  #need to install a pagination gem--- later, might need a more complex/efficient 
  																									# way to display lessons

  def new 					#display lesson creation view
  	@lesson = Lesson.new
  	#@chapter = @lesson.chapter
  end

  def create
		chapter = Chapter.first
  	#need to write a method to find the chapter of a lesson????????? not sure how to tie to each other
  	@lesson = chapter.lessons.create!(lesson_params)
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
  		params.require(:lesson).permit(:name)
		end

end