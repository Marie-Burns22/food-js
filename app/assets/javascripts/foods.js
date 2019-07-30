// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready()

$(() => {
    bindClickHandlers()
})

const bindClickHandlers = () => {
    $('#all-foods').on('click', (e) => {
        e.preventDefault()
        fetch(`/foods.json`)
            .then(res => res.json())
            .then(data => console.log(data))
    })
}

// class Food {
//     constructor(name, category) {
//         this.name = name;
//         this.category = category;
//     }
    
