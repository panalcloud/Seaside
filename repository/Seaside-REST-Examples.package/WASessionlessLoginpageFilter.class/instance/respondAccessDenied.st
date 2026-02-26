private
respondAccessDenied

	self requestContext respond: [ :response | response forbidden; nextPutAll: 'Access denied' ]