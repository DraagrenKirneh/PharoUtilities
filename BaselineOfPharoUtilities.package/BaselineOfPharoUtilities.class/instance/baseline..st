baselines
baseline: spec

	<baseline>

	spec for: #common do: [
								
		spec project: #Ston with: [
			spec
				className: 'ConfigurationOfSton';
				versionString: #'bleedingEdge';
				repository: 'http://ss3.gemtalksystems.com/ss/STON'
			].						
								
		spec 
			package: #FileTreeFix with: [ spec requires: #(Ston) ];
			package: #FuzzySpotter;	
			package: #IconTaskbar;
			
			group: 'filetree' with: #(FileTreeFix);
			group: 'spotter' with: #(FuzzySpotter);
			group: 'taskbar' with: #(IconTaskbar);
			group: 'default' with: #('filetree' 'spotter' 'taskbar')	
	]