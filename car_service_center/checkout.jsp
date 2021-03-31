<%@ include file="includes/header.jsp" %>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-`right:30px">
      <h2>Your Car sDetails</h2>
        <form action="payment.jsp" method="post">
          <div>
            <label for="email">Car Number <span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Chachis Number<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Model Number<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Buying Date<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Car Company<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Insurance Date<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div>
            <label for="email">Insurance Company<span>*</span></label>
            <input type="text" name="email" id="email" value="" size="22" required>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Proceed to Payment">
            &nbsp;
          </div>
        </form>
        </div>
        <div style="float: right">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
