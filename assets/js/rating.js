$(function () {
	$('#rateit_star').rateit({min: 0, max: 5, step: 0.5});
	$('#rateit_star').bind('rated', function (e) {
		var ri = $(this);
		var value = ri.rateit('value');
		var productID = ri.data('productid');
		$('#re_rateit').val(value);
    	// ri.rateit('readonly', true);
	});
});
var language = $("#language").val();
var ratings = {
        thank:{cn:'感謝您的評論！', sc:'感谢您的评论！', en:'Thanks for your review!'},
        thank_you:{cn:'您已經對此產品進行了評分，您無法添加它。謝謝！', sc:'您已经对此产品进行了评分，您无法添加它。谢谢！', en:'You have already rated this product, you can not add it. Thank you!'},
        please:{cn:'請進入這所學校', sc:'请进入这所学校', en:'Please enter this school'},
        code_error:{cn:'代碼不正確，請再次檢查', sc:'代码不正确，请再次检查', en:'Incorrect code, please check again'},
    };
$(document).ready(function(){
    var url_captcha = $('.created_captcha').val();
    var url_rating = $('.created_rating').val();
	var word = '';
	$(window).each(function() {
        jQuery.ajax({
            type: "get",
            url: url_captcha,
            success: function(res) {
	            if (res.captcha){
	                jQuery("div.image").html(res.captcha.image);
	                word = res.captcha.word;
	            }
            }
        });
    });
    $(".refresh").click(function() {
    	$('.btn-rating').prop('disabled', true);
        jQuery.ajax({
            type: "get",
            url: url_captcha,
            success: function(res) {
	            if (res.captcha){
	                jQuery("div.image").html(res.captcha.image);
	                word = res.captcha.word;
	            }
            }
        });
    });
    $('#captcha').change(function(){
    	console.log(word);
    })
    $('.btn-rating').click(function(){
    	var product_id = $('.product_id').val();
    	if($('#re_rateit').val() != ''){
    		var rating = $('#re_rateit').val();
    	}else{
    		rating = 0
    	}
    	if($('#captcha').val() == word){
    		jQuery.ajax({
    			type: "get",
    			url: url_rating,
    			data: {
    				product_id : product_id, rating : rating
    			},
    			success: function(res) {
    				if(res.isExits == true){
    					alert(ratings.thank[language]);
    					window.location.reload(true);
    				}else{
    					alert(ratings.thank_you[language]);
    				}
    			}
    		});
    	}else{
    		if($('#captcha').val() == ''){
    			$('.message').text(ratings.please[language]);
    		}else{
    			$('.message').text(ratings.code_error[language]);
    		}
    	}
    	
    })
});