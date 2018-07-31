*IconTaskbar
newTaskbarButtonIn: aTaskbar for: aWindow
	"Answer a taskbar button morph for the given window."

	| lm button |

	aWindow isActive
		ifTrue: [ ].
	lm := self
		newRowIn: aTaskbar
		for: {(aWindow taskbarIcon ifNil: [^nil]) asMorph}.
	lm cellInset: 2.
	button := self
		newButtonIn: aTaskbar
		for: aWindow
		getState: #isActive
		action: #taskbarButtonClicked
		arguments: #()
		getEnabled: nil
		label: lm
		help: nil.
	button
		useSquareCorners;
		wantsYellowButtonMenu: true;
		getMenuSelector: #taskbarButtonMenu:;
		on: #mouseEnter send: #taskbarButtonEntered:event:in: to: aWindow withValue: button;
		on: #mouseLeave send: #taskbarButtonLeft:event:in: to: aWindow withValue: button.
	aWindow isCollapsed
		ifTrue:  [  ]
		ifFalse: [  ].
	^button