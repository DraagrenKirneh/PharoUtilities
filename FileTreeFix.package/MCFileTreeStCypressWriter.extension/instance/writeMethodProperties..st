*FileTreeFix
writeMethodProperties: classMethodDefinitions
    "Issue 33: https://github.com/dalehenrich/filetree/issues/33"

   | properties classMethodsMap instanceMethodMap |

   properties := OrderedDictionary new.
	instanceMethodMap := OrderedDictionary new.
	classMethodsMap := OrderedDictionary new.
	
   properties 
		at: 'instance' put: instanceMethodMap;
   		at: 'class'    put: classMethodsMap.

   (classMethodDefinitions sort: [ :a :b | a selector <= b selector ]) 
		do: [ :methodDefinition | | dict |
			dict := (methodDefinition classIsMeta
				ifTrue: [ classMethodsMap ]
				ifFalse: [ instanceMethodMap ]).
			dict at: methodDefinition selector asString put: methodDefinition timeStamp 
		].
		
    STON put: properties asJsonOnStreamPretty: fileStream