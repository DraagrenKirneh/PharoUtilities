*IconTaskbar
rejectsEvent: anEvent

	(anEvent isMouse and: [ anEvent isMouseDown ]) ifTrue: [ 
		^ (self submorphs anySatisfy: [ :each | 
        	each containsPoint: anEvent cursorPoint  
		]) not
    ].	

	^ super rejectsEvent: anEvent 