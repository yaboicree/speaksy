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
#... dont know how/ if possible to track the previous pages a user has been on... 
# santi: what is this for? can be done w session id and clientside temp data
#possible temporary solution: select the chapter in a dropdown list...

  	#need to write a method to find the chapter of a lesson????????? not sure how to tie to each other
    #@chree lesson.chapter_id works i think, lesson.chapter gives the object p sure

  	@lesson = Lesson.create(lesson_params)

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