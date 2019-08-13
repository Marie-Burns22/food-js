$(document).ready()

$(() => {
    bindClickHandlers()
})

const bindClickHandlers = () => {
    $('#all-foods').on('click', (e) => {
        e.preventDefault()
        // history.pushState(null, null, "foods")
        fetch(`/foods.json`)
            .then(res => res.json())
            .then(foods => {
                $('#app-container').html('')
                foods.forEach(food => {
                    let newFood = new Food(food)
                    let foodHtml = newFood.formatIndex()
                    $('#app-container').append(foodHtml)
                })
            })
    })

    $(document).on('click', ".show_link", function (e) {
        e.preventDefault()
        let id = $(this).attr('data-id')
        // history.pushState(null, null, `foods/${id}`)
        $('#app-container').html('')
        fetch(`/foods/${id}.json`)
        .then(res => res.json())
        .then(food => {
            let newFood = new Food(food)
            let foodHtml = newFood.formatShow()
            $('#app-container').append(foodHtml)
        })
    })
}

class Food {
    constructor(food) {
        this.id = food.id;
        this.name = food.name;
        this.category = food.category;
        this.emissions = food.emissions;
        this.students = food.students;
    }

    formatIndex() {
        let foodHtml = `
        <a href="/foods/${this.id}" data-id="${this.id}" class="show_link"><h1>${this.name}</h1></a> 
        `
        return foodHtml
    }

    formatShow() {
        let foodEmissions = this.emissions.map(emission => {
            return (`
            <p>${emission.amount} ${emission.unit}</p>
            `)
        }).join(" ")

        return (`
        <div class="container">
            <h3>${this.name}</h3>
            <span class="text-muted">Emissions Data Entered by Students</span>
            <p>${foodEmissions}</p>
        </div>
        `)
    }
}

    
