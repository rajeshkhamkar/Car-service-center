<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Type typeDetails = new Type();
	ArrayList allType = typeDetails.getAllType();
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Food Category Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
			  <th style="width:70px;">Sr. No.</th>
              <th>Food Category</th>
              <th>Description</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allType.size();i++) 
			{ 
				HashMap TypeDetails = new HashMap();
				TypeDetails = (HashMap)allType.get(i);
			%>
				<tr>
				  <th style="text-align:center;"><%=(i+1)%></th>
				  <td style="text-align:center;"><% out.print(TypeDetails.get("type_name")); %></td>
				  <td><% out.print(TypeDetails.get("type_description")); %></td>
				  <td> 
					<a href="type.jsp?type_id=<% out.print(TypeDetails.get("type_id")); %>">Edit</a>
				  </td>
				</tr>
			<%
			}
			if(allType.size() == 0) 
			{
			%>
				<tr>
					<td colspan="5">No Records Found !!!</td>
				</tr>
			<%
			} 	
			%>
			</tbody>
        </table>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
