// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready()

$(() => {
    bindClickHandlers()
})

const bindClickHandlers = () => {

    $('#new_emission').on('submit', function (e) {
        e.preventDefault()
        const values = $(this).serialize()
        $.post("/emissions", values)
            .done(function(data) {})
    })
}