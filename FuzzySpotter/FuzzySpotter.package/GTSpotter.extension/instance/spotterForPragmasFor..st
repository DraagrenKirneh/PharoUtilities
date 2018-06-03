*FuzzySpotter
spotterForPragmasFor: aStep
	<spotterOrder: 40>
	aStep listProcessor 
			allCandidates: [ PragmaType all ];
			title: 'Pragmas';
			itemName: [ :pragma | pragma keyword ];
			filter: self defaultFilterClass;
			wantsToDisplayOnEmptyQuery: false