class VocablistsController < ApplicationController
	def new
		#make this method if we want a web form to make a vocablist
		#@vocablist = Vocablist.new
	end
#########################################
#########################################
#########################################
#########################################
#########################################
##################################################################################
####     this controller is not named right, should be VocabListsController     ###################################################
##################################################################################
#########################################
	def create
		## lesson associated w vocablist will 
		@vocablist = VocabList.create!(vocablist_params)
		# how do vocabs get associated with vocablists? is it when they are created?
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
