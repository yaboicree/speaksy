class VocabsController < ApplicationController
  def new
    @vocab = Vocab.new
  end

  def create
  	#need to be associated with a specific vocab_list. vocab_lists have IDs 
    #which are related to the order in which they are created, 
    #but unrelated to the lesson which they are connected to 
 		@vocab = Vocab.create!(vocab_params)
    if @vocab.save
      flash[:success] = "Vocab created!"
      #redirect_to @vocab_list ---- needs to redirect to its own vocab list...
      redirect_to chapters_path
    else
      flash[:error] = "failed to save"
    end
  end

  private

  	def vocab_params
  		params.require(:vocab).permit(:en, :jp, :vocab_list_id)
		end

end
