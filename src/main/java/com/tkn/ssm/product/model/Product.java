package com.tkn.ssm.product.model;

public class Product {
    private int productId;
    private String productName;
    private String productType;
    private String canSale;
    private String manufacturer;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getCanSale() {
        return canSale;
    }

    public void setCanSale(String canSale) {
        this.canSale = canSale;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", productType='" + productType + '\'' +
                ", canSale='" + canSale + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                '}';
    }
}
