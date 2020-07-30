MORNING:
    - Add a comments to each Park
        - Reach out to coaches on these!!
    - Sort by method for order of play dates

AFTERNOON:
    - Office Hours
    - OAuth linked with Facebook



            <%= form_tag "/parks/:park_id/comments", :id => 'comment-form', :method => :post do %>
          <%= text_field_tag "comment" %>
          <%#= hidden_field_tag :authenticity_token, cookies.authenticate %>
          <%= hidden_field_tag :park_id, @park.id %>
          <% binding.pry %>
          <%= hidden_field_tag :user_id, current_user.id %>
          <%= submit_tag "comment", :id => "submit-comment"%>
        <% end %>