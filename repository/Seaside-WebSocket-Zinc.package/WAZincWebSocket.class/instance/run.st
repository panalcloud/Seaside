running
run

	[ znWebSocket runWith: [ :message | self touchSession. onMessage value: message ] ]
		on: ConnectionClosed
		do: [ :e | 
				znWebSocket isConnected ifTrue: [ znWebSocket close ] .
				onClose ifNotNil: [ onClose cull: e ] ]