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
    <title>产品列表</title>
    <!--连接css-->
    <link rel="stylesheet" type="text/css" href="../../static/product_list.css">
    <link rel="shortcut icon" href="#"/>
</head>

<body>

<div class="listTop" style="width:100% ;height:100%">

<div class="listTail" >
    <table  class="listTable_top" width="1000" border="0" align="center" ;>

        <tr>
            <div class="listTitle">
                <div class="listTitle_top">
                    <h2>产品列表</h2>
                </div>

                <div class="listAdd_button">

                    <input
                            type="button" id="btnAdd" value="注册" onclick="add()">
                </div>
            </div>
        </tr>
        <tr>
            <td>
                <div class="tableMain">
                    <table  class="Listing" border="0" width="100%" cellpadding="10" cellspacing="0">
                        <tr  align="center">
                            <td width="10%">序号</td>
                            <td width="15%">产品名称</td>
                            <td width="15%">产品类型</td>
                            <td width="25%">生产厂家</td>
                            <td width="10%">是否上架销售</td>
                            <td width="15%">操作</td>
                        </tr>

                        <c:forEach var="product" items="${productlist}" varStatus="varstatus">

                            <tr class="content" align="center">

                                <td>
                                    <c:out value="${varstatus.index+1}"/>
                                </td>

                                <td>${product.productName}</td>

                                <td>
                                    <c:if test="${product.productType=='1'}">通讯</c:if>
                                    <c:if test="${product.productType=='2'}">食品</c:if>
                                    <c:if test="${product.productType=='3'}">图书</c:if>
                                </td>

                                <td>${product.manufacturer}</td>

                                <td>
                                    <c:if test="${product.canSale=='1'}">是</c:if>
                                    <c:if test="${product.canSale=='0'}">否</c:if>
                                </td>

                                <td>
                                    <input  class="input1" type="button" id="btnEdit" value="修改" style=""
                                           onclick="edit(${product.productId})" >

                                    <input  class="input2" type="button" id="btnDel" value="删除" style=""
                                           onclick="del(${product.productId})">
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>

            </td>
        </tr>
    </table>
</div>

<script>
    function add() {
        window.location.href
            = "${pageContext.request.contextPath}/toproductadd";
    }

    function edit(id) {
        window.location.href
            = "${pageContext.request.contextPath}/toproductedit?productId="+id;
    }

    function del(id) {
        if (confirm("要删除该数据吗?")) {
            window.location.href
                = "${pageContext.request.contextPath}/productdelete?productId="+id;
        }
    }
</script>
</div>
</body>

</html>
