function ShowDailog(title,url,success) {
    BootstrapDialog.show({
        title: title,
        type: BootstrapDialog.TYPE_DEFAULT,
        size: BootstrapDialog.SIZE_WIDE,
        cssClass: "fade",
        closeable: true,
        message: function (dialog) {
            var $message = $('<div></div>');
            var pageToLoad = dialog.getData('pageToLoad');
            $message.load(pageToLoad);
            return $message;
        },                 
        data: {
            'pageToLoad': url,
        },
        buttons: [{
            label: '<i class="fa fa-close"></i> 取消',
            action: function (dialog) {
                dialog.close();
            }
        }, {
            label: '<i class="fa fa-check"></i> 确定',
            cssClass: 'btn btn-primary',
            action: function (dialog) {
                success(dialog);
            }
        }]
    });
}

