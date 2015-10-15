class AddFormalitytoVocab < ActiveRecord::Migration
  def change
  	add_column :vocabs, :formality, :integer
  	#for words like "thank you", there are multiple ways to say it in japanese depending
  	#on the position of both actors. not sure if this is that helpful but 
  	#envisioned that we can set integer values to correspond with formalities
  	#and then use those to tie related vocab words together


  	#might be unneccessarily complex... i dont know japanese
  end
end