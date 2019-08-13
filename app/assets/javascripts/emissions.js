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
    }


    emissionShow() {
        return (`
            <div class="container">
                <h3 class="display-4">${this.amount} ${this.unit} from ${this.source}</h3>
            </div>
        `)
    }
}