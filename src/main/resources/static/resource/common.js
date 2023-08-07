function isTouchDevice() {
	return (('ontouchstart' in window) ||
		(navigator.maxTouchPoints > 0) ||
		(navigator.msMaxTouchPoints > 0));
}

const $html = document.querySelector('html');
$html.classList.add(isTouchDevice() ? 'touch-posible' : 'touch-imposible');





function pager_v1() {
	document.querySelector('.slide_center_section .slide_center.img_v1').classList.add('animated');
	document.querySelector('.slide_center_section .slide_center.img_v2').classList.add('animated');
	document.querySelector('.slide_center_section .slide_center.img_v3').classList.add('animated');

	document.querySelector('.slide_center_section .slide_center.img_v2').style.postion = 'reletive'
	document.querySelector('.slide_center_section .slide_center.img_v2').style.zIndex = '-10';
	document.querySelector('.slide_center_section .slide_center.img_v3').style.postion = 'reletive'
	document.querySelector('.slide_center_section .slide_center.img_v3').style.zIndex = '-10';

	document.querySelector('.slide_center_section .slide_center.img_v2').style.left = '-5%';
	document.querySelector('.slide_center_section .slide_center.img_v3').style.left = '-5%';
	document.querySelector('.slide_center_section .slide_center.img_v1').style.left = '30%';
	setTimeout(function() {
		document.querySelector('.slide_center_section .slide_center.img_v1').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v2').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v3').classList.remove('animated');

		document.querySelector('.slide_center_section .slide_center.img_v2').style.left = '100%';
		document.querySelector('.slide_center_section .slide_center.img_v3').style.left = '100%';

		document.querySelector('.slide_center_section .slide_center.img_v2').style.zIndex = '0';
		document.querySelector('.slide_center_section .slide_center.img_v3').style.zIndex = '0';
	}, 1100)

}

function pager_v2() {
	document.querySelector('.slide_center_section .slide_center.img_v1').classList.add('animated');
	document.querySelector('.slide_center_section .slide_center.img_v2').classList.add('animated');
	document.querySelector('.slide_center_section .slide_center.img_v3').classList.add('animated');

	document.querySelector('.slide_center_section .slide_center.img_v1').style.postion = 'reletive'
	document.querySelector('.slide_center_section .slide_center.img_v1').style.zIndex = '-10';
	document.querySelector('.slide_center_section .slide_center.img_v3').style.postion = 'reletive'
	document.querySelector('.slide_center_section .slide_center.img_v3').style.zIndex = '-10';

	document.querySelector('.slide_center_section .slide_center.img_v1').style.left = '-5%';
	document.querySelector('.slide_center_section .slide_center.img_v3').style.left = '-5%';
	document.querySelector('.slide_center_section .slide_center.img_v2').style.left = '30%';
	setTimeout(function() {
		document.querySelector('.slide_center_section .slide_center.img_v1').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v2').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v3').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v1').style.left = '100%';
		document.querySelector('.slide_center_section .slide_center.img_v3').style.left = '100%';

		document.querySelector('.slide_center_section .slide_center.img_v1').style.zIndex = '0';
		document.querySelector('.slide_center_section .slide_center.img_v3').style.zIndex = '0';
	}, 1100)
}

function pager_v3() {
	document.querySelector('.slide_center_section .slide_center.img_v1').classList.add('animated');
	document.querySelector('.slide_center_section .slide_center.img_v2').classList.add('animated');
	document.querySelector('.slide_center_section .slide_center.img_v3').classList.add('animated');

	document.querySelector('.slide_center_section .slide_center.img_v1').style.postion = 'reletive'
	document.querySelector('.slide_center_section .slide_center.img_v1').style.zIndex = '-10';
	document.querySelector('.slide_center_section .slide_center.img_v2').style.postion = 'reletive'
	document.querySelector('.slide_center_section .slide_center.img_v2').style.zIndex = '-10';

	document.querySelector('.slide_center_section .slide_center.img_v1').style.left = '-5%';
	document.querySelector('.slide_center_section .slide_center.img_v2').style.left = '-5%';
	document.querySelector('.slide_center_section .slide_center.img_v3').style.left = '30%';
	setTimeout(function() {
		document.querySelector('.slide_center_section .slide_center.img_v1').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v2').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v3').classList.remove('animated');
		document.querySelector('.slide_center_section .slide_center.img_v1').style.left = '100%';
		document.querySelector('.slide_center_section .slide_center.img_v2').style.left = '100%';

		document.querySelector('.slide_center_section .slide_center.img_v1').style.zIndex = '0';
		document.querySelector('.slide_center_section .slide_center.img_v2').style.zIndex = '0';
	}, 1100)
}
document.querySelector('.slide_center_section .slide_center').classList.add('animated');