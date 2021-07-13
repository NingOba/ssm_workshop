<%--
  Created by IntelliJ IDEA.
  User: 84440
  Date: 2021/6/12
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>产品信息修改</title>
    <!--连接css-->
    <link rel="stylesheet" type="text/css" href="../../static/product_edit.css">
    <link rel="shortcut icon" href="#"/>

</head>
<body>
<div class="editTop">
    <form id="femProduct" name="frmProduct" method="post">
        <input type="hidden" name="productId" value="${product.productId}">

        <div class="editTail">
            <table class="editTail_table1" width="1000" border="0" align="center">
                <div class="editTail_title">
                    <tr class="editTail_title_first">
                        <td align="center">
                            会员信息修改
                        </td>
                    </tr>
                </div>
            <tr>
                <td>
                    <table  class="editTail_table2"  width="100%" cellpadding="10" cellspacing="10">
                        <tr class="editTail_table2_second">
                            <td align="center" width="" >产品名称:</td>
                            <td>
                                <input type="text" name="productName" value="${product.productName}">
                            </td>
                        </tr>
                        <tr class="editTail_table2_third">
                            <td align="center">产品类型:</td>
                            <td>
                                <select name="productType">
                                    <option value="1"
                                            <c:if test="${product.productType=='1'}">selected</c:if>>
                                        通讯
                                    </option>
                                    <option value="2"
                                            <c:if test="${product.productType=='2'}">selected</c:if>>
                                        食品
                                    </option>
                                    <option value="3"
                                            <c:if test="${product.productType=='3'}">selected</c:if>>
                                        图书
                                    </option>
                                </select>
                            </td>
                        </tr >
                        <tr class="editTail_table2_fourth">
                            <td align="center">是否上架</td>

                            <td>
                                <input type="radio" name="canSale" value="1"
                                       <c:if test="${product.canSale=='1'}">checked</c:if> />是
                                <input type="radio" name="canSale" value="0"
                                       <c:if test="${product.canSale=='0'}">checked</c:if> />否
                            </td>
                        </tr>
                        <tr class="editTail_table2_fifth">
                            <td align="center">生产厂家</td>
                            <td>
                                <input type="text" name="manufacturer" value="${product.manufacturer}">
                            </td>

                        </tr>


                    </table>
            <tr class="editTail_table2_sixth">
                <td align="center">
                    <div align="center">
                        <input type="button" id="btnSave"
                               value="保存" onclick="save()">
                        <input type="reset" id="btnReset" value="重置">
                        <input type="button" id="btnCancel"
                               value="取消" onclick="cancel()">
                    </div>
                </td>
            </tr>
            </td>
            </tr>
        </table>
        </div>
    </form>
</div>

<script>
    function save() {
        document.frmProduct.action
            = "${pageContext.request.contextPath}/productedit";
        document.frmProduct.submit();
    }

    function cancel() {
        window.location.href
            = "${pageContext.request.contextPath}/productlist";
    }

</script>

</body>
</html>
