<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Stock stockDetails = new Stock();
	int stock_id = Integer.parseInt(request.getParameter ("stock_id"));
	HashMap Values =  stockDetails.getStockDetails(stock_id);	
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Stock Form</h2>
		<form method="post" action="model/stock.jsp">
          <div>
            <label for="email">Select Product Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "stock_product_id" id = "stock_product_id" required>
            	<% out.print(stockDetails.getProductOption((Integer) Values.get("stock_product_id"))); %>
            </select>
          </div>
          <div>
            <label for="email">Number of Items<span>*</span></label>
            <input type="text" name="stock_number" id="stock_number" value="<% out.print(Values.get("stock_number")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Stock">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("stock_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" id="stock_id" name="stock_id" value="<% out.print(Values.get("stock_id")); %>"/>
        </form>
        </div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
