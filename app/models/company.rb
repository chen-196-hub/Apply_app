class Company < ApplicationRecord
  validates_presence_of :name ,:apply_site 
  
  def short_description
    if memo.length <= 9
      memo
    else
     memo[0, 9] + '...'
    end
  end

  def short_content
    if content.length <= 9
      content
    else
      content[0, 9] + '...'
    end 
  end


end
