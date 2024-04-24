import { Controller } from 'stimulus'

export default class extends Controller {
  static values = { imageUrl: String }

  preview() {
    window.open(this.imageUrlValue, 'Preview', 'width=400,height=400')
  }
}
