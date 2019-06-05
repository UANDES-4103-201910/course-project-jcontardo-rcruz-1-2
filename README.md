# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

We need to change this in our layout of sign in
    <div>
      <% if current_user %>
        Signed in as <strong><%= current_user.name %></strong>!
        <%= link_to "Sign out", signout_path, id: "sign_out" %>
      <% else %>
        <%= link_to "Sign in with Google", "/auth/google_oauth2", id: "sign_in" %>
      <% end %>
    </div>
    <div>
    <%= yield %>
    </div>