running
run

	[
	znWebSocket runWith: [ :message |
		self touchSession.
		onMessage
			ifNil: [
				Transcript
					show:
						'[WAZincWebSocket] dropping message because onMessage is nil';
					cr ]
			ifNotNil: [ onMessage value: message ] ] ]
		on: ConnectionClosed
		do: [ :e | onClose ifNotNil: [ onClose cull: e ] ]