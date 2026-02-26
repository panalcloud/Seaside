routes
login
	"Handles the POST request from the login page.
	Creates a Seaside session on succesful authentication and instantiates the root component."

	<post>
	<path: 'login'>
	
	| fields login pass |
	fields := self requestContext request postFields.
	login := fields at: 'username' ifAbsent: [ self respondBadRequest ].
	pass := fields at: 'password' ifAbsent: [ self respondBadRequest ].
	
	(self validateLogin: login withPassword: pass)
		ifTrue:[ self startSessionWithRoot: (self application preferenceAt: #rootClass) value new ]
		ifFalse: [ self respondAccessDenied ]