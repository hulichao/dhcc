$(document).ready(function(){
				var ctx = $("#ctx").val();
				var urlGetData = ctx + '/xiaohuli/data';
				var urlAdd = ctx + '/xiaohuli/add';
				var urlDel = ctx + '/xiaohuli/del';
				//var urlText = ctx + '/xiaohuli/text';
				var urlText = ctx + '/xiaohuli/query';
				
				var $btnAdd = $("#btnAdd");
				var $btnDel = $("#btnDela");
				var $btnUpdate = $("#btnUpdate");
				var $btnSearch = $("#btnSearch");

				$btnAdd.on("click",function(){
					$("#showModal").modal({
		                 remote: urlAdd
		             });
				});
				
				
				$btnDel.on('click',function(){
					var a = mmg.selectedRows();
					console.log(a[0].id);
					$.post(urlDel,a[0],function(data){
						alert("删除成功");
						mmg.load();
					},"json");
				});

               
				$btnUpdate.on("click",function(){
					var a = mmg.selectedRows();
					$("#showModal").modal({
		                 remote: urlAdd + "?id=" + a[0].id
		             });
				});
				
//				$btnSearch.on("click",function(){
//					if($text.val()==null){
//						alert('请输入搜索条件');
//					}
//					
//					alert($text.val());
//					$.post(urlText+"?text="+$text.val(),function(data){
//						console.log(data.items);
//						mmg.load(data.items);
//					});
//				});
//				
//				$btnSearch.on("click",function(){
//					$.get(urlText,{id:$text.val()},function(data){
//						mmg.load(data.items);
//					})
//				});
				
				$btnSearch.on("click",function(){
					var items = mmg.rows();
					alert(items);
					console.log(items);
					for(var i=0;i<items.length;i++){
						console.log(items[i]);
						
					}
				});
				//模态框关闭事件
				$('#showModal').on('hidden.bs.modal', function () {
					mmg.load();
					$(this).removeData("bs.modal");
				});

                	 var cols = [
                	             { title:'id', name:'id' ,hidden:true  },
                                 { title:'姓名', name:'name' ,width:100, sortable: true, align:'center'  },
                                 { title:'年龄', name:'age' ,width:100, sortable: true, align:'center'  },
                                 { title:'职位', name:'works' ,width:100, sortable: true, align:'center'  },
                                 { title:'工号', name:'num' ,width:100, sortable: true, align:'center'  }
                             ];
                	
                	var mmg = $('.mmg').mmGrid({
                        height: 400
                        , cols: cols
                        , url: urlGetData
                        , method: 'get'
                        , remoteSort:true
//                        , items: "${page.list}"
                        , sortName: 'SECUCODE'
                        , sortStatus: 'asc'
                        , multiSelect: false
                        , checkCol: false
                        , fullWidthRows: true
                        , autoLoad: false
                        , plugins: [
//                             '${page.count}','${page.list}'
                        ]
                        , params: {"id":"hello world"}
                	
                    });


                    mmg.on('cellSelected', function(e, item, rowIndex, colIndex){
                        console.log('cellSelected!');
                        console.log(this);
                        console.log(e);
                        console.log(item);
                        console.log(rowIndex);
                        console.log(colIndex);
                        //查看
                        if($(e.target).is('.btn-info, .btnPrice')){
                            e.stopPropagation();  //阻止事件冒泡
                            
                        }else if($(e.target).is('.btn-danger') && confirm('你确定要删除该行记录吗?')){
                            e.stopPropagation(); //阻止事件冒泡
                            mmg.removeRow(rowIndex);
                        }
                    }).on('loadSuccess', function(e, data){
                        //这个事件需要在数据加载之前注册才能触发
                        console.log('loadSuccess!');
                        console.log(data);
                        console.log(mmg.rowsLength());
                    }).on('rowInserted', function(e, item, index){
                        console.log('rowInserted!');
                        console.log(item);
                        console.log(index);
                        console.log(mmg.rowsLength());
                    }).on('rowUpdated', function(e, oldItem, newItem, index){
                        console.log('rowUpdated!');
                        console.log(oldItem);
                        console.log(newItem);
                        console.log(index);
                    }).on('rowRemoved', function(e, item, index){
                        console.log('rowRemoved!');
                        console.log(item);
                        console.log(index);
                        console.log(mmg.rowsLength());
                    }).load();
                    
                    function page(pageNum,pageSizee,elements){
                    	mmg.load();
                    };
                    

});
