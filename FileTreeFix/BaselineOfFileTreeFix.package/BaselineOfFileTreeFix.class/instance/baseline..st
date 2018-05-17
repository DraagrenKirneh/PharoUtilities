baselines
baseline: spec 

	<baseline>
	
	spec for: #common do: [ 
		spec project: 'Ston' with: [
			spec
				className: #ConfigurationOfSton;
				versionString: #stable;
				repository: 'http://ss3.gemstone.com/ss/STON/'
			];
		blessing: #baseline;
		package: #'FileTreeFix';
		group: 'default' with: #('FileTreeFix')	
	]