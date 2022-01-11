<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex align-items-center ml-3 ">
	<div id="logo"">
		<h3 class="mr-5 col-1">
			<a href="list_template.jsp" class="text-success font-weight-bold">Melong</a>
		</h3>
	</div>
	<div class="col-5">
		<form method="get" action="info_template.jsp">
			<div class="search-bar">
				<div class="d-flex ">
						<input type="text" class="form-control col-9" name="search">
						<input type="submit" class="btn btn-info" value="검색">

				</div>
			</div>
		</form>
	</div>
</header>
