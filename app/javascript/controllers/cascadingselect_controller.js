import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cascadingselect"
export default class extends Controller {
  connect() {
  }

  static targets = ['countrySelect', 'stateSelect', 'citySelect'];

  loadStates() {
    
  }

  loadCities() {

  }
}
