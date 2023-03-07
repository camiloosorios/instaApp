import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["file", "img"]

  connect() {
    // alert("Connect");
  }

  preview(){
    let file = this.fileTarget.files[0];  
  
    const reader = new FileReader();
        reader.addEventListener('load', (event) => {
        document.getElementById("imgPreview").src = event.target.result;
    });
  
    reader.readAsDataURL(file);
  }
}