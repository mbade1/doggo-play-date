module PlaydatesHelper

    def date_strftime(date)
        date.strftime("Last updated %A, %b %e, at %l:%M %p")
    end

    def time_strftime(time)

    end
end


# def last_updated(post)
#     post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
#   end