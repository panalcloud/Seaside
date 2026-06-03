private
createWebSocketForContext: aRequestContext
	
	^ mutex critical: [ self basicCreateWebSocketForContext: aRequestContext ]