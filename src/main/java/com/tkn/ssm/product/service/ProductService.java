package com.tkn.ssm.product.service;

import com.tkn.ssm.product.model.Product;

import java.util.List;

public interface ProductService {
    //增
    public void addProduct(Product product);

    //删
    public void deleteProduct(int productId);

    //改
    public void updateProduct(Product product);

    //查询单个
    public Product findProductById(int productId);

    //查询所有
    public List<Product> findAllProduct();
}
