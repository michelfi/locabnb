import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Importez également le CSS de Flatpickr

// Importez la localisation si nécessaire
import "flatpickr/dist/l10n/fr.js"; // Par exemple, pour le français
