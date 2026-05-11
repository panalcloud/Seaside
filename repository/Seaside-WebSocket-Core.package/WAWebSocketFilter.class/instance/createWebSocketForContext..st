private
createWebSocketForContext: aRequestContext
	"Resolve the pusher key and pusher BEFORE creating a websocket object.
	 This prevents unbound WAZincWebSocket instances with nil onMessage callbacks
	 that crash when a frame arrives — which happens on browser reconnect after
	 an image restart if the _ws key is stale or the pusher is not yet registered.
	 If the key is absent or unknown, the upgrade is silently skipped."

	| key pusher webSocket |
	key := aRequestContext request fields
		       at: WAWebSocket headerField
		       ifAbsent: [
			       Transcript
				       show:
					       '[WAWebSocketFilter] missing websocket key; skipping socket creation';
				       cr.
			       ^ nil ].
	pusher := pushers at: key ifAbsent: [
		          Transcript
			          show: '[WAWebSocketFilter] unknown websocket key=' , key
				          , '; skipping socket creation';
			          cr.
		          ^ nil ].
	webSocket := aRequestContext createWebSocket.
	pusher addSocket: webSocket