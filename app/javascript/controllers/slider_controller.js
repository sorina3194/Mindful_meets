import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = ["friendshipsContainer", "requestsContainer"]

  connect() {
  }

  openFriendships() {
    this.friendshipsContainerTarget.classList.remove("closed");
    this.requestsContainerTarget.classList.add("closed");
  }

  openRequests() {
    this.friendshipsContainerTarget.classList.add("closed");
    this.requestsContainerTarget.classList.remove("closed");
  }
}
