$(document).ready(function(){
				var ctx = $("#ctx").val();
				var urlGetData = ctx + '/core/data';
				var urlAdd = ctx + '/core/add';
				var urlDel = ctx + '/core/del';
				
				var $btnAdd = $("#btnAdd");
				var $btnDel = $("#btnDela");
				var $btnUpdate = $("#btnUpdate");
				
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
				
				//模态框关闭事件
				$('#showModal').on('hidden.bs.modal', function () {
					mmg.load();
					/*
					 * 将之前的加载的数据清除
					 * 基于 Bootstrap v2: $(this).removeData("modal");  
					 * Bootstrape v3: $(this).removeData("bs.modal"); 
					 * 
					 */
					
					$(this).removeData("bs.modal"); 
				});

                	 var cols = [
                	             { title:'id', name:'id' ,hidden:true  },
                                 { title:'姓名1', name:'name' ,width:100, sortable: true, align:'center'  },
                                 { title:'年龄1', name:'age' ,width:100, sortable: true, align:'center'  },
                                 { title:'职位1', name:'jobs' ,width:100, sortable: true, align:'center'  },
                                 { title:'住址1', name:'address' ,width:100, sortable: true, align:'center'  }
                             ];
                	
                	var mmg = $('.mmg').mmGrid({
                        height: 400
                        , cols: cols
                        , url: urlGetData
                        , method: 'get'
                        , remoteSort:true
//                        , items: items
                        , sortName: 'SECUCODE'
                        , sortStatus: 'asc'
                        , multiSelect: false
                        , checkCol: false
                        , fullWidthRows: true
                        , autoLoad: false
                        , plugins: [
                            $('#pg').mmPaginator({})
                        ]
                        , params: {"id":"hello world!core"}
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
                            alert(JSON.stringify(item));
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

});
