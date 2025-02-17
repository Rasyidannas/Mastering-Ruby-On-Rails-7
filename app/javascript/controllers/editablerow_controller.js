import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="editablerow"
export default class extends Controller {
  connect() {
  }
  
  static targets = [ "inputField" ];

  toggleEditing(event) {
    const row = this.element.closest("tr");
   
    row.firstElementChild.value="true";
  
    this.inputFieldTargets.forEach((field) => {
      field.readOnly = !field.readOnly
    });

    const selectElement = this.element.querySelector("select");
    selectElement.disabled=!selectElement.disabled;
  }
}
