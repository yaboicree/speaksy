class GrammarPointsController < ApplicationController

	def new
		@grammar_point = GrammarPoint.new
	end

	def create
		@grammar_point = GrammarPoint.create!(grammar_point_params)
	end

	def show
		@list = GrammarPoint.find(params[:id])
	end

	private

  	def grammar_point_params
  		params.require(:grammar_point).permit(:name, :lesson_id)
		end
end
