$(document).ready()

$(() => {
    bindClickHandlersEmissions()
})

const bindClickHandlersEmissions = () => {

    $("#new_emission").on('submit', function(e) {
        e.preventDefault();
        let values = $(this).serialize()
        $.post("/emissions", values).done(function(data) {
            let newEmission = new Emission(data)
            let newHtml = newEmission.emissionShow()
            $("#app-container").html(newHtml)
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
        this.student = emission.student
        this.food = emission.food
    }


    emissionShow() {
        return (`
            <div class="container">
                <h2 class="display-5 text-white bg-secondary px-3 py-2">Food Emission Added for:  ${this.food.name} </h2>
                <h2 class="display-5">Amount: ${this.amount} ${this.unit}</h2>
                <h2 class="display-5">Added by: ${this.student.name}</h2><span class="text-muted">Source: ${this.source}</span>
            </div>
        `)
    }
}