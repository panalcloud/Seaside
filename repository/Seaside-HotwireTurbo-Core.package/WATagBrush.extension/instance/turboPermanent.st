*Seaside-HotwireTurbo-Core
turboPermanent 
	"Sometimes, you want to ignore certain elements while morphing. 
	For example, you might have a popover that you want to keep open when the page refreshes. 
	You can flag such elements with data-turbo-permanent, and Turbo won’t attempt to morph them."

	self dataAttributeAt: 'turbo-permanent' put: true