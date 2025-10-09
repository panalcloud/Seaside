private
touchSession
	"Prevent session expiry. If application returns nil, assume session is invalid and send close signal."
	
	session ifNotNil: [ :s | 
		s application 
			ifNotNil: [ :app | app cache at: s key ifAbsent: [ ] ] 
			ifNil: [ ConnectionClosed signal ] ]
	
