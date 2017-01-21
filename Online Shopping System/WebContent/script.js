
$(document).on('click', 'input[value="Add to Cart"]', function() {

	var id = $(this).attr("id");
	var name = $(this).parent().prev().prev().prev().prev().text();
	var price = $(this).parent().prev().prev().prev().text();
	var quantity = $(this).parent().prev().prev().children().val();
	
	var jspPage = 'addToCart.jsp?productID=' + id + '&productName=' + name + 
				  '&productPrice=' + price + '&orderQuantity=' + quantity;
	
	console.log(jspPage);
	window.location.href = jspPage;
	
});

$(document).on('click', 'input[value="Update"]', function() {

	var index = $(this).parent().parent().attr("id");
	var quantity = $(this).prev().val();
	
	var jspPage = 'updateCart.jsp?index=' + index + '&orderQuantity=' + quantity;
	
	window.location.href = jspPage;
	
});

