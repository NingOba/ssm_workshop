package com.tkn.ssm.product.dao;

import com.tkn.ssm.product.model.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductMapper {

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
