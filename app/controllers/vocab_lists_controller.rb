class VocabListsController < ApplicationController
def new
		#make this method if we want a web form to make a vocablist
		@vocablist = Vocablist.new
	end

	def create
		## lesson associated w vocablist will 
		@vocab_list = VocabList.create!(vocablist_params)
	end

	def show
		@list = VocabList.find(params[:id])
		@vocabs = @list.vocabs
	end

	private

  	def vocablist_params
  		params.require(:vocablist).permit(:name, :lesson_id)
		end
		##### require that it be associated with a lesson??
end