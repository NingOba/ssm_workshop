<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 84440
  Date: 2021/6/12
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>产品上架</title>
    <!--连接css-->
    <link rel="stylesheet" type="text/css" href="../../static/product_add.css">
    <link rel="shortcut icon" href="#"/>
</head>
<body>
<div class="addTop">
    <form id="frmProduct" name="frmProduct" method="post">
        <div class="addTail">
            <table  class="addTail_table1"  border="0" align="center">
                <div class="addTail_title">
                    <tr class="addTail_title_first">
                        <td>
                            产品上架
                        </td>
                    </tr>
                </div>

                <tr>
                    <td>
                        <!--cellpadding：代表单元格边框到内容之间的距离（留白）
                        cellspacing：用来指定表格各单元格之间的空隙。此属性的参数值是数字，表示单元格间隙所占的像素点数。-->
                        <table class="addTail_table2" width="100%"   cellspacing="10" cellpadding="10">
                            <tr class="addTail_table2_second" >
                                <td class="addTail_table2_second_td">产品名称</td>
                                <td>
                                    <input type="text" name="productName">
                                </td>
                            </tr>
                            <tr class="addTail_table2_third">
                                <td align="right">产品类型</td>
                                <td>
                                    <select name="productType">
                                        <option value="0" style="color: #AEAEB0" disabled selected>请选择产品类型</option>
                                        <option value="1">通讯</option>
                                        <option value="2">食品</option>
                                        <option value="3">图书</option>
                                    </select>
                                </td>
                            </tr>

                            <tr class="addTail_table2_fourth">
                                <td align="right">是否上架销售</td>
                                <td>
                                    <input type="radio" name="canSale" value="1"/>是
                                    <input type="radio" name="canSale" value="0"/>否

                                </td>

                            </tr>
                            <tr class="addTail_table2_fifth">
                                <td align="right">生产厂家</td>
                                <td>
                                    <input type="text" name="manufacturer" >
                                </td>

                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="addTail_table2_sixth">
                    <td align="center">
                        <div align="center">
                            <input type="button" id="btnAdd"
                                   value="注册" onclick="add()">
                            <input type="reset" id="btnReset" value="重置">
                            <input type="button" id="btnCancel"
                                   value="取消" onclick="cancel()">
                        </div>
                    </td>
                </tr>

            </table>
        </div>

    </form>
</div>

<script>
    function add() {
        document.frmProduct.action="${pageContext.request.contextPath}/productadd";
        document.frmProduct.submit();
    }

    function  cancel() {
        window.location.href="${pageContext.request.contextPath}/productlist";
    }
</script>

</body>
</html>
