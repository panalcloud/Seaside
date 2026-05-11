private
run

	[
	znWebSocket runWith: [ :message |
		self touchSession.
		onMessage
			ifNil: [
				Transcript
					show:
						'[WAZincWebSocket] onMessage is nil — sending pusher-expired message and closing websocket';
					cr.
				znWebSocket sendMessage:
					(STONJSON toString:
						 { ('subject' -> 'pusher-expired') } asDictionary).
				znWebSocket close ]
			ifNotNil: [ onMessage value: message ] ] ]
		on: ConnectionClosed
		do: [ :e | onClose ifNotNil: [ onClose cull: e ] ]