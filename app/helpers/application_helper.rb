module ApplicationHelper
  def sorted(dates)
    dates.sort_by{|d| d.date}
  end
    
  def current_date(dates)
    dates.each do |date|
      if Date.parse(date.date.to_s).future?
        date
      end
    end
  end
end
