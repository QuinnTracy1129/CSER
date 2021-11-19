function checkCommentInputKey(event,msgtextarea,pid,uid,fullname,url) {
	if(event.keyCode == 13 && event.shiftKey == 0)  {
		if ($("#COP_up_"+pid).css('display') == 'none') {$("#COP_up_"+pid).css('display','block');}
		message = $(msgtextarea).val();
		var p_img = $('#my_img').attr('src')
		message = message.replace(/^\s+|\s+$/g,"");
		$(msgtextarea).val('');
		$(msgtextarea).focus();
		if (message != '') {
				$.get("../REST/announcementComment.php?action=put", {PID: pid, message: message, sender: uid} , function(data){
				message = message.replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/\"/g,"&quot;");
				$('#chatlist'+pid).append('<div class="col-sm-12" id="COP_msg_"' + data + '><div class="col-sm-1" style="padding: 10px;"><img src="'+p_img+'" width="50" height="50"></div><div class="col-sm-11" style="font-size:12px;"><div class="col-sm-12" style="margin-top: 10px;" id="coc_' + data + '"><p style="text-transform:capitalize; font-size:13px; color:gray;" >'+fullname+':</p><label style="display: block; word-wrap: break-word;">'+message+'</label></div></div></div>');
				});}
	return false;}}
	
