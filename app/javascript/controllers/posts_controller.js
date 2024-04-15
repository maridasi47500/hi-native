$(function(){
$("#my__1truc_form").submit(function(){
	if (!window.formData){
		window.formData=new FormData($("#my__1truc_form")[0]);
	}
	window.formData.append("yeah","yeah");
	window.formData.append("post[language_id]",post_language_id.value);
	window.formData.append("post[content]",post_content.value);
	window.formData.append("post[pic]",post_pic.files[0]);
	window.formData.append("post[info]",post_info.value);
	window.formData.append("post[user_id]",post_user_id.value);
	window.formData.append("post[demande_id]",post_demande_id.value);
$.ajax({type:"POST",url:"/posts.json",
	    processData: false,
	    contentType: false,
	       data: window.formData,
	success:function(data){
		window.location="/posts/"+data.id;
	}
	     });
	return false;
});

});
