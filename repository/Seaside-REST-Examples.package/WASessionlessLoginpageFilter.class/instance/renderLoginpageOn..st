rendering
renderLoginpageOn: html

	html paragraph: 'This is an example that uses the WARestfulComponentFilter to implement a login page where the session is only created on succesful authentication of the user. This prevents that all requests on your application login page create a session.'.
	
	html paragraph: 'Use the username ''seaside'' with password ''swordfish'' to login.'.

	html heading
		level: 2;
		with: 'Login to Seaside'.
	html form
		action: (self requestContext request url copy; addToPath: 'login');
		with: [
			html textInput
				name: 'username'.
			html passwordInput
				name: 'password'.
			html submitButton: 'Login' ]