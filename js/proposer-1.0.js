$(function() {

  $("#PropositionForm input,#PropsitionForm textarea").jqBootstrapValidation({
    preventSubmit: true,
    submitError: function($form, event, errors) {
      // additional error messages or events
    },
    submitSuccess: function($form, event) {
      event.preventDefault(); // prevent default submit behaviour
      // get values from FORM
      var PropTheme = $("input#PropTheme").val();
      var PropQuestion = $("input#PropQuestion").val();
      var PropIndice = $("input#PropIndice").val();
	  var PropReponse = $("input#PropReponse").val();
	  var PropExplication = $("input#PropExplication").val();
	  var PropAuteur = $("input#PropAuteur").val();
      // Check for white space in name for Success/Fail message
      $this = $("#sendPropositionButton");
      $this.prop("disabled", true); // Disable submit button until AJAX call is complete to prevent duplicate messages
      $.ajax({
        url: "././modele/proposer.php",
        type: "POST",
        data: {
          PropTheme: PropTheme,
          PropQuestion: PropQuestion,
          PropIndice: PropIndice,
          PropReponse: PropReponse,
		  PropExplication: PropExplication,
		  PropAuteur: PropAuteur  
        },
        cache: false,
        success: function() {
          // Success message
          $('#success').html("<div class='alert alert-success'>");
          $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
            .append("</button>");
          $('#success > .alert-success')
            .append("<strong>Merci ! Ta proposition va être étudiée attentivement par la team déconnaissance</strong>");
          $('#success > .alert-success')
            .append('</div>');
          //clear all fields
          $('#PropositionForm').trigger("reset");
        },
        error: function() {
          // Fail message
          $('#success').html("<div class='alert alert-danger'>");
          $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
            .append("</button>");
          $('#success > .alert-danger').append($("<strong>").text("Mince, il semble qu'il y ait un problème. Merci d'essayer plus tard !"));
          $('#success > .alert-danger').append('</div>');
          //clear all fields
          $('#contactForm').trigger("reset");
        },
        complete: function() {
          setTimeout(function() {
            $this.prop("disabled", false); // Re-enable submit button when AJAX call is complete
          }, 1000);
        }
      });
    },
    filter: function() {
      return $(this).is(":visible");
    },
  });

  $("a[data-toggle=\"tab\"]").click(function(e) {
    e.preventDefault();
    $(this).tab("show");
  });
});

/*When clicking on Full hide fail/success boxes */
$('#PropTheme').focus(function() {
  $('#success').html('');
});
