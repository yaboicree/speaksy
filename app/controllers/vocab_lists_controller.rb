class VocabListsController < ApplicationController
	def new
		@vocab_list = VocabList.new
	end

	def create
		@vocab_list = VocabList.create!(vocablist_params)
		if @vocab_list.save
			flash[:success] = "List created!"
			redirect_to @vocab_list
		else
			flash[:error] = "failed to save"
		end
	end

	def show
		@list = VocabList.find(params[:id])
		@vocabs = @list.vocabs
	end

	private

  	def vocablist_params
  		params.require(:vocab_list).permit(:name, :lesson_id)
		end
		##### require that it be associated with a lesson??
end