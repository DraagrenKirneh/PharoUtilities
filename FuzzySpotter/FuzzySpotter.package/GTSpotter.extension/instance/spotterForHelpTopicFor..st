*FuzzySpotter
spotterForHelpTopicFor: aStep
	<spotterOrder: 200>
	aStep listProcessor 
			allCandidates: [ SystemHelp asHelpTopic gtAllSubtopics ];
			title: 'Help topics';
			itemName: [ :helpTopic | helpTopic title ];
			itemIcon: [ :helpTopic | helpTopic gtTopicIcon ];
			filter: self defaultFilterClass;
			wantsToDisplayOnEmptyQuery: true