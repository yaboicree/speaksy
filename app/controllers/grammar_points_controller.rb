class GrammarPointsController < ApplicationController

	def new
	end

	def create
	end

	def show
		@list = GrammarPoint.find(params[:id]
	end

	private

  	#def grammar_point_params
  	#	params.require(:grammar_point).permit(????)
		#end
		##### require that it be associated with a lesson??
end
