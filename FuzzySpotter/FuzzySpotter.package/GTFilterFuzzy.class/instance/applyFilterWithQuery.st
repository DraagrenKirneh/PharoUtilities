private
applyFilterWithQuery
	
	| result |

	result := FuzzyMatcher allSortedByScoreMatching: query 
		in: self allItems
		by: [ :each | self itemFilterNameFor: each ].
	
	self 
		addItems: (result takeFirst: self itemsLimit);
		filteredItems: result
