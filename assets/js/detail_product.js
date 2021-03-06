if($('#count-comment').val() > 5){
	$('#comment_readmore').css('display', 'block');
}
switch(window.location.origin){
    case 'http://enjoyvietnam.tours':
        var HOSTNAME = 'http://enjoyvietnam.tours/';
        break;
    default:
        var HOSTNAME = 'http://localhost/enjoy/';
}
var language = $("#language").val();
var required_comment = {
		required_name:{cn:'名字和姓氏', sc:'名字和姓氏', en:'First and last name'},
		required_email:{cn:'請輸入電子郵件！', sc:'请输入电子邮件！', en:'Please enter email!'},
		required_content:{cn:'請輸入評論。', sc:'请输入评论。', en:'Please enter comment.'},
		required_format_email:{cn:'電子郵件格式無效，請再次檢查！', sc:'电子邮件格式无效，请再次检查！', en:'Invalid email format, Please check again!'},
	};
$('.submit-comment').click(function(e){
	e.preventDefault();
	var name = $('#name').val();
	var email = $('#email').val();
	var content = $('#content').val();
	var product_id = $('#product_id').val();
	var comment_type = $('#comment_type').val();
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(name.length == 0){
		$('.name_error').text(required_comment.required_name[language]);
	}else{
		$('.name_error').text('');
	}

	if(email.length == 0){
		$('.email_error').text(required_comment.required_email[language]);
	}
	else{
		$('.email_error').text('');
	}

	if(content.length == 0){
		$('.content_error').text(required_comment.required_content[language]);
	}
	else{
		$('.content_error').text('');
	}
	if(name.length != 0 && email.length != 0 && content.length != 0){

		if(filter.test(email)){
			$('.submit-comment').attr('disabled','disabled');
			$('.cmt_error').hide();
			jQuery.ajax({
				type: "get",
	                // url: "http://localhost/tourist1/comment/create_comment",
	                url: HOSTNAME+"comment/create_comment",
	                data: {name : name, email : email, content : content, product_id : product_id,comment_type : comment_type},
	                success: function(result){
	                	if ($('#count-comment').val() != 0) {
	                		$('#comment > .show-comment > .cmt:first-child').before(JSON.parse(result).comment);
	                	}else{
	                		$('#comment > .cmt:first-child').before(JSON.parse(result).comment);
	                	}
	                	
	                	$('#name').val('');
	                	$('#email').val('');
	                	$('#content').val('');
	                	$('.submit-comment').removeAttr('disabled');
	                }
	            })
		}else{
			$('.email_error').text(required_comment.required_format_email[language]);
		}

	}

	return false;
});


	// see more comment
	var page = 1;
	$('#comment_readmore').click(function () {
		var product_id = $('#product_id').val();
		var type = $('#comment_type').val();
		page ++;
		jQuery.ajax({
			type: "get",
            // url: "http://localhost/tuoithantien/comment/see_more_comment",
            url: HOSTNAME+"/comment/see_more_comment",
            data: {page : page, product_id : product_id, type : type},
            success: function(result){
            	console.log(result);
            	comment = result.comment;
            	// var html = '';
            	$.each(comment, function(key, value) {
            		html = '<div class="media cmt">'
            		+ '<div class="media-left">'
            		+ '<img class="media-object" src="' + HOSTNAME+'assets/img/comment_ava.png" alt="Comment Avatar" width="64">'
            		+ '</div>'
            		+ '<div class="media-body">'
            		+ '<h3 class="media-heading" style="color: #f4aa1c">'+ value.name +':</h3>'
            		+ '<span>'+ value.content +'</span>'
            		+ '<span style="float: right; font-size: 1em">'+ value.created_at +'</span>'
            		+ '</div>'
            		+ '</div>';
            		$('.show-comment').append(html);
            	});
            	
            	
            	if(result.stop >= page){
            		$('#comment_readmore').fadeOut();
            	}
            }
        })
	});