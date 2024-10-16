class HomeController < ApplicationController
  def index
    # render plain: "Hello World from Rails 7"

    # render html: "<h1>Hello World From Rails 7</h1>".html_safe

    message="<h1>Hello World From Rails 7</h1>"
    message+="<h2>Hello World From Rails 7</h2>"

    render html: message.html_safe
  end
end
