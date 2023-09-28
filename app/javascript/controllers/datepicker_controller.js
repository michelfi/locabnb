// app/javascript/controllers/datepicker_controller.js

import { Controller } from "stimulus";
import "flatpickr/dist/plugins/rangePlugin";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["dateRange", "startsAt", "endsAt"];

  connect() {
    const dateRangeElement = this.dateRangeTarget;
    const startsAtElement = this.startsAtTarget;
    const endsAtElement = this.endsAtTarget;

    if (dateRangeElement) {
      flatpickr(dateRangeElement, {
        mode: "range",
        dateFormat: "Y-m-d",
        onChange: function (selectedDates, dateStr, instance) {
          // Mettre à jour starts_at et ends_at avec les dates sélectionnées
          const selectedDatesArray = dateStr.split(" to ");
          startsAtElement.value = selectedDatesArray[0];
          endsAtElement.value = selectedDatesArray[1];
        },
      });
    }

    // Votre code pour le champ d'heure reste inchangé
    const timePickerElement = document.querySelector(".timepicker-input");
    if (timePickerElement) {
      flatpickr(timePickerElement, {
        enableTime: true,
        noCalendar: true,
        dateFormat: "H:i",
      });
    }
  }
}

flatpickr('#startDate', {
  enableTime: true,
  allowInput: true,
  dateFormat: "m/d/Y h:iK",
  "plugins": [new rangePlugin({ input: "#endDate"})]
});


