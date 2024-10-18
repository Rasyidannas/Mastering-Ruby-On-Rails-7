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

  def conditionalrendering
    @data={
      'name': "Jimmy Anderson",
      'isVisible': true,
      'loggedIn': true,
      'countryCode': "US",
      'workExperience': 45,
      'stateCode': nil
    }
  end

  def loopthrougharrays
    @Products = []

    @Products.push({ 'productID': 1, 'productName': "AMD Ryzen 3990", 'quantity': 100, 'unitsInStock': 50, 'disContinued': "False", 'cost': 3000 })

    @Products.push({ 'productID': 2, 'productName': "Intel Core i9-10900K", 'quantity': 80, 'unitsInStock': 40, 'disContinued': "False", 'cost': 500 })

    @Products.push({ 'productID': 3, 'productName': "Nvidia GeForce RTX 3080", 'quantity': 120, 'unitsInStock': 70, 'disContinued': "False", 'cost': 700 })
  end
end
