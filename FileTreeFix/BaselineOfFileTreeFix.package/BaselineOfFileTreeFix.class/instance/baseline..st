baselines
baseline: spec 

	<baseline>
	
	spec for: #common do: [ 
		spec
			configuration: 'Ston'
			with: [ 
				spec
					versionString: #stable;
					repository: 'http://ss3.gemstone.com/ss/STON'
				];
			blessing: #baseline;
			package: #'FileTreeFix';
			group: 'default' with: #('FileTreeFix')	
	]