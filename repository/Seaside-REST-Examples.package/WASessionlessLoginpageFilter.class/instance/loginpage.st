routes
loginpage
	"Renders the login page without creating a Seaside session."
	<get>
	<path: ''>
	<produces: 'text/html'>

	^ WAHtmlCanvas builder
		  fullDocument: true;
		  render: [ :html | self renderLoginpageOn: html ]