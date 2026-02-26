private
respondBadRequest

	self requestContext respond: [ :response | response badRequest ]