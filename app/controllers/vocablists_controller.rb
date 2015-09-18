class VocablistsController < ApplicationController
	def new
	end

	def create
	end

	def show
		@list = Vocablist.find(params[:id]
	end

	private

  	#def vocablist_params
  	#	params.require(:vocablist).permit(????)
		#end
		##### require that it be associated with a lesson??
end
