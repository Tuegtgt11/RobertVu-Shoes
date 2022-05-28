<%@ page import="com.t2010a.javashopping.entity.cart.ShoppingCart" %>
<%@ page import="com.t2010a.javashopping.entity.cart.CartItem" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingcart");
    int action = (int) request.getAttribute("action");
    double totalPrice =0;
    if (shoppingCart == null) {
        shoppingCart = new ShoppingCart();
        action = 2;
    }
%>
<!DOCTYPE html>
<html lang="zxx">
<jsp:include page="../includes/head.jsp"></jsp:include>
<body>
<jsp:include page="../includes/header.jsp"></jsp:include>
<!-- top Products -->
<div class="ads-grid_shop">
    <%if (action == 1){%>
    <div class="shop_inner_inf">
        <div class="privacy about">
            <h3><span>Show Cart</span></h3>
            <div class="checkout-right">
                <h4>Your shopping cart contains:</h4>
                <table class="timetable_sub">
                    <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quality</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Total</th>
                        <th>Remove</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%List<CartItem> items = shoppingCart.getListItems();
                        for (int i = 0; i < items.size(); i++) {
                            totalPrice = items.get(i).getUnitPrice() * items.get(i).getQty();%>
                    <tr class="rem1">
                        <td class="invert-image"><img src="<%=items.get(i).getProductImage()%>" alt=" " class="img-responsive" width="225" height="225"></td>
                        <td class="invert">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value"><span><%=items.get(i).getQty()%></span></div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                        </td>
                        <td class="invert"><%=items.get(i).getProductName()%></td>
                        <td class="invert">$<%=items.get(i).getUnitPrice()%></td>
                        <td class="invert">$<%=items.get(i).getUnitPrice() * items.get(i).getQty()%></td>
                        <td class="invert">
                            <div class="rem">
                                <div class="close1"> </div>
                            </div>

                        </td>
                    </tr>
                    <%}%>
                    </tbody>
                </table>
            </div>
        </div>
        <button><a href="/checkout"><h1>Checkout</h1></a></button>
    </div>
    <%}else{%>
    <h2>Your shopping cart is currently empty!</h2>
    <a href="/shop"><- Back to Shop</a>
    <%}%>
    <!-- //top products -->
</div>
<jsp:include page="../includes/footer.jsp"></jsp:include>
<!-- /top Products -->
<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<jsp:include page="../includes/script.jsp"></jsp:include>
</body>
</html>