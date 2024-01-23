/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.querySelectorAll('input[type=radio][name=radio]').forEach((elem) => {
	elem.addEventListener('click', allowUncheck);
	elem.previous = elem.checked;
});

function allowUncheck(e) {
	if (this.previous) {
		this.checked = false;
	}
	document
		.querySelectorAll(`input[type=radio][name=${this.name}]`)
		.forEach((elem) => {
			elem.previous = elem.checked;
		});
}