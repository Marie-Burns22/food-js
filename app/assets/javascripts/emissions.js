// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready()

$(() => {
    bindClickHandlersEmissions()
})

const bindClickHandlersEmissions = () => {

    $("#new_emission").on('submit', function(e) {
        e.preventDefault();
        let values = $(this).serialize();
        $.post("/emissions", values).done(function(data) {
                console.log(data)
            })
    })
}

class Emission {
    constructor(emission) {
        this.id = emission.id
        this.student_id = emission.student_id
        this.food_id = emission.food_id
        this.amount = emission.amount
        this.unit = emission.unit
        this.source = emission.source
    }
}