import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "box", "fields" ]

  pageChange() {
    console.log("testing!", this.element)
    console.log("selectbox: ", this.boxTarget)
    console.log("selectbox value: ", this.boxTarget.value)
    console.log("fields: ", this.fieldsTargets)

    if(this.boxTarget.value == " "){
      for(var i = 0; i < this.fieldsTargets.length; i++){
        this.fieldsTargets[i].style.visibility = "hidden"
      }
    }

    if(this.boxTarget.value == "Basic Page"){
      for(var i = 0; i < this.fieldsTargets.length; i++){
        this.fieldsTargets[i].style.visibility = "hidden"
      }
      this.fieldsTargets[0].style.visibility = "visible"
    }

    if(this.boxTarget.value == "External URL"){
      for(var i = 0; i < this.fieldsTargets.length; i++){
        this.fieldsTargets[i].style.visibility = "hidden"
      }
      this.fieldsTargets[1].style.visibility = "visible"
    }

    if(this.boxTarget.value == "Internal URL"){
      for(var i = 0; i < this.fieldsTargets.length; i++){
        this.fieldsTargets[i].style.visibility = "hidden"
      }
      this.fieldsTargets[2].style.visibility = "visible"
    }

    if(this.boxTarget.value == "PDF"){
      for(var i = 0; i < this.fieldsTargets.length; i++){
        this.fieldsTargets[i].style.visibility = "hidden"
      }
      this.fieldsTargets[3].style.visibility = "visible"
    }

  }

}