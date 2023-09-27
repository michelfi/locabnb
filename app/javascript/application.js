// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Importez également le CSS de Flatpickr

// Importez la localisation si nécessaire
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import FlatpickrController from "path/to/datepicker_controller.js" // Assurez-vous de spécifier le bon chemin

const application = Application.start()
const context = require.context("controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
application.register("flatpickr", FlatpickrController)
