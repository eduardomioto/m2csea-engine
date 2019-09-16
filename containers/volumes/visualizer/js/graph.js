$(document).ready(function () {
    var nodes = [];
    var edges = [];

    $.ajax({
        type: "GET",
        url: 'http://localhost:19100/graph', 
        dataType: 'json',
        async: false,
        success: function (data) {
            console.log(data);
            nodes = data.nodes;
            edges = data.edges;

        }, error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.responseText);
            console.log(thrownError);
        }
    });

    // instantiate d3plus
    var visualization = d3plus.viz()
        .container("#viz")  // container DIV to hold the visualization
        .type("network")    // visualization type
        .data(nodes)  // dataset to attach to nodes
        .edges(edges) // list of node connections
        .edges({"arrows": true}, {"color": "#575757"})
        .nodes(nodes)
        .tooltip(["incoming", "outgoing", "criticality"])
        .title({"position":"top", "value":"Interface Vision"})
        .size(1)
        .shape({"rendering":"geometricPrecision"})
        .color("hex")
        .id("name")         // key for which our data is unique on
        .draw()             // finally, draw the visualization!

});