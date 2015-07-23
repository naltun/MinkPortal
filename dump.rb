# ignore

<%- if devise_mapping.registerable? && controller_name != 'registrations' %>
  <%= link_to "Sign up", new_registration_path(resource_name) %><br />
<% end -%>


# partial for right column
<div class="large-2 columns">
    <h3>Login</h3>
    <p>
       Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sem arcu, vulputate eget porttitor vel, fermentum in ante. Nullam ut volutpat enim, nec venenatis nibh. Duis vehicula nibh sed libero vulputate accumsan. Nunc et augue a libero finibus interdum. Aliquam erat volutpat. Phasellus sed risus lorem. Vestibulum cursus sit amet sem vel congue. Suspendisse quis neque mattis, dapibus ex ut, posuere ante. Vestibulum hendrerit arcu sed eros tincidunt lacinia.
    </p>
    </div>

# needed for adding a raft in a user show view
    <%= simple_form_for(@raft),  :url => {:action => :create} do |f| %>

       # line for _form partial for rafts 
    	<%= f.input :user_id, as: :string, required: true  %> 