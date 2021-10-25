<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <title> cart-Shopping </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="styles/style.css" type="text/css">
    </head>
    <body>
        <div class="bg-img">
            <h1 class="text-center" style="font-size: 40px;">Giỏ Hàng</h1>
            <div class="container"> 
                <table id="cart" class="table table-hover table-condensed"> 
                    <thead> 
                        <tr> 
                            <th style="width:30%; font-size: 30px; color: white; margin-right: 20px">Tên sản phẩm</th> 
                            <th style="width:10%; font-size: 30px; color: white;">Đơn giá</th> 
                            <th style="width:20%; font-size: 30px; color: white;">Số lượng</th> 
                            <th style="width:10%; font-size: 30px; color: white;">Tổng giá</th> 
                            <%-- <th style="width:22%; font-size: 30px; color: white;" class="text-center">Thành tiền</th>  --%>
                            <th style="width:10%; font-size: 30px; color: white;"> </th> 
                            <th style="Width: 10% "> </th>
                        </tr> 
                    </thead> 
                    <tbody>
                        <c:forEach var="item" items="${cart.items}">
                            <tr>
                                <td data-th="Product"> 
                                    <div class="row"> 
                                        <div class="sp1"><img src="https://th.bing.com/th/id/OIP.-4vH0iyYS7mnlWlPhqFabgHaDa?pid=ImgDet&rs=1" alt="Sản phẩm 1" class="img-responsive" width="150" style="border-radius: 3px; border-style: solid;"></div> 
                                        <div class="col-sm-10"> 
                                            <p class="produce"><c:out value='${item.product.description}'/></p> 
                                        </div> 
                                    </div> 
                                </td> 
                                <td data-th="Price" class="text-center">${item.product.priceCurrencyFormat}</td> 
                                <form action="" method="post">
                                    <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                                    <td data-th="Quantity">
                                        <input style="text-align:center" value="<c:out value='${item.quantity}'/>" type="text" name="quantity">
                                        <input type="submit" value="Update">
                                    </td>
                                </form>
                                <td data-th="Subtotal" class="text-center">${item.totalCurrencyFormat}</td> 
                                <td class="actions" data-th="">
                                    <form action="" method="post">
                                        <input type="hidden" name="productCode" 
                                            value="<c:out value='${item.product.code}'/>">
                                        <input type="hidden" name="quantity" 
                                            value="0">
                                        <input type="submit" value="Remove Item">
                                    </form>   
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                
                    <tfoot> 
                        <tr> 
                            <td>
                                <form action="" method="post">
                                    <input type="hidden" name="action" value="shop">
                                    <button type="submit" class="payment" style="margin: 25%"> Continue Shopping </button>
                                </form>
                            </td> 
                            <%-- <td colspan="2" class="hidden-xs"></td>  --%>
                            <%-- <td class="hidden-xs text-center " style="font-size: 30px;"><strong>Tổng tiền 500.000 đ</strong></td>  --%>
                            <td>
                                <form action="" method="post">
                                    <input type="hidden" name="action" value="checkout">
                                    <button type="submit" class="payment">Checkout</button>
                                </form>
                            </td> 
                        </tr> 
                    </tfoot> 
                </table>
            </div>
        </div>
    </body>
</html>