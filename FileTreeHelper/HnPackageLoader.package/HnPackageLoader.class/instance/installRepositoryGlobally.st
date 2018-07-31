as yet unclassified
installRepositoryGlobally
	
	| grp |
	
	grp := MCRepositoryGroup default.
	repositories do: [ :each |
		grp addRepository: each
	].