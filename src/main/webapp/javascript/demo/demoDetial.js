$(document).ready(function(){
	var ctx = $("#ctx").val();
	var urlSave = ctx + '/demo/save';
	
	var $dataBox = $("#dataBox");
	var $name = $dataBox.find("#name");
	var $age = $dataBox.find("#age");
	var $jobs = $dataBox.find("#jobs");
	var $address = $dataBox.find("#address");
	var $id = $dataBox.find("#id");
	
	var $btnSave = $dataBox.find("#btnSave");
	var $btnClose = $dataBox.find("#btnClose");
	
	$btnSave.on("click",function(){
		data = {
			"name" : $name.val(),
			"age" : $age.val(),
			"jobs" : $jobs.val(),
			"address" : $address.val(),
			"id" : $id.val()
		};
		
		console.log(data);
		
		$.post(urlSave,data,function(data){
			if(data.result == "success"){
				$name.val(null);
				$age.val(null);
				$jobs.val(null);
				$address.val(null);
				$("#showModal").modal("hide");
			}
		},"json");
	});
	
	$btnClose.on("click",function(){
		$("#showModal").modal("hide");
	});
});
