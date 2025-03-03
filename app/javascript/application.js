// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require rails-ujs
//= require toastr

import "@hotwired/turbo-rails"
import "controllers"

$(document).on('turbo:load', function(e) {
  changeCategory();
})

function changeCategory() {
  $('.category-dropdown').on('change', function(e) {
    var categoryName = $(this).val();

    $.ajax({
      url: '/shoppingcart/product_list',
      method: 'get',
      data: {
        category: categoryName
      }
    });
    e.stopImmediatePropagation();
  })
}
