import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button"];

  connect() {
    console.log("ChatSession controller connected");
  }

  startChat(event) {
    const button = event.currentTarget;
    button.disabled = true;
    this.createChatSession();
  }

  async createChatSession() {
    try {
      const response = await fetch('/chat_sessions', {
        method: 'POST',
        credentials: 'include',
        headers: {
          'Content-Type': 'application/json',
        }
      });
    } catch (error) {
      console.error('An error occurred:', error);
    }
  }
}
