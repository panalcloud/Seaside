private
run

	[
	znWebSocket runWith: [ :message |
		self touchSession.
		onMessage
			ifNil: [
				Transcript
					show:
						'[WAZincWebSocket] onMessage is nil — closing websocket so client can reconnect';
					cr.
				znWebSocket close ]
			ifNotNil: [ onMessage value: message ] ] ]
		on: ConnectionClosed
		do: [ :e | onClose ifNotNil: [ onClose cull: e ] ]