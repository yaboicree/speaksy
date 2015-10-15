class Vocab < ActiveRecord::Base
  belongs_to :vocab_list

#en and #jp attributes, both=strings
#"formality" attribute????
#separate model for kanji
#references :vocab_list index: true
#foreign_key :vocab_list
end
