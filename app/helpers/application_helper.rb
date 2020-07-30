module ApplicationHelper
    def sort_by_date(dates)
        dates.sort do |a, b| 
            a <=> b
        end
    end
    
    def current_date(dates)
        dates.each do |date|
            if date > Time.now
                date
            end
        end
    end
end

#USER SHOW/HOMEPAGE FOR LOGGED IN USER
#<% @user.playdates.each do |playdate| %>
#     <tr>
#       <td><%= link_to "#{playdate.park.name}", park_path(playdate.park) %></td>
#       <td><%= playdate.date.strftime("%B %d, %Y") %></td>   
#       <td><%= playdate.time.strftime("%I:%M %P") %></td>
#     </tr>


#PARK SHOW
# <% @park.playdates.each do |playdate| %>
#     <tr>
#       <td><%= playdate.date.strftime("%B %d, %Y") %></td> 
#       <td><%= playdate.time.strftime("%I:%M %P") %> </td>
#       <td><%= playdate.user.username %></td>
#       <td><%= playdate.user.family_size %></td>
#     </tr>
#   <% end %>

#ADD HELPER METHOD FOR DATE BEING AFTER CURRENT DATE!!!