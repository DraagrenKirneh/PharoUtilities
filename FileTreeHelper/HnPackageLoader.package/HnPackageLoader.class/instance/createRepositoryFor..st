initialization
createRepositoryFor: aDirectory

	| url repo |
	
	url := aDirectory asZnUrl.
	repo := MCFileTreeRepository basicFromUrl: url.
	repositories add: repo
	