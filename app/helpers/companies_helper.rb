module CompaniesHelper
  def print_recruit_status(company)
    case company.recruit_status
    when 1
      "検討中"
    when 2
      "応募済み-書類選考"
    when 3
      "応募済み-面接"
    when 4
      "内定"
    when 5
      "不合格"
    when 6
      "返信待ち"
    else 
      "不明"
    end
  end

  
  
end
