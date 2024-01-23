/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

var faq = document.getElementsByClassName('faq-page');
var i;
for (i = 0; i < faq.length; i++) {
    //onsole.log(i);
    
    faq[i].addEventListener('click', function () {
            this.classList.toggle('active');
            var body = this.nextElementSibling;
            if (body.style.display === 'block') {
                    body.style.display = 'none';
            } else {
                    body.style.display = 'block';
            }
    });
}