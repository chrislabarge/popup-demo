import { Controller } from "stimulus";
import tippy from 'tippy.js';
import "../stylesheets/popup.scss";

export default class extends Controller {
  static targets = ["trigger", "content"]

  initialize() {
    this.trigger = this.getTrigger();
    this.content = this.getContent();

    this.initPopup();

    this.content.style.display = "none";
  }

  initPopup() {
    this.popup = tippy(this.trigger, {
      content: this.content.innerHTML,
      allowHTML: true,
    });
  }

  getContent() {
    if (this.hasContentTarget) {
      return this.contentTarget;
    } else {
      var content = document.createElement('div')
      content.innerHTML = this.data.get("content");

      return content
    }
  }

  getTrigger() {
    if (this.hasTriggerTarget) {
      return this.triggerTarget;
    } else {
      return this.element;
    }
  }
}

