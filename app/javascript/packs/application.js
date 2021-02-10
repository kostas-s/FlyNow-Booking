// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

const btn = document.querySelector('#search-btn')
const searchForm = document.querySelector('#search-form')

const flights = document.querySelectorAll('#flight')

for (let i = 0; i < flights.length; i++) {
    flights[i].addEventListener('click', (evt) => {
        flights[i].classList.add('selected');
        for (let j = 0; j < flights.length; j++) {
            if (j === i) {
                continue;
            }
            flights[j].classList.remove('selected');
        }

    })
}
if (btn) {
    btn.addEventListener('click', () => {
        searchForm.classList.add('raised')
    })
}