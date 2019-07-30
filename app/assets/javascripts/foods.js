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
        history.pushState(null, null, "foods")
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
        history.pushState(null, null, `foods/${id}`)
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
        let foodHtml = `
        <h3>${this.name}</h3><br>
        <h3>${this.name}</h3><br>
        `
        return foodHtml
    }
}

    
