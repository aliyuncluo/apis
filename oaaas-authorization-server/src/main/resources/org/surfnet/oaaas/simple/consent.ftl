<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="robots" content="noindex, nofollow" />
		<meta name="viewport" content="width=device-width" />

		<title>Consent</title>

</head>
<body>
	<div id="wrapper">
  		<div id="main">
    <h1>${context.client.name} (${context.client.description}) is asking consent for accessing:</h1>

    <div class="logos">
        <img class="logo"
             alt="${context.client.name}"
             title="${context.client.name}"
             src="${context.client.thumbNailUrl}"/>
      </div>

  <div id="approve">
        <form id="accept" method="post" action="${context.actionUri}">
          <p>
            <input name="user_oauth_approval" value="true" type="hidden"/>
     		<input type="hidden" name="AUTH_STATE"
							value="${context.authState}" /> 
	        <ul class="scopes">
		      	<#list scopes as scope>
			        <li><input id="GRANTED_SCOPES" type="checkbox" name="GRANTED_SCOPES" checked="yes" value="${scope}"/>${scope}</li>
				</#list>
		    </ul>

            <input id="accept_terms_button"
                   class="submit bigbutton"
                   type="submit"
                   value="Yes, grant access"
                   style="font-weight: bold;" />
          </p>
        </form>
	</div>
    <div id="deny">
        <form id="reject" method="post" action="${context.actionUri}">
          <p>
            <input name="user_oauth_approval" value="false" type="hidden"/>

            <input id="decline_terms_button" class="submit bigbutton"
                   type="submit" value="No, deny access" />
          </p>
        </form>
      </div>
	<div id="consent">	
      <p>
      
      </p>
    </div>


</body>
</html>