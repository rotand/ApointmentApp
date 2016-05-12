$(document).ready(function () {

	////плавный Якорь
	//$("#menu").on("click", "a", function (event) {
	//	//отменяем стандартную обработку нажатия по ссылке
    //
	//	event.preventDefault();
    //
	//	//забираем идентификатор бока с атрибута href
	//	var id = $(this).attr('href'),
    //
	//		//узнаем высоту от начала страницы до блока на который ссылается якорь
	//		top = $(id).offset().top;
    //
	//	//анимируем переход на расстояние - top за 1500 мс
	//	$('body,html').animate({
	//		scrollTop: top
	//	}, 1500);
	//});

	$("#info-service2").hide();
	$("#info-service3").hide();
	$("#info-service4").hide();

	$("#overrlay-open1").click(function () {
		$("#info-service1").show();
		$("#info-service2").hide();
		$("#info-service3").hide();
		$("#info-service4").hide();
	});
	$("#overrlay-open2").click(function () {
		$("#info-service1").hide();
		$("#info-service2").show();
		$("#info-service3").hide();
		$("#info-service4").hide();
	});
	$("#overrlay-open3").click(function () {
		$("#info-service1").hide();
		$("#info-service2").hide();
		$("#info-service3").show();
		$("#info-service4").hide();
	});
	$("#overrlay-open4").click(function () {
		$("#info-service1").hide();
		$("#info-service2").hide();
		$("#info-service3").hide();
		$("#info-service4").show();
	});
//Modal-login-reg
		$(".form-reg").hide();
		$(".form-log").hide();
	$(".choose-login").click(function () {
			$(".form-reg").hide();
		$(".form-log").show();
	});
		$(".choose-register").click(function () {
			$(".form-reg").show();
		$(".form-log").hide();
	});
	//-----klic to show apointment in calendar
		$("#make-apoint").click(function () {
			$(".in-table").fadeToggle("fast");
		
	});

	$('.wr-img').hover(function () {

			$(this).find('.img-overlay').toggle(100);
		})
		//Eakori
	var options = {
		offset: 90
	}
	var header = new Headhesive('.menu-header', options);
	//Modal-animate

	$(".demo01").animatedModal({
		animatedIn: 'zoomIn',
		animatedOut: 'bounceOut',

		color: 'rgba(178, 223, 219, 0.92)',
		// Callbacks
		beforeOpen: function () {
			console.log("The animation was called");
		},
		afterOpen: function () {
			console.log("The animation is completed");
		},
		beforeClose: function () {
			console.log("The animation was called");
		},
		afterClose: function () {
			console.log("The animation is completed");
		}
	});

	//second Modal----Login
// Get the modal
	
var modal = document.getElementById('login-modal');

// Get the button that opens the modal
var btn = document.getElementById("login");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


	//second Modal----Login
// Get the modal
var modal = document.getElementById('register-modal');

// Get the button that opens the modal
var btn = document.getElementById("register");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
//--------end-modal
	//Drag-and-Drop--------------------



	//gmaps-----------------------
	map = new GMaps({
		div: '#map',
		lat: 47.754838,
		lng: 27.927057
	});
	map.addMarker({

		lat: 47.754838,
		lng: 27.927057,
		title: 'Dental-Stomatology',
		click: function (e) {
			alert('You clicked in this marker');
		}


	});
	map.addMarker({
		lat: 47.750000,
		lng: 27.927057,
		title: 'LAla',
		click: function (e) {
			alert('Second place ');
		}
	});
	//    map.drawRoute({
	//        origin: [47.754838, 27.927057],
	//        destination: [-12.090814532191756, -77.02271108990476],
	//        travelMode: 'driving',
	//        strokeColor: '#131540',
	//        strokeOpacity: 0.9,
	//        strokeWeight: 6
	//    });
	// gmaps-end----------

		$('.bxslider').bxSlider({
		pager: false,
		nextSelector: '#slider-next',
		prevSelector: '#slider-prev',
		nextText: '<i class="fa fa-angle-right fa-fw"></i>',
		prevText: '<i class="fa fa-angle-left fa-fw"></i>'
	});
	
	//close-rotate
	$('.close-animatedModal').hover(function () {
		$('.fa-times').addClass('fa-rotate-180');
	})
	$('.close-animatedModal').mouseleave(function () {
		$('.fa-times').removeClass('fa-rotate-180');
	})
	//-----ather-modal
	$('.close').hover(function () {
		$('.fa-times').addClass('fa-rotate-180');
	})
	$('.close').mouseleave(function () {
		$('.fa-times').removeClass('fa-rotate-180');
	})


});