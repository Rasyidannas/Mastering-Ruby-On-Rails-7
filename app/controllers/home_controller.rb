class HomeController < ApplicationController
  def index
    # render plain: "Hello World from Rails 7"

    # render html: "<h1>Hello World From Rails 7</h1>".html_safe

    message="<h1>Hello World From Rails 7</h1>"
    message+="<h2>Hello World From Rails 7</h2>"

    render html: message.html_safe
  end

  def getquerystringvalues
    message=""
    if params[:message]
      message+="<h1>Message is :" + params[:message] + "</h1>"
    else
      message+="<h1>You havent supplied any value for message...</h1>"
    end

    if params[:country]
      message+="<h1>Message is :" + params[:country] + "</h1>"
    else
      message+="<h1>You havent supplied any value for message...</h1>"
    end

    message += "<h1>Controller name is:" + params[:controller] + "</h1>"
    message += "<h1>Action name is:" + params[:action] + "</h1>"

    render html: message.html_safe
  end

  def passdatatoviews
    @message="<h1>Hello World From Rails 7</h1>"
    @message+="<h2>Hello World From Rails 7</h2>"
  end

  def showdatetimeinfo
    @currenttime=DateTime.now
  end
end
