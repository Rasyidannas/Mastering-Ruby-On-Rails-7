import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bulkinsert"
export default class extends Controller {
  connect() {
  }

  removeEmployee(event) {
    event.target.closest("div").remove();
  }
}
