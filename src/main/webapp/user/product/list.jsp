<%@ page import="com.t2010a.javashopping.entity.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.t2010a.javashopping.entity.Color" %>
<%@ page import="com.t2010a.javashopping.entity.Category" %><%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 26/05/2022
  Time: 2:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Product> products = (List<Product>) request.getAttribute("product");
    List<Category> categories = (List<Category>) request.getAttribute("category");
    if (products == null){
        products = new ArrayList<>();
    }
    if (categories == null){
        categories = new ArrayList<>();
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
        <!-- tittle heading -->

        <!-- //tittle heading -->
        <!-- product left -->
        <div class="side-bar col-md-3">
            <div class="search-hotel">
                <h3 class="agileits-sear-head">Search Here..</h3>
                <form action="#" method="post">
                    <input type="search" placeholder="Product name..." name="search" required="">
                    <input type="submit" value=" ">
                </form>
            </div>
            <!-- price range -->
            <div class="range">
                <h3 class="agileits-sear-head">Price range</h3>
                <ul class="dropdown-menu6">
                    <li>

                        <div id="slider-range"></div>
                        <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                    </li>
                </ul>
            </div>
            <!-- //price range -->
            <!--preference -->
            <div class="left-side">
                <h3 class="agileits-sear-head">Categories</h3>
                <ul>
                    <%for(int i = 0; i < categories.size() ; i++) {%>
                        <li>
                            <a href="/product/filter?category_id=<%=categories.get(i).getId()%>"><%=categories.get(i).getName()%></a>
                        </li>
                    <%}%>
                </ul>
            </div>
            <!-- // preference -->
            <!-- discounts -->
            <div class="left-side">
                <h3 class="agileits-sear-head">Discount</h3>
                <ul>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">5% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">10% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">20% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">30% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">50% or More</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">60% or More</span>
                    </li>
                </ul>
            </div>
            <!-- //discounts -->
            <!-- reviews -->
            <div class="customer-rev left-side">
                <h3 class="agileits-sear-head">Customer Review</h3>
                <ul>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <span>5.0</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>4.0</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>3.5</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>3.0</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-half-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                            <span>2.5</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- //reviews -->
            <!-- deals -->
            <div class="deal-leftmk left-side">
                <h3 class="agileits-sear-head">Special Deals</h3>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="/user/content/images/s4.jpg" alt="">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Shuberry Heels</h3>
                        <a href="single.html">$180.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="/user/content/images/s2.jpg" alt="">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Chikku Loafers</h3>
                        <a href="single.html">$99.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="/user/content/images/s1.jpg" alt="">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Bella Toes</h3>
                        <a href="single.html">$165.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="/user/content/images/s5.jpg" alt="">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Red Bellies</h3>
                        <a href="single.html">$225.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="/user/content/images/s3.jpg" alt="">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>(SRV) Sneakers</h3>
                        <a href="single.html">$169.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //deals -->

        </div>
        <!-- //product left -->
        <!-- product right -->
        <div class="left-ads-display col-md-9">
            <div class="wrapper_top_shop">
                <div class="col-md-6 shop_left">
                    <img src="/user/content/images/banner3.jpg" alt="">
                    <h6>40% off</h6>
                </div>
                <div class="col-md-6 shop_right">
                    <img src="/user/content/images/banner2.jpg" alt="">
                    <h6>50% off</h6>
                </div>
                <div class="clearfix"></div>
                <!-- product-sec1 -->
                <div class="product-sec1">
                    <%for (Product product:products){%>
                    <div class="col-md-4 product-men">
                            <div class="product-shoe-info shoe">
                                <div class="men-pro-item">
                                    <div class="men-thumb-item">
                                        <img src="<%=product.getImage()%>" alt="">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="/product?id=<%=product.getId()%>" class="link-product-add-cart">Quick View</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">New</span>
                                    </div>
                                    <div class="item-info-product">
                                        <h4>
                                            <a href="single.html"><%=product.getName()%></a>
                                        </h4>
                                        <div class="info-product-price">
                                            <div class="grid_meta">
                                                <div class="product_price">
                                                    <div class="grid-price ">
                                                        <span class="money ">$<%=product.getPrice()%></span>
                                                    </div>
                                                </div>
                                                <ul class="stars">
                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
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
                    <div class="clearfix"></div>
                </div>
                <!-- //product-sec1 -->
                <div class="col-md-6 shop_left shp">
                    <img src="/user/content/images/banner4.jpg" alt="">
                    <h6>21% off</h6>
                </div>
                <div class="col-md-6 shop_right shp">
                    <img src="/user/content/images/banner1.jpg" alt="">
                    <h6>31% off</h6>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
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
                            <div class="thumbnail"><img src="/user/content/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                    </div>
                </div>
                <div class="item active">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g5.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g6.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                            <div class="thumbnail"><img src="/user/content/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
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
