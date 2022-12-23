// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels").start()

require("bootstrap")
require("../includes/vote.js")

