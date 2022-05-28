package com.t2010a.javashopping.controller.user.product;

import com.t2010a.javashopping.entity.Product;
import com.t2010a.javashopping.model.CategoryModel;
import com.t2010a.javashopping.model.MySqlCategoryModel;
import com.t2010a.javashopping.model.MySqlProductModel;
import com.t2010a.javashopping.model.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FilterServlet extends HttpServlet {
    private ProductModel productModel;
    private CategoryModel categoryModel;
    public FilterServlet() {
        this.productModel = new MySqlProductModel();
        this.categoryModel = new MySqlCategoryModel() ;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int category_id = Integer.parseInt(req.getParameter("category_id"));
        List<Product> products = productModel.findByCateId(category_id);
        if (products == null){
            products = new ArrayList<>();
        }
        req.setAttribute("product",products);
        req.setAttribute("category",categoryModel.findAll());
        req.getRequestDispatcher("/user/product/filterproduct.jsp").forward(req,resp);
    }
}
