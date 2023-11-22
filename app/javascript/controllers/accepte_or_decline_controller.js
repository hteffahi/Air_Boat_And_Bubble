import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="accepte-or-decline"
export default class extends Controller {
  static targets = ["status"];

  connect() {
    // Vous pouvez ajouter des initialisations ici
  }

  changeStatus() {
    // Logique pour changer l'état
    const newStatus = this.statusTarget.textContent.trim() === "Accepter" ? "Refuser" : "Accepter";
    this.statusTarget.textContent = newStatus;

    // Ajoutez ici la logique pour mettre à jour l'état côté serveur, par exemple en utilisant une requête AJAX
  }
}
