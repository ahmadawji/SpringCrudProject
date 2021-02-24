
$(document).ready(function(){
	$(".search").keyup(function(){
	var name=$(this).val();
    $.ajax({
        type: "GET",
        url: "viewUserByName",
        data: {fname: name},
        async: true,
        success: function(result){
         $("#Users tbody").html("")
             $.each(result, function(index, data){            $("#Users").append("<tr><td>"+data.username+"</td>" +
             	"<td>"+data.fname+"</td>" +
             	"<td>"+data.lname+"</td>" +
             	"<td>"+data.city+"</td>" +
             	"<td>"+data.bdate+"</td>" +
             	"<td>"+data.sex+"</td>" +
             	"<td><a href='edituser/"+data.username+"' class='btn btn-primary'>Edit</a></td>" +
             	"<td><a href='deleteuser/"+data.username+"' class='btn btn-danger'>Delete</a></td>" +
             		"</tr>");
              });
        	console.log(result);
        },
        
        error:function(err){ 	
        	console.log(err);
        }
        
    });
	});

	});
