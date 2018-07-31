initialization
scan: dir depth: aNumber

	| items |
	
	aNumber > maxDepth ifTrue: [ ^ self ].  	
	items := dir childrenMatching: '.filetree;*.package'.
	items crLog.
	items size < 2 ifTrue: [ 
		dir directories	 do: [ :subDir | 
			self scan: subDir depth: aNumber + 1 
		].
		^ self
	].

	(items collect: [ :i | i extension ] as: Set) size = 2 
		ifFalse: [ self error ].

	self createRepositoryFor: dir
	