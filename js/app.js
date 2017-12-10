$(document).ready(function(){
	$.ajax({
		url: "../modele/get_visites.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var date_visite = [];
			var visites = [];

			for(var i in data) {
				date_visite.push(data[i].date_visite);
				visites.push(data[i].nb_visites);
			}

			var chartdata = {
				labels: date_visite,
				datasets : [
					{
						label: 'Nombre de visites',
						fill: false,
						backgroundColor: 'gb(54, 162, 235)',
						borderColor: 'rgb(54, 162, 235)',
						data: visites
					}
				]
			};

			var ctx = $("#mycanvas");

			var barGraph = new Chart(ctx, {
				type: 'line',
				data: chartdata,
				options: {
					responsive: true,
					title:{
						display:true,
						text:'Nombre de visiteurs uniques'
					},
					tooltips: {
						mode: 'index',
						intersect: false,
					},
					hover: {
						mode: 'nearest',
						intersect: true
					},
					scales: {
						xAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Date'
							}
						}],
						yAxes: [{
							display: true,
							scaleLabel: {
								display: true,
								labelString: 'Visites'
							}
						}]
					}
				}
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});