baselines
baseline: spec 

	<baseline>
	
	spec for: #common do: [ 
		spec project: 'Ston' with: [
			spec
				className: 'ConfigurationOfSton';
				versionString: #'bleedingEdge';
				repository: 'http://ss3.gemtalksystems.com/ss/STON'
			];
		blessing: #baseline;
		package: #'FileTreeFix';
		group: 'default' with: #('FileTreeFix')	
	]