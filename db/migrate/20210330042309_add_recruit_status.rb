class AddRecruitStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :recruit_status, :integer 
  end
end
