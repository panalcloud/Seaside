baselines
baselinepharo: spec

	spec
		for: #squeakCommon
		do: [ spec
				package: 'Seaside-Canvas' with: [ spec includes: #('Seaside-Pharo-Canvas') ];
				package: 'Seaside-Development' with: [ spec includes: #('Seaside-Pharo-Development') ];
				package: 'Seaside-Environment' with: [ spec includes: #('Seaside-Pharo-Environment') ];
				package: 'Seaside-Flow' with: [ spec includes: #('Seaside-Pharo-Flow') ];
				package: 'Seaside-Tests-Development' with: [ spec includes: #('Seaside-Tests-Pharo-Development') ];
				package: 'Seaside-Tests-Flow' with: [ spec includes: #('Seaside-Tests-Pharo-Continuation') ];
				package: 'Seaside-Tests-Functional' with: [ spec includes: #('Seaside-Tests-Pharo-Functional') ];
				package: 'Seaside-Pharo-Canvas' with: [ spec requires: #('Seaside-Core' 'Seaside-Canvas') ];
				package: 'Seaside-Pharo-Environment' with: [ spec requires: #('Seaside-Environment' 'Seaside-Core' 'Seaside-Canvas') ];
				package: 'Seaside-Tests-Pharo-Development' with: [ spec requires: #('Seaside-Tests-Development' 'Seaside-Pharo-Development') ];
				package: 'Seaside-Tests-Pharo-Functional' with: [ spec requires: #('Seaside-Tests-Functional' 'Seaside-Tests-Environment' 'Seaside-Pharo-Environment') ];
				package: 'Seaside-Tests-Canvas' with: [ spec includes: #('Seaside-Tests-Pharo-Canvas') ];
				package: 'Seaside-Tests-Pharo-Canvas' with: [ spec requires: #('Seaside-Tests-Canvas') ] ].

	spec
		for: #pharo
		do: [ spec
				package: 'Seaside-Core' with: [ spec includes: #('Seaside-Pharo-Core') ];
				package: 'Seaside-Pharo-Core' with: [ spec requires: #('Seaside-Core') ];
				package: 'Seaside-Email' with: [ spec includes: #('Seaside-Pharo-Email') ];
				package: 'Seaside-Pharo-Email' with: [ spec requires: #('Seaside-Email' 'Seaside-Pharo-Core') ];
				package: 'Seaside-Tools-Web' with: [ spec includes: #('Seaside-Pharo-Tools-Web') ];
				package: 'Seaside-Pharo-Development' with: [ spec requires: #('Seaside-Development' 'Seaside-Pharo-Tools-Web' 'Seaside-Pharo-Flow') ];
				package: 'Seaside-Pharo-Tools-Web' with: [ spec requires: #('Seaside-Tools-Web' 'Seaside-Core' 'Seaside-Canvas') ];
				package: 'Seaside-Pharo-Continuation' with: [ spec requires: #('Seaside-Core' 'Seaside-Continuation') ];
				package: 'Seaside-Pharo-Flow' with: [ spec requires: #('Seaside-Flow' 'Seaside-Pharo-Continuation') ];
				package: 'Seaside-Tests-Email' with: [ spec includes: #('Seaside-Tests-Pharo-Email') ];
				package: 'Seaside-Tests-Pharo-Email' with: [ spec requires: #('Seaside-Email' 'Seaside-Pharo-Email' 'Grease Core Tests') ];
				package: 'Seaside-Tests-Pharo-Continuation' with: [ spec requires: #('Seaside-Pharo-Continuation') ];
				package: 'Seaside-Tests-Core' with: [ spec includes: #('Seaside-Tests-Pharo-Core') ];
				package: 'Seaside-Tests-Pharo-Core' with: [ spec requires: #('Seaside-Pharo-Core' 'Seaside-Tests-Core') ] ].

	spec
		for: #(#'pharo4.x' #'pharo5.x' #'pharo6.x' #'pharo7.x')
		do: [ spec
				package: 'Seaside-Tools-Core' with: [ spec includes: #('Seaside-Pharo-Tools-Spec') ];
				package: 'Seaside-Pharo-Tools-Spec' with: [ spec requires: #('Seaside-Tools-Core') ] ].

	spec
		for: #(#'pharo8.x' #'pharo9.x')
		do: [ spec
				package: 'Seaside-Tools-Core' with: [ spec includes: #('Seaside-Pharo-Tools-Spec2') ];
				package: 'Seaside-Pharo-Tools-Spec2' with: [ spec requires: #('Seaside-Tools-Core') ] ].
			
	spec
		for: #(#'pharo10.x' #'pharo11.x' #'pharo12.x' #'pharo13.x')
		do: [ 
			spec 
				package: 'Seaside-Microdown' with: [ spec requires: #('Seaside-Canvas' "TODO: requires microdown") ];
				package: 'Seaside-Tests-Microdown' with: [ spec requires: #('Seaside-Microdown') ];
				package: 'Seaside-Tools-Core' with: [ spec includes: #('Seaside-Pharo100-Tools-Spec2') ];
				package: 'Seaside-Pharo100-Tools-Spec2' with: [ spec requires: #('Seaside-Tools-Core') ].
				
			spec
				group: 'Tests' with: #('Seaside-Tests-Microdown') ]