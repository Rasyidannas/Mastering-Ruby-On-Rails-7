import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bulkinsert"
export default class extends Controller {
  connect() {
  }

  static targets = ["container", "template"]

  addEmployee() {
    const clone = document.importNode(this.templateTarget.content, true);
    this.containerTarget.appendChild(clone);
  }

  removeEmployee(event) {
    event.target.closest("div").remove();
  }
}
