package com.tkn.ssm.product.controller;

import com.tkn.ssm.product.model.Product;
import com.tkn.ssm.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

//在Web容器启动的时候，这个Controller已经被Spring加载到自己的Bean工厂里面去了。
@Controller
public class ProductController {
    @Autowired//自动注入bean类型的

    //由于在Service层使用了@Service注解，致使Spring在启动时会自动扫描并把ProductServiceImpl实现类添加到Bean容器中（在容器中该Bean的实例名称为productServiceImpl,第一个字母小写）；
    //在Controller层里使用@Autowired注解，默认是使用byType在Bean容器瓶中查找出最适合的类的实例名赋值给productService（注意是按类来查找最适合的），
    // 在Bean容器瓶中最适合productService的Bean实例名称自然就是productServiceImpl（因为它是ProductService的接口实现类）
    private ProductService productService;

    @GetMapping("/productlist")
    public String list(Model model){

        //从数据库取数据
        List<Product> list = productService.findAllProduct();

        //把list放进model，传到jsp；
        model.addAttribute("productlist",list);

        //跳转到jsp页面
        return "/jsp/product/product_list";

    }

    //响应添加按钮
    @GetMapping("/toproductadd")
    public String toProductAdd(Model model){


        return "/jsp/product/product_add";
    }

    //响应添加页面的保存按钮
    @PostMapping("/productadd")
    public String productAdd(Product product){

        productService.addProduct(product);

        return "redirect:productlist";
    }

    //响应修改按钮
    @GetMapping("/toproductedit")
    public String toProductEdit(int productId,Model model){

        Product product  = productService.findProductById(productId);

        model.addAttribute("product",product);


        return "/jsp/product/product_edit";
    }

    //响应修改页面保存按钮
    @PostMapping("/productedit")
    public String productEdit(Product product){


         productService.updateProduct(product);

         return "redirect:productlist";
    }

    //响应删除按钮
    @RequestMapping("/productdelete")
    public String delProduct (int productId){

        productService.deleteProduct(productId);

        return "redirect:productlist";
    }




}
