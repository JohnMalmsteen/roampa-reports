<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>RoamPA Reports</title>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
 	
 	
	
	<link rel="stylesheet" href="<c:url value="/resources/styles/style.css" />" />
	<script>
		 $(function() {
			$( '.datepicker' ).datepicker({
				dateFormat: 'yy-mm-dd',
				changeMonth: true,
				changeYear: true,
				yearRange: '-100:+0'
				});
		  });
	</script>
</head>

<body>

	<div class="header">
		<p id="header-text">RoamPA Reports</p>
	</div>

	<div class="explorer"> 
		
	
		<div class="view ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
			<div class="view-header ui-sortable-handle ui-widget-header ui-corner-all">
				<span class="ui-icon ui-icon-plusthick view-toggle"></span>
				User View 
			</div>
			<div class="view-fields">	
				<ul class="droppable ui-sortable">
					<li name="users_view@id" class="ui-state-default ui-sortable-handle">
						id
						<input type="text" class="input-int text-field-name" name="users_view@id@input-int">
					</li>
					<li name="users_view@gender" class="ui-state-default ui-sortable-handle">
						gender
						<input type="text" class="input-single-char text-field-name" name="users_view@gender@input-single-char">
					</li>
					<li name="users_view@numberOfDependants" class="ui-state-default ui-sortable-handle">
						numberOfDependants
						<input type="text" class="input-int text-field-name" name="users_view@numberOfDependants@input-int">
					</li>
					<li name="users_view@username" class="ui-state-default ui-sortable-handle">
						username
						<input type="text" class="input-varchar text-field-name" name="users_view@username@input-varchar">
					</li>
					<li name="users_view@title" class="ui-state-default ui-sortable-handle">
						title
						<input type="text" class="input-varchar text-field-name" name="users_view@title@input-varchar">
					</li>
					<li name="users_view@firstname" class="ui-state-default ui-sortable-handle">
						firstname
						<input type="text" class="input-varchar text-field-name" name="users_view@firstname@input-varchar">
					</li>
					<li name="users_view@lastname" class="ui-state-default ui-sortable-handle">
						lastname
						<input type="text" class="input-varchar text-field-name" name="users_view@lastname@input-varchar">
					</li>
					<li name="users_view@dateofbirth" class="ui-state-default ui-sortable-handle">
						dateofbirth
						<div class="sup-text-field-name">
							Start Date 
						</div>
						<input type="text" class="input-startdate text-field-name datepicker" name="users_view@dateofbirth@input-startdate" id="dp1458984901550">
						<div class="sup-text-field-name">
							End Date 
						</div>
						<input type="text" class="input-enddate text-field-name datepicker" name="users_view@dateofbirth@input-enddate" id="dp1458984901551">
					</li>
					<li name="users_view@email" class="ui-state-default ui-sortable-handle">
						email
						<input type="text" class="input-varchar text-field-name" name="users_view@email@input-varchar">
					</li>
					<li name="users_view@companyid" class="ui-state-default ui-sortable-handle">
						companyid
						<input type="text" class="input-int text-field-name" name="users_view@companyid@input-int">
					</li>
					<li name="users_view@primaryAddressTag" class="ui-state-default ui-sortable-handle">
						primaryAddressTag
						<input type="text" class="input-varchar text-field-name" name="users_view@primaryAddressTag@input-varchar">
					</li>
					<li name="users_view@phonenumber" class="ui-state-default ui-sortable-handle">
						phonenumber
						<input type="text" class="input-varchar text-field-name" name="users_view@phonenumber@input-varchar">
					</li>
					<li name="users_view@create_at" class="ui-state-default ui-sortable-handle">
						create_at
						<div class="sup-text-field-name">
							Start Date 
						</div>
						<input type="text" class="input-startdate text-field-name datepicker" name="users_view@create_at@input-startdate" id="dp1458984901552">
							<div class="sup-text-field-name">
								End Date 
							</div>
						<input type="text" class="input-enddate text-field-name datepicker" name="users_view@create_at@input-enddate" id="dp1458984901553">
					</li>
					<li name="users_view@lastvisit_at" class="ui-state-default ui-sortable-handle">
						lastvisit_at
						<div class="sup-text-field-name">
							Start Date 
						</div>
						<input type="text" class="input-startdate text-field-name datepicker" name="users_view@lastvisit_at@input-startdate" id="dp1458984901554">
						<div class="sup-text-field-name">
							End Date 
						</div>
						<input type="text" class="input-enddate text-field-name datepicker" name="users_view@lastvisit_at@input-enddate" id="dp1458984901555">
					</li>
					<li name="users_view@status" class="ui-state-default ui-sortable-handle">
						status
						<input type="text" class="input-int text-field-name" name="users_view@status@input-int">
					</li>	
				</ul>
			</div>
		</div>
						
		<div class="view ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
			<div class="view-header ui-sortable-handle ui-widget-header ui-corner-all">
				<span class="ui-icon ui-icon-plusthick view-toggle"></span>
				User Addresses 
			</div><div class="view-fields">	
			<ul class="droppable ui-sortable">
				<li name="users_addresses@userid" class="ui-state-default ui-sortable-handle">
					userid
					<input type="text" class="input-int text-field-name" name="users_addresses@userid@input-int">
				</li>
				<li name="users_addresses@username" class="ui-state-default ui-sortable-handle">
					username
					<input type="text" class="input-varchar text-field-name" name="users_addresses@username@input-varchar">
				</li>
				<li name="users_addresses@title" class="ui-state-default ui-sortable-handle">
					title
					<input type="text" class="input-varchar text-field-name" name="users_addresses@title@input-varchar">
				</li>
				<li name="users_addresses@firstname" class="ui-state-default ui-sortable-handle">
					firstname
					<input type="text" class="input-varchar text-field-name" name="users_addresses@firstname@input-varchar">
				</li>
				<li name="users_addresses@lastname" class="ui-state-default ui-sortable-handle">
					lastname
					<input type="text" class="input-varchar text-field-name" name="users_addresses@lastname@input-varchar">
				</li>
				<li name="users_addresses@dateofbirth" class="ui-state-default ui-sortable-handle">
					dateofbirth
					<div class="sup-text-field-name">
						Start Date 
					</div>
					<input type="text" class="input-startdate text-field-name datepicker" name="users_addresses@dateofbirth@input-startdate" id="dp1458984901556">
					<div class="sup-text-field-name">
						End Date 
					</div>
					<input type="text" class="input-enddate text-field-name datepicker" name="users_addresses@dateofbirth@input-enddate" id="dp1458984901557">
				</li>
				<li name="users_addresses@email" class="ui-state-default ui-sortable-handle">
					email
					<input type="text" class="input-varchar text-field-name" name="users_addresses@email@input-varchar">
				</li>
				<li name="users_addresses@companyid" class="ui-state-default ui-sortable-handle">
					companyid
					<input type="text" class="input-int text-field-name" name="users_addresses@companyid@input-int">
				</li>
				<li name="users_addresses@primaryAddressTag" class="ui-state-default ui-sortable-handle">
					primaryAddressTag
					<input type="text" class="input-varchar text-field-name" name="users_addresses@primaryAddressTag@input-varchar">
				</li>
				<li name="users_addresses@phonenumber" class="ui-state-default ui-sortable-handle">
					phonenumber
					<input type="text" class="input-varchar text-field-name" name="users_addresses@phonenumber@input-varchar">
				</li>
				<li name="users_addresses@tag" class="ui-state-default ui-sortable-handle">
					tag
					<input type="text" class="input-varchar text-field-name" name="users_addresses@tag@input-varchar">
				</li>
				<li name="users_addresses@address1" class="ui-state-default ui-sortable-handle">
					address1
					<input type="text" class="input-varchar text-field-name" name="users_addresses@address1@input-varchar">
				</li>
				<li name="users_addresses@address2" class="ui-state-default ui-sortable-handle">
					address2
					<input type="text" class="input-varchar text-field-name" name="users_addresses@address2@input-varchar">
				</li>
				<li name="users_addresses@city" class="ui-state-default ui-sortable-handle">
					city
					<input type="text" class="input-varchar text-field-name" name="users_addresses@city@input-varchar">
				</li>
				<li name="users_addresses@region" class="ui-state-default ui-sortable-handle">
					region
					<input type="text" class="input-varchar text-field-name" name="users_addresses@region@input-varchar">
				</li>
				<li name="users_addresses@zipcode" class="ui-state-default ui-sortable-handle">
					zipcode
					<input type="text" class="input-varchar text-field-name" name="users_addresses@zipcode@input-varchar">
				</li>
				<li name="users_addresses@country" class="ui-state-default ui-sortable-handle">
					country
					<input type="text" class="input-varchar text-field-name" name="users_addresses@country@input-varchar">
				</li>	
			</ul>
		</div>
	</div>
		
		
		<div class="view ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"><div class="view-header ui-sortable-handle ui-widget-header ui-corner-all"><span class="ui-icon ui-icon-plusthick view-toggle"></span>User Events </div><div class="view-fields">	<ul class="droppable ui-sortable"><li name="users_events@id" class="ui-state-default ui-sortable-handle">id<input type="text" class="input-int text-field-name" name="users_events@id@input-int"></li><li name="users_events@title" class="ui-state-default ui-sortable-handle">title<input type="text" class="input-varchar text-field-name" name="users_events@title@input-varchar"></li><li name="users_events@tracker" class="ui-state-default ui-sortable-handle">tracker<input type="text" class="input-single-char text-field-name" name="users_events@tracker@input-single-char"></li><li name="users_events@start" class="ui-state-default ui-sortable-handle">start<div class="sup-text-field-name">Start Date </div><input type="text" class="input-startdate text-field-name datepicker" name="users_events@start@input-startdate" id="dp1458984901558"><div class="sup-text-field-name">End Date </div><input type="text" class="input-enddate text-field-name datepicker" name="users_events@start@input-enddate" id="dp1458984901559"></li><li name="users_events@end" class="ui-state-default ui-sortable-handle">end<div class="sup-text-field-name">Start Date </div><input type="text" class="input-startdate text-field-name datepicker" name="users_events@end@input-startdate" id="dp1458984901560"><div class="sup-text-field-name">End Date </div><input type="text" class="input-enddate text-field-name datepicker" name="users_events@end@input-enddate" id="dp1458984901561"></li><li name="users_events@editable" class="ui-state-default ui-sortable-handle">editable<input type="text" class="input-single-char text-field-name" name="users_events@editable@input-single-char"></li><li name="users_events@userid" class="ui-state-default ui-sortable-handle">userid<input type="text" class="input-int text-field-name" name="users_events@userid@input-int"></li><li name="users_events@firstname" class="ui-state-default ui-sortable-handle">firstname<input type="text" class="input-varchar text-field-name" name="users_events@firstname@input-varchar"></li><li name="users_events@lastname" class="ui-state-default ui-sortable-handle">lastname<input type="text" class="input-varchar text-field-name" name="users_events@lastname@input-varchar"></li><li name="users_events@dateofbirth" class="ui-state-default ui-sortable-handle">dateofbirth<div class="sup-text-field-name">Start Date </div><input type="text" class="input-startdate text-field-name datepicker" name="users_events@dateofbirth@input-startdate" id="dp1458984901562"><div class="sup-text-field-name">End Date </div><input type="text" class="input-enddate text-field-name datepicker" name="users_events@dateofbirth@input-enddate" id="dp1458984901563"></li><li name="users_events@email" class="ui-state-default ui-sortable-handle">email<input type="text" class="input-varchar text-field-name" name="users_events@email@input-varchar"></li><li name="users_events@companyid" class="ui-state-default ui-sortable-handle">companyid<input type="text" class="input-int text-field-name" name="users_events@companyid@input-int"></li><li name="users_events@primaryAddressTag" class="ui-state-default ui-sortable-handle">primaryAddressTag<input type="text" class="input-varchar text-field-name" name="users_events@primaryAddressTag@input-varchar"></li><li name="users_events@phonenumber" class="ui-state-default ui-sortable-handle">phonenumber<input type="text" class="input-varchar text-field-name" name="users_events@phonenumber@input-varchar"></li>	</ul></div></div>
					
	</div>
	
	<div class="selected">
		
		<form id="selectedfieldsform" action="process.php" method="POST" target="_blank">
			<div class="menu">
				<button class="menu-buttons" type="button" onclick="menu_reset(); return false;">Reset Fields</button>
				<button id="pdfButton" class="menu-buttons" type="button">Save as PDF</button>
				<button id="xlsButton" class="menu-buttons" type="button">Save as Excel</button>
				<button class="menu-buttons" type="button" onclick="show_html(); return false;">Show</button>
				<!-- <select class="dropdown-list" name="company_id">
					replace get_company() 
					<c:forEach items="${companies}" var="company">
						<option value="${company.id }">$company.company</option>
					</c:forEach>
				</select> -->
				
			</div>
			
			<ul id="selected-list" class="droppable"></ul>
		
			<br style="clear:both">
			
		</form>

		
		<div class="html-table">
			<!-- <?php if (isset($_GET['ajax'])) {  echo $_GET['myString']; } else { ?> -->
			<pre id="data"></pre>
			<!-- <?php } ?> -->
		</div>
		
	</div>
	<script type="text/javascript" src="<c:url value="/resources/dragndrop.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/menu.js" />"></script>
</body>
</html>