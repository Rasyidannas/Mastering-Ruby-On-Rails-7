import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selectallcheckbox"
export default class extends Controller {
  connect() {
  }

  static targets = ["chkheader", "chkrow"]

  toggleCheckboxes() {
    let isChecked = this.chkheaderTarget.checked;
    this.chkrowTargets.forEach(employee => {
      employee.checked = isChecked;
    })
  }
}
