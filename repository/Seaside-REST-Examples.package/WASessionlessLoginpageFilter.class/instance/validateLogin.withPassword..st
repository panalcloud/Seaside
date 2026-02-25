private
validateLogin: aLogin withPassword: aPassword

	^ aLogin = 'seaside' and: [ aPassword = 'swordfish' ]