class ChaptersController < ApplicationController
	#need to set filters... before_action ____

  def index					#list all chapters
  	#@chapters = Chapter.paginate(page: params[:page])
  	@chapters = Chapter.all
  end

  def show					#show a specific chapter
  	@chapter = Chapter.find(params[:id])
    #@lessons = @chapter.lessons.paginate(page: params[:page])
    @lessons = @chapter.lessons.all
  end
  #need to install a pagination gem

  def new 					#display chapter creation view
  	@chapter = Chapter.new
  end

  def create				#create chapter
  	@chapter = Chapter.new(chapter_params)
  	if @chapter.save
			flash[:success] = "Chapter created!"
			redirect_to @chapter
		else
			render 'new'
		end
  end

  def destroy				#delete chapter
		@chapter.destroy
		flash[:success] = "chapter deleted"
		redirect_to root_url
	end

  def edit   #display chapter edit view.... doesnt actually update it
    @chapter = Chapter.find(params[:id])
  end


  def update
  	#NEED TO WRITE THIS METHOD 
    @chapter = Chapter.find(params[:id])
    #after:??? not sure...
  end


  private

		def chapter_params
			params.require(:chapter).permit(:name, :description)
		end
end
