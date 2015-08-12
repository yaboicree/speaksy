class VocabsController < ApplicationController
  def new
  end

  def create
  end
###########need to create vocab lists first???
  private

  	def vocab_params
  		params.require(:vocab).permit(:word)
		end

end
