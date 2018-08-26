# PharoUtilities

Extra Utility code on top of Pharo 6.1
FileTreeFix enables sorted json output when writing filetree data which improves diff of metadata.
FuzzySpotter changes most of the searching in Spotter to use FuzzyMatching.
IconTaskbar changes the taskbar to only show icons, and to be centered in the middle.

Load using

```smalltalk
Metacello new
   baseline: 'PharoUtilities';
   repository: 'github://DraagrenKirneh/PharoUtilities';
   load.
```
