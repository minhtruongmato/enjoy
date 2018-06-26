var csrf_hash = $("input[name='csrf_myielts_token']").val();
switch(window.location.origin){
    case 'http://myielts.vn':
        var HOSTNAME = 'http://enjoy.vn/';
        break;
    default:
        var HOSTNAME = 'http://localhost/enjoy/';
}
switch(window.location.origin){
    case 'http://enjoy.com':
        var HOSTNAMEADMIN = 'http://enjoy.com/admin';
        break;
    default:
        var HOSTNAMEADMIN = 'http://localhost/enjoy/admin';
} 
$("#nav-product #submit-shared").css("display","none");
$("#nav-product li#content-home").css("float","left");
$("#content-home").css("display","none");
$("#go-back").css("display","inline");
$("#nav-product li#add-date").css("float","right");
$("#nav-product li#add-date").click(function(){
	$.validator.setDefaults({
		ignore: ":hidden:not('input')"
	});
	$('#register-form').validate({
		errorElement: 'span',
		errorClass: 'help-block',
		highlight: function(element, errorClass, validClass) {
			$(element).addClass("input-error");
			$(element).closest('.col-xs-12').addClass("has-errors");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).closest('.col-xs-12').removeClass("has-errors");
			$(element).removeClass("input-error");
		},
		rules: {
			title_cn: {
				required: true
			},
			title_sc: {
				required: true
			},
			title_en: {
				required: true
			},
			parent_id_shared: {
				required: true
			}
		}, 
		messages: {
			title_cn: {
				required: "標題字段是必需的。"
			},
			title_sc: {
				required: "标题字段是必需的。"
			},
			title_en: {
				required: "Title field is required."
			},
			parent_id_shared: {
				required: "Please select the parent category."
			}
		},

	});
	if ($('#register-form').valid() === false){
		console.log($(".col-xs-12.has-errors input").length);
		console.log($("#home ul.language .active a").attr("aria-controls"));
		console.log($(".col-xs-12.has-errors input")[0].id.indexOf($("#home ul.language .active a").attr("aria-controls")));
		if($(".col-xs-12.has-errors input").length >0 && $(".col-xs-12.has-errors input")[0].id.indexOf($("#home ul.language .active a").attr("aria-controls")) == "-1"){
			$("#home ul.language .active a").attr("aria-expanded","false");
			$("#"+$("#home ul.language .active a").attr("aria-controls")).removeClass('active');
			console.log($("#home ul.language .active a").attr("aria-controls"));
			if($("#home ul.language .active a").attr("aria-controls") == "en"){
				if($("#title_cn").val() == ''){
					$("#home ul.language .active").removeClass('active');
					$("a[aria-controls=cn]").parent().addClass("active");
					$("#home ul.language .active a").attr("aria-expanded","true");
					$("#cn").addClass('active');
				}else if($("#title_sc").val() == ''){
					$("#home ul.language .active").removeClass('active');
					$("a[aria-controls=sc]").parent().addClass("active");
					$("#home ul.language .active a").attr("aria-expanded","true");
					$("#sc").addClass('active');
				}
			}else if($("#home ul.language .active a").attr("aria-controls") == "cn"){
				console.log(1);
				if($("#title_en").val() == ''){
					$("#home ul.language .active").removeClass('active');
					$("a[aria-controls=en]").parent().addClass("active");
					$("#home ul.language .active a").attr("aria-expanded","true");
					$("#en").addClass('active');
				}else if($("#title_sc").val() == ''){
					$("#home ul.language .active").removeClass('active');
					$("a[aria-controls=sc]").parent().addClass("active");
					$("#home ul.language .active a").attr("aria-expanded","true");
					$("#sc").addClass('active');
				}
			}else if($("#home ul.language .active a").attr("aria-controls") == "sc"){
				if($("#title_en").val() == ''){
					$("#home ul.language .active").removeClass('active');
					$("a[aria-controls=en]").parent().addClass("active");
					$("#home ul.language .active a").attr("aria-expanded","true");
					$("#en").addClass('active');
				}else if($("#title_cn").val() == ''){
					$("#home ul.language .active").removeClass('active');
					$("a[aria-controls=cn]").parent().addClass("active");
					$("#home ul.language .active a").attr("aria-expanded","true");
					$("#cn").addClass('active');
				}
			}
		}
		if($("select[name=parent_id_shared]").parent().attr("class") == "col-xs-12 has-errors"){
			$("select[name=parent_id_shared]")[0].focus();
		}else{
			$(".col-xs-12.has-errors input")[0].focus();
		}
		return false;
	}else{
        $("#nav-product li").css("display","inline");
		$("#go-back").css("display","none");
        if($(this)[0].id == "add-date"){
            $(this).css("display","none");
            $("#nav-product #submit-shared").css("display","inline");
        }
        $("#nav-product li#content-home").css("float","left");
        $("#nav-product #submit-shared").css("float","right");
        
	}
});
/*$("#nav-product li#content-home").click(function(){
	$('#register-form').validate({
		errorElement: 'span',
		errorClass: 'help-block',
		highlight: function(element, errorClass, validClass) {
			$(element).closest('.col-xs-12').addClass("has-errors");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).closest('.col-xs-12').removeClass("has-errors");
		}
	});
	$('[name^=title_date_]').each(function(e) {
		if($(this)[0].name.indexOf("vi") != "-1"){
			messages = "Tiêu đề không được trống.";
		}else{
			messages = "Title field is required.";
		}
		$("[name="+$(this)[0].name+"]").rules('add', {
			required: true,
			messages: {
				required:messages
			}
		})
	});
	$("[name=number]").rules('add', {
		required: true,
		number: true
	});
	if ($('#register-form').valid() === false){
		if($("#numberdate").val() == "" || $("#numberdate").val() == 0){
			$("#numberdate").focus();
		}else{
			$(".col-xs-12.has-errors input")[0].focus();
		}
		return false;
	}
	$("#content-home").css("display","none");
    $("#nav-product #submit-shared").css("display","none");
	$("#go-back").css("display","inline");
    $("#nav-product #add-date").css("display","inline");
});*/
$("#submit-shared,#content-home").click(function(event) {
	$.validator.addMethod("number", function(value, element) {
		return this.optional(element) || ($(".title-content-date.date").length>0);
	}, "Bạn phải nhập số và lớn hơn 0.");
	$.validator.addMethod("vehicles", function(value, element) {
		return this.optional(element) || (value>0);
	}, "Bạn phải chọn phương tiện.");
	$.validator.setDefaults({
		ignore: ":hidden:not('input')"
	});
	$('#register-form').validate({
		highlight: function(element, errorClass, validClass) {
			$(element).closest('.col-xs-12').addClass("has-errors");
			$(element).addClass("input-error");
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).closest('.col-xs-12').removeClass("has-errors");
			$(element).removeClass("input-error");
		}
	});
	$('[name^=title_date_]').each(function(e) {
		if($(this)[0].name.indexOf("en") != "-1"){
			messages = "Title field is required.";
		}else if($(this)[0].name.indexOf("cn") != "-1"){
			messages = "标题字段是必需的。";
		}else{
			messages = "標題字段是必需的。";
		}
		$("[name="+$(this)[0].name+"]").rules('add', {
			required: true,
			messages: {
				required:messages
			}
		})
	});
	$('[name^=vehicles_]').each(function(e) {
		$("[name="+$(this)[0].name+"]").rules('add', {
			vehicles: true
		})
	});
	if($("#content-full-date .title-content-date.date").length>0){
		$("[name=number]").rules('add', {
			required: true,
			number: true,
			messages: {
				required:'Bạn phải nhập số ngày của tour này.'
			}
		});
	}
	if ($('#register-form').valid() === false){
		if($($(".col-xs-12.has-errors")[0]).parents("[id^=showdatecontent_]").length >0){
			var active = $($(".col-xs-12.has-errors")[0]).parents("[id^=showdatecontent_]")[0].id;
			$("#"+active).attr({"class":"collapse in","aria-expanded":"true"});
			$("#"+active).parent().prev().attr("aria-expanded","true").removeClass('collapsed');
			subStringLast = $("#"+active+" ul.language .active a").attr("aria-controls").substring(0, $("#"+active+" ul.language .active a").attr("aria-controls").length - 1);
			if($(".col-xs-12.has-errors input[name^=title_date_]")[0].id.indexOf(subStringLast) == "-1" && $("#numberdate").val() >0 && $("#numberdate").val() != "" && $($("#"+active+" [name^=vehicles_]")[0]).val() != 0){
				$("#"+active+" ul.language .active a").attr("aria-expanded","false");
				$("#"+$("#"+active+" ul.language .active a").attr("aria-controls")).removeClass('active');
				$("#"+active+" ul.language .active").removeClass('active');
				$("a[aria-controls="+$($(".col-xs-12.has-errors")[0]).parent()[0].id+"]").parent().addClass("active");
				$("#"+active+" ul.language .active").attr("aria-expanded","true");
				$("#"+$($(".col-xs-12.has-errors")[0]).parent()[0].id).addClass('active');
			}
		}
		if($("#numberdate").val() == "" || $("#numberdate").val() == 0){
			$("#numberdate").focus();
		}else if($($("#"+active+" [name^=vehicles_]")[0]).val() == 0){
				$($("#"+active+" [name^=vehicles_]")[0]).focus();
		}else{
			$(".col-xs-12.has-errors input[name^=title_date_]")[0].focus();
		}
		return false;
	}else{
		if($(this)[0].id != "submit-shared"){
			if($("#content-full-date .title-content-date.date").length == 0){
				$("#numberdate").val("");
			}else{
				$("#numberdate").val($("#content-full-date .title-content-date.date").length);
			}
			$("#content-home").css("display","none");
		    $("#nav-product #submit-shared").css("display","none");
			$("#go-back").css("display","inline");
		    $("#nav-product #add-date").css("display","inline");
			return true;
		}else{
			if($(".title-content-date.date").length<=0){
				alert("Vui lòng tạo ra một ngày của tour");
				return false;
			}
			if(window.location.pathname.indexOf("/product/edit/") != '-1'){
				var url = window.location.href;
			}else{
				var url = HOSTNAME + 'admin/product/create';
			}

			if ($('#is_top').is(':checked')) {
				var is_top = 1;
			}else{
				var is_top = 0;
			}
			var post = new FormData();
			numberdates = $(".title-content-date.date").length;
			for (var k = 0; k < numberdates; k++) {
				if(document.getElementById("img_date_"+k).files.length == 0){
					post.append('dateimg[]',k);
				}else{
					post.append('dateimg[]',document.getElementById("img_date_"+k).files[0]);
				}
				post.append('vehicles[]',$('#vehicles_'+k).val());
				post.append('librarylocaltion[]',$('#go-place_'+k).val());
				post.append('datetitle_en[]',$('#title_date_en_'+k).val());
				post.append('datetitle_cn[]',$('#title_date_cn_'+k).val());
				post.append('datetitle_sc[]',$('#title_date_sc_'+k).val());
				post.append('datecontent_en[]',tinymce.get("content_date_en_"+k).getContent());
				post.append('datecontent_cn[]',tinymce.get("content_date_cn_"+k).getContent());
				post.append('datecontent_sc[]',tinymce.get("content_date_sc_"+k).getContent());
			}
			post.append('price',$('#price').val());
			post.append('is_top',is_top);
			post.append('date',$('#datepicker').val());
			post.append('priceadults',$('#priceadults').val());
			post.append('pricechildren',$('#pricechildren').val());
			post.append('priceinfants',$('#priceinfants').val());
			post.append('percen',$('#percen').val());
			post.append('localtion',$('#localtion').val());
			post.append('image_shared',document.getElementById("image_shared").files[0]);
			post.append('image_localtion',document.getElementById("image_localtion").files[0]);
			post.append('number',($(".title-content-date.date [name^=title_date_]").length));
			post.append('title_en',$('#title_en').val());
			post.append('title_cn',$('#title_cn').val());
			post.append('title_sc',$('#title_sc').val());
			post.append('metakeywords_en',$('#metakeywords_en').val());
			post.append('metakeywords_cn',$('#metakeywords_cn').val());
			post.append('metakeywords_sc',$('#metakeywords_sc').val());
			post.append('metadescription_en',$('#metadescription_en').val());
			post.append('metadescription_cn',$('#metadescription_cn').val());
			post.append('metadescription_sc',$('#metadescription_sc').val());
			post.append('slug_shared',$('#slug_shared').val());
			post.append('parent_id_shared',$('#parent_id_shared').val());
			post.append('description_en',$('#description_en').val());
			post.append('description_cn',$('#description_cn').val());
			post.append('description_sc',$('#description_sc').val());
			post.append('content_en',tinymce.get("content_en").getContent());
			post.append('content_cn',tinymce.get("content_cn").getContent());
			post.append('content_sc',tinymce.get("content_sc").getContent());
			post.append('tripnodes_en',tinymce.get("tripnodes_en").getContent());
			post.append('tripnodes_cn',tinymce.get("tripnodes_cn").getContent());
			post.append('tripnodes_sc',tinymce.get("tripnodes_sc").getContent());
			post.append('detailsprice_en',tinymce.get("detailsprice_en").getContent());
			post.append('detailsprice_cn',tinymce.get("detailsprice_cn").getContent());
			post.append('detailsprice_sc',tinymce.get("detailsprice_sc").getContent());
			post.append('csrf_myielts_token',csrf_hash);
			$.ajax({
				method: "post",
				url: url,
				data: post,
				contentType: false,
				processData: false,
				success: function(response){
					console.log(response);
					if(response.status == 200){
						csrf_hash = response.reponse.csrf_hash;
						if (response.isExisted == true) {
							alert(response.message);
							window.location.href=HOSTNAMEADMIN+"/product";
						}
					}
				},
				error: function(jqXHR, exception){
					alert(jqXHR.responseJSON.message);
					console.log(errorHandle(jqXHR, exception));
					location.reload();
				}
			});
		}
	}
});
$("#button-numberdate,#append-date").click(function(){
	numberdates = $(".title-content-date.showdate.en .title-content-date.date").length;
	if($(this).attr("id") == 'append-date'){
		$("#numberdate").val($("#content-full-date .title-content-date.date").length+1);
	}
	var numberdate = Number($("#numberdate").val());
	if(numberdate == 'NaN' || numberdate == 0){
		alert("Bạn phải nhập số và lớn hơn 0");
		$("#numberdate").val(numberdates);
		return false;
	}
	var url = HOSTNAMEADMIN + '/product/ajax_form/'+numberdate+'/'+$("#content-full-date .title-content-date").length/2;
	$.ajax({
		method: "get",
		url: url,
		success: function(response){
			$("label[id^=title_]").remove();
			$(document).ready(function(){
				"use strict";
				tinymce.init({
					selector: ".tinymce-area",
					theme: "modern",
					block_formats: 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3',
					height: 300,
					relative_urls: false,
					remove_script_host: false,
					forced_root_block : false,
					plugins: [
					"advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
					"searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
					"save table contextmenu directionality emoticons template paste textcolor responsivefilemanager"
					],
					toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | responsivefilemanager | print preview media fullpage | forecolor backcolor emoticons",
					style_formats: [
					{title: "Bold text", inline: "b"},
					{title: "Red text", inline: "span", styles: {color: "#ff0000"}},
					{title: "Red header", block: "h1", styles: {color: "#ff0000"}},
					{title: "Example 1", inline: "span", classes: "example1"},
					{title: "Example 2", inline: "span", classes: "example2"},
					{title: "Table styles"},
					{title: "Table row 1", selector: "tr", classes: "tablerow1"}
					],
					external_filemanager_path: HOSTNAME + "filemanager/",
					filemanager_title: "Responsive Filemanager",
					external_plugins: {"filemanager": HOSTNAME + "filemanager/plugin.min.js"}
				});
			});
			$("#content-full-date").append(response.reponse);
			for (var i = 0; i <= $("#content-full-date .title-content-date.rm").length; i++) {
				$($("#content-full-date .title-content-date.rm")[i]).removeClass('rm').addClass('date');
			}
			if(numberdate<($("#content-full-date .title-content-date.date").length+$("#content-full-date .title-content-date.rm").length)){
				$($("#content-full-date .title-content-date.rm")).removeClass('rm').addClass('date');
				$(".no_border").prev().css("display","inline");
				for (var i = numberdate; i < $("#content-full-date .title-content-date").length; i++) {
    				$($("#content-full-date .title-content-date.date")[numberdate]).parents(".no_border").prev().fadeOut();
					$($("#content-full-date .title-content-date.date")[numberdate]).removeClass('date').addClass('rm');
				}
			}else{
				$(".no_border").prev().css("display","inline");
				for (var i = 0; i < (numberdate-$("#content-full-date .title-content-date.date").length); i++) {
					console.log($("#content-full-date .title-content-date.rm"));
					$($("#content-full-date .title-content-date.rm")[i]).parents(".no_border").prev().fadeIn();
					$($("#content-full-date .title-content-date.rm")[i]).css("display","block");
					$($("#content-full-date .title-content-date.rm")[i]).removeClass('rm').addClass('date');
				}     
			}
			$("#content-full-date .title-content-date.date").css("display","block");
			$("#content-full-date .title-content-date.rm").css("display","none");
			$(".title-content-date.showdate .btn-margin span.remove").remove();
			if(numberdate >1){     
				$($(".title-content-date.showdate .btn-margin")[numberdate-1]).append("<span class='col-xs-1 remove' style='float:right;padding:0px;z-index:9999;' onclick='removeDate();'><i class='glyphicon glyphicon-remove'></i></span>");
			}
   	 		$('.select2').select2();
		 	$(document).off("change","[id^=paren-go-place_]").on("change","[id^=paren-go-place_]",function(){
		 		var stt = $($(this)[0])[0].dataset.idlocaltion;
		 		var url = HOSTNAMEADMIN + '/product/ajax_area_selected';
		        $.ajax({
		            method: "post",
		            url: url,
		            data: {
		                area : $($(this)[0]).val(), csrf_myielts_token : csrf_hash
		            },
		            success: function(response){
		            	console.log(response)
		                csrf_hash = response.reponse.csrf_hash;
		                if(response.status == 200 && response.isExisted == true){
		                    $("input[name='csrf_myielts_token']").val(csrf_hash);
		                    $("#go-place_"+stt).html(response.reponse.content);
		                }
		            },
		            error: function(jqXHR, exception){
		                console.log(errorHandle(jqXHR, exception));
		                location.reload();
		            }
		        });	
			});

		},
		error: function(jqXHR, exception){
			console.log(errorHandle(jqXHR, exception));
		}
	});
});

$('#is_top').change(function(){
	if($(this).is(':checked')){
		var url = $(this).data('url');
		var id = $(this).data('id');
		console.log(id);
		$.ajax({
            method: "get",
            url: url,
            data: {
            	id : id
            },
            success: function(response){
                if(response.isExisted == false){
                	$('.check_top_error').text(response.message);
                	$('#is_top').prop('checked',false);
                }
            },
            error: function(jqXHR, exception){
                console.log(errorHandle(jqXHR, exception));
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }
            }
        });
	}
})