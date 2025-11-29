# Pin application
pin "application"

# Hotwired Turbo & Stimulus
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

# Auto-load all Stimulus controllers
pin_all_from "app/javascript/controllers", under: "controllers"
