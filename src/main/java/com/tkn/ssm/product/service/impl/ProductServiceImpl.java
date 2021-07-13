package com.tkn.ssm.product.service.impl;

import com.tkn.ssm.product.dao.ProductMapper;
import com.tkn.ssm.product.model.Product;
import com.tkn.ssm.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
//1、声明ProductServiceImpl.java是一个bean，这点很重要，因为ProductServiceImpl.java是一个bean，
// 其他的类才可以使用@Autowired将ProductServiceImpl作为一个成员变量自动注入
//ProductServiceImpl在bean中的名字是小写的首字母
public class ProductServiceImpl implements ProductService {

    @Autowired//自动注入bean类型的
    private ProductMapper productMapper;
    @Override
    public void addProduct(Product product) {
        productMapper.addProduct(product);
    }

    @Override
    public void deleteProduct(int productId) {
        productMapper.deleteProduct(productId);
    }

    @Override
    public void updateProduct(Product product) {
        productMapper.updateProduct(product);
    }

    @Override
    public Product findProductById(int productId) {
        return productMapper.findProductById(productId);
    }

    @Override
    public List<Product> findAllProduct() {
        return productMapper.findAllProduct();
    }
}
