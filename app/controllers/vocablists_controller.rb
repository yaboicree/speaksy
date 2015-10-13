class VocablistsController < ApplicationController
	def new
	end

	def create
		@vocablist = @lesson.vocablists.create!(vocab_list_params)
	end

	def show
		@list = Vocablist.find(params[:id])
	end

	private

  	def vocab_list_params
  		params.require(:vocablist).permit(:name)
		end
		##### require that it be associated with a lesson??
end
