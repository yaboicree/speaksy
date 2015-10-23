class GrammarPointsController < ApplicationController

	def new
		@grammar_point = GrammarPoint.new
	end

	def create
		@grammar_point = GrammarPoint.create!(grammar_point_params)
		if @grammar_point.save
      flash[:success] = "Grammar point created!"
      #redirect_to @vocab_list ---- should redirect to its own vocab list
      #but I don't know how to do it -chris
      redirect_to chapters_path
    else
      flash[:error] = "failed to save"
    end
	end

	def show
		@list = GrammarPoint.find(params[:id])
	end
# は is the topic marker particle. This means that は (pronounced "wa") can mark the subject of the sentence (the actor) or the subject being discussed.

# Example: 
# "I am a student." 
# 私は学生です。
	private

  	def grammar_point_params
  		params.require(:grammar_point).permit(:content, :lesson_id)
		end
end
