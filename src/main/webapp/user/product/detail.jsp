<%@ page import="com.t2010a.javashopping.entity.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.t2010a.javashopping.entity.Color" %>
<%@ page import="com.t2010a.javashopping.entity.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Product product = (Product) request.getAttribute("product");
    List<Product> products = (List<Product>) request.getAttribute("products");
    List<Color> colors = (List<Color>) request.getAttribute("color");
    List<Category> categories = (List<Category>) request.getAttribute("category");
    if (products == null){
        products = new ArrayList<>();
    }
    if (colors == null){
        colors = new ArrayList<>();
    }
    if (categories == null){
        colors = new ArrayList<>();
    }
%>
<!DOCTYPE html>
<html lang="zxx">
<jsp:include page="../includes/head.jsp"></jsp:include>
<body>
<!-- banner -->
<jsp:include page="../includes/header.jsp"></jsp:include>
<!-- //banner -->
<!-- top Products -->
<div class="ads-grid_shop">
    <div class="shop_inner_inf">
        <div class="col-md-4 single-right-left ">
            <div class="grid images_3_of_2">
                <div class="flexslider">

                    <ul class="slides">
                        <li data-thumb="<%=product.getImage()%>">
                            <div class="thumb-image"> <img src="<%=product.getImage()%>" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="col-md-8 single-right-left simpleCart_shelfItem">
            <h3><%=product.getName()%></h3>
            <p><span class="item_price">$<%=product.getPrice()%></span>
                <del>$<%=product.getPrice()*1.7%></del>
            </p>
            <div class="rating1">
                <ul class="stars">
                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                </ul>
            </div>
            <div class="description">
                <h5>Check delivery, payment options and charges at your location</h5>
                <form action="#" method="post">
                    <input type="text" value="Enter pincode" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter pincode';}"
                           required="">
                    <input type="submit" value="Check">
                </form>
            </div>
            <div class="color-quality">
                <div class="color-quality-right">
                    <h5>Quality :<%=product.getQty()%></h5>
                    <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                        <option value="null">5 Qty</option>
                        <option value="null">6 Qty</option>
                        <option value="null">7 Qty</option>
                        <option value="null">10 Qty</option>
                    </select>
                </div>
                <div class="color-quality-right">
                    <%for (int i = 0; i < colors.size(); i++) {
                        if (product.getColor_id() == colors.get(i).getId()){%>
                    <span>Color</span> : <%=colors.get(i).getName()%></a>
                    <%}}%>
                </div>
            </div>
            <div class="occasional">
                <%for (int i = 0; i < categories.size(); i++) {
                    if (product.getCategory_id() == categories.get(i).getId()){%>
                <h5>Category :<%=categories.get(i).getName()%></h5>
                <%}}%>
                <div class="clearfix"> </div>
            </div>
            <div class="occasion-cart">
                <div class="shoe single-item single_page_b">
                    <button><a href="/cart/add?id=<%=product.getId()%>&qty=1">Add to cart</a></button>
                </div>
            </div>
            <ul class="social-nav model-3d-0 footer-social social single_page">
                <li class="share">Share On : </li>
                <li>
                    <a href="#" class="facebook">
                        <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                        <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                    </a>
                </li>
                <li>
                    <a href="#" class="twitter">
                        <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                        <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                    </a>
                </li>
                <li>
                    <a href="#" class="instagram">
                        <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                        <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                    </a>
                </li>
                <li>
                    <a href="#" class="pinterest">
                        <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                        <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                    </a>
                </li>
            </ul>

        </div>
        <div class="clearfix"> </div>
        <!-- /new_arrivals -->
        <div class="new_arrivals">
            <h3>Featured Products</h3>
            <!-- /womens -->
            <%for (Product product1:products){%>
            <div class="col-md-3 product-men women_two">
                <div class="product-shoe-info shoe">
                    <div class="men-pro-item">
                        <div class="men-thumb-item">
                            <img src="<%=product1.getImage()%>" alt="">
                            <div class="men-cart-pro">
                                <div class="inner-men-cart-pro">
                                    <a href="/product?id=<%=product1.getId()%>" class="link-product-add-cart">Quick View</a>
                                </div>
                            </div>
                            <span class="product-new-top">New</span>
                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.html">Shuberry Heels </a>
                            </h4>
                            <div class="info-product-price">
                                <div class="grid_meta">
                                    <div class="product_price">
                                        <div class="grid-price ">
                                            <span class="money ">$<%=product1.getPrice()%></span>
                                        </div>
                                    </div>
                                    <ul class="stars">
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                                <div class="shoe single-item hvr-outline-out">
                                    <button class="shoe-cart pshoe-cart"><a style="color: #fff" href="/cart/add?id=<%=product.getId()%>&qty=1" ><i class="fa fa-cart-plus" aria-hidden="true"></i></a></button>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>

            <!-- //womens -->
            <div class="clearfix"></div>
        </div>
        <!--//new_arrivals-->


    </div>
</div>
<!-- //top products -->
<div class="mid_slider_w3lsagile">
    <div class="col-md-3 mid_slider_text">
        <h5>Some More Shoes</h5>
    </div>
    <div class="col-md-9 mid_slider_info">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                <li data-target="#myCarousel" data-slide-to="3" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                    </div>
                </div>
                <div class="item active">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="fa fa-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="fa fa-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!-- The Modal -->

        </div>
    </div>

    <div class="clearfix"> </div>
</div>
<!-- /newsletter-->
<div class="newsletter_w3layouts_agile">
    <div class="col-sm-6 newsleft">
        <h3>Sign up for Newsletter !</h3>
    </div>
    <div class="col-sm-6 newsright">
        <form action="#" method="post">
            <input type="email" placeholder="Enter your email..." name="email" required="">
            <input type="submit" value="Submit">
        </form>
    </div>

    <div class="clearfix"></div>
</div>
<!-- //newsletter-->
<!-- footer -->
<jsp:include page="../includes/footer.jsp"></jsp:include>
<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<jsp:include page="../includes/script.jsp"></jsp:include>
</body>
</html>
