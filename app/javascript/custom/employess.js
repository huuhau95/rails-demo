$(function() {
    $.ajax({
        url: 'http://localhost:3000/load-ajax',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log(data)
        }
    });
})
