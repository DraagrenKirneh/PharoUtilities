baselines
baseline: spec

	<baseline>

	spec for: #'common' do: [
								
		spec 
			package: #FileTreeFix;
			package: #FuzzySpotter;	
			package: #IconTaskbar;
			
			group: 'filetree' with: #(FileTreeFix);
			group: 'spotter' with: #(FuzzySpotter);
			group: 'taskbar' with: #(IconTaskbar);
			group: 'default' with: #('filetree' 'spotter' 'taskbar')	
	]