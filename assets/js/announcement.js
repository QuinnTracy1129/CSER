function clickLike(pid,uid,x){

	var my_div;
	var my_span;
	if(x==1){
		my_div="like_"+pid;
		my_span="like_comment_"+pid;}
	if(x==2){
		my_div="btn_like_"+pid;
		my_span="msg_like_COP_"+pid;}

	var hr = new XMLHttpRequest();
	hr.open("GET", "../REST/announcement.php?action=like&postid="+pid+"&UID="+uid+"&tbl="+x,true);
	hr.setRequestHeader("Content-type", "application/json");
	hr.onreadystatechange=function(){
		if(hr.readyState==4 && hr.status==200){
			var data=JSON.parse(hr.responseText);
				$('#'+my_span).text(data.obj.des);
				if( data.obj.type == 'Unlike')
					$('#'+my_div+' i').removeClass('fa fa-thumbs-o-up').addClass('fa fa-thumbs-o-down');
				else
					$('#'+my_div+' i').removeClass('fa fa-thumbs-o-down').addClass('fa fa-thumbs-o-up');
			 }
			}
	hr.send();
	document.getElementById(my_div).value="requesting...";
}
