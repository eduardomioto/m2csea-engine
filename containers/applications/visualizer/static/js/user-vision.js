$(document).ready(function () {
    $( "microservicesTable" ).empty();

    $.ajax({
        type: "GET",
        url: 'http://localhost:19092/microservices/vision/user/',
        dataType: 'json',
        async: false,
        success: function (data) {
            console.log(data);
            for(var k in data) {
                populateCriticaliTable(k, data[k].microservice, data[k].rating);
            }
        }, error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.responseText);
            console.log(thrownError);
        }
    });

    function populateCriticaliTable(id, microservice, rating){
        var newRow = "<tr>";
        newRow += "<th scope=\"row\">"+ id +"</th>";
        newRow +="<td>"+ microservice + "</td>";
        newRow +="<td>";
        newRow +="<input type=\"text\"";
        newRow +="id=\"";
        newRow +="identifier-" + microservice;
        newRow +="\"";
        newRow +="data-provide=\"slider\"";
        newRow +="data-slider-ticks=\"[1, 2, 3, 4, 5]\"";
        newRow +="data-slider-ticks-labels='[\"Muito Baixa\", \"Baixa\", \"Média\", \"Alta\", \"Muito Alta\"]'";
        newRow +="data-slider-min=\"1\""
        newRow +="data-slider-max=\"5\""
        newRow +="data-slider-step=\"1\""
        newRow +="data-slider-value=\"";
        newRow +=rating;
        newRow +="\"";
        newRow +="data-slider-tooltip=\"hide\" />";
        newRow += "</td>";
        newRow += "</tr>";
        $( "#microservicesTable" ).append(newRow);
    }

    $('[id^="identifier-"]').on('change', function(e) {

        var idRaw = this.id;
        var micro = idRaw.replace("identifier-", "");
        var rating = $(this).attr( "data-value" );
        saveUserVision(micro , rating);
    });

    function saveUserVision(microservice, rating) {
        $.ajax({
            url:"http://localhost:19090/microservices/vision/user/",
            type:"POST",
            data: JSON.stringify({ "microservice": microservice, "rating" : rating }),
            contentType:"application/json; charset=utf-8",
            dataType:"json",
            success: function(){
                console.log("OK");
            }
        })
    }

});