// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"

$(document).on('turbo:load', function(e) {
  hideShowAddress();
})

function hideShowAddress() {
  $('.address-details-div').toggleClass('d-none');

  if($('#lblShowHide').text() == "Hide Address Details")
    $("#lblShowHide").text("Show Addres Details")
  else
    $("#lblShowHide").text("Hide Address Details")
}
