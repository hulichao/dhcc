$(document).ready(function(){
	var ctx = $("#ctx").val();
	var urlSave = ctx + '/xiaohuli/save';
	
	var $dataBox = $("#dataBox");
	var $name = $dataBox.find("#name");
	var $age = $dataBox.find("#age");
	var $works = $dataBox.find("#works");
	var $num = $dataBox.find("#num");
	var $id = $dataBox.find("#id");
	
	var $btnSave = $dataBox.find("#btnSave");
	var $btnClose = $dataBox.find("#btnClose");
	
	$btnSave.on("click",function(){
		data = {
			"name" : $name.val(),
			"age" : $age.val(),
			"works" : $works.val(),
			"num" : $num.val(),
			"id" : $id.val()
		};
		
		console.log(data);
		
		$.post(urlSave,data,function(data){
			if(data.result == "success"){
				$name.val(null);
				$age.val(null);
				$works.val(null);
				$num.val(null);
				$("#showModal").modal("hide");
			}
		},"json");
	});
	
	$btnClose.on("click",function(){
		$("#showModal").modal("hide");
	});
});
