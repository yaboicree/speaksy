class VocabsController < ApplicationController
  def new
  end

  def create
  	#need to be associated with a specific vocab_list. vocab_lists have IDs which are related to the order in which they are created, 
  																																					#but unrelated to the lesson which they are connected to 
 		if @vocab == nil
 			@vocab = "nil"
 		end
 		@vocab = @vocab_lists.vocab.create!(vocab_params)
  end
# should
  private

  	def vocab_params
  		#params.require(:vocab).permit(:word)
		end

end
