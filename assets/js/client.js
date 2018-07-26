var csrf_hash = $("input[name='csrf_myielts_token']").val();
$("#inquire input,#customize input,#inquire #inquire_title,#customize #customize_title,#inquire textarea,#customize textarea").change(function(event) {
	name = $(this).attr("name");
	targetTab = "#inquire";
	if($(this).closest('.tab-pane').attr('id') == "inquire"){
		targetTab = "#customize";
	}
	$(targetTab + " [name="+name+"]").val($(this).val());
});
var language = $("#language").val();
var inquire_required = {
		inquire_email:{en:'Please enter Email.',cn:'請輸入電子郵件地址',sc:'请输入电子邮件地址'},
		inquire_email_confirm:{en:'The Confirmation Email must match your Email Address.',cn:'請輸入確認電子郵箱地址',sc:'请输入确认电子邮箱地址'},
		inquire_first_name:{en:'Please enter first name.',cn:'請輸入名字',sc:'请输入名字'},
		inquire_last_name:{en:'Please enter last name.',cn:'請輸入姓',sc:'请输入姓'},
		inquire_phone_number:{en:'Please enter your phone number.',cn:'請輸入電話號碼',sc:'请输入电话号码'},
		datepicker:{en:'Please enter preferred departure date.',cn:'請輸入首選出發日期',sc:'请输入首选出发日期'},
		inquire_country:{en:'Please enter Country.',cn:'請輸入国家',sc:'请输入国家'},
		inquire_number_adults:{en:'Please enter Adults.',cn:'請輸入成人',sc:'请输入成人'},
		inquire_number_children_u11:{en:'Please enter Children (2-11 years old).',cn:'請輸入2至11歲的兒童',sc:'请输入2至11岁的儿童'},
		inquire_number_children_u2:{en:'Please enter Children (Under 2 years old).',cn:'請輸入2歲以下的兒童',sc:'请输入2岁以下的儿童'}
	};
console.log(inquire_required.inquire_email[language]);
$(document).off("click","#bookingsubmit,#customizesubmit").on("click","#bookingsubmit,#customizesubmit",function(){
	var idForm = $(this).parents('form')[0].id;
	$('#'+idForm).validate({
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
			inquire_email: {
				required: true
			},
			inquire_first_name: {
				required: true
			},
			inquire_last_name: {
				required: true
			},
			inquire_email_confirm: {
				required: true
			},
			inquire_phone_number: {
				required: true
			},
			datepicker: {
				required: true
			},
			inquire_country: {
				required: true
			},
			inquire_number_adults: {
				required: true
			},
			inquire_number_children_u11: {
				required: true
			},
			inquire_number_children_u2: {
				required: true
			}
		}, 
		messages: {
			inquire_email: {
				required: inquire_required.inquire_email[language]
			},
			inquire_first_name: {
				required: inquire_required.inquire_first_name[language]
			},
			inquire_last_name: {
				required: inquire_required.inquire_last_name[language]
			},
			inquire_email_confirm: {
				required: inquire_required.inquire_email_confirm[language]
			},
			inquire_phone_number: {
				required: inquire_required.inquire_phone_number[language]
			},
			datepicker: {
				required: inquire_required.datepicker[language]
			},
			inquire_country: {
				required: inquire_required.inquire_country[language]
			},
			inquire_number_adults: {
				required: inquire_required.inquire_number_adults[language]
			},
			inquire_number_children_u11: {
				required: inquire_required.inquire_number_children_u11[language]
			},
			inquire_number_children_u2: {
				required: inquire_required.inquire_number_children_u2[language]
			}
		},

	});
	var content = [];
	if($("#"+idForm+" [name^=tour_change]").length > 0 && idForm == 'form-customize'){
		$("#"+idForm+" [name^=tour_change]").each(function(key,value){
			content[key] = $(value).val();
		});
	}
	if($("#"+idForm).valid() === true){
		if(idForm == 'form-customize'){
			url = HOSTNAME+"customize";

		}else{
			url = HOSTNAME+"booking";
		}
        $.ajax({
            method: "post",
            url: url,
            data: {
                title : $("#"+idForm+" [name=inquire_title]").val(),
                product_id : $("[name=product_id]").val(),
                email : $("#"+idForm+" [name=inquire_email]").val(),
                first_name : $("#"+idForm+" [name=inquire_first_name]").val(),
                last_name : $("#"+idForm+" [name=inquire_last_name]").val(),
                email_confirm : $("#"+idForm+" [name=inquire_email_confirm]").val(),
                phone : $("#"+idForm+" [name=inquire_phone_number]").val(),
                time : $("#"+idForm+" [name=datepicker]").val(),
                country : $("#"+idForm+" [name=inquire_country]").val(),
                adults : $("#"+idForm+" [name=inquire_number_adults]").val(),
                children : $("#"+idForm+" [name=inquire_number_children_u11]").val(),
                infants : $("#"+idForm+" [name=inquire_number_children_u2]").val(),
                message : $("#"+idForm+" [name=inquire_message]").val(),
                content : content,
                csrf_myielts_token : csrf_hash
            },
			success: function(response){
				console.log(response);
				if(response.status == 200){
					csrf_hash = response.reponse.csrf_hash;
					if (response.isExisted == true) {
						alert(response.message);
						location.reload();
					}else{
						alert(response.message);
					}
				}
			},
			error: function(jqXHR, exception){
				location.reload();
			}
        });	
	}else{
		$("#"+idForm+" .col-xs-12.has-errors input[name^=inquire_]")[0].focus();
	}
});