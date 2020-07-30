module ApplicationHelper
    def sort_by_date(dates)
        dates.sort do |a, b| 
            a <=> b
        end
    end
    
    def current_date(dates)
        dates.each do |date|
            if Date.parse(date.date.to_s).future?
                date
            end
        end
    end
end
