#tag Class
Protected Class CocoaMenuItemShowColors
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "orderFrontColorPanel:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Show Colors", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Show Colors"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Farben einblenden"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x82\xAB\xE3\x83\xA9\xE3\x83\xBC\xE3\x83\x91\xE3\x83\x8D\xE3\x83\xAB\xE3\x82\x92\xE8\xA1\xA8\xE7\xA4\xBA"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Afficher les couleurs"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Mostra colori"
		#Tag Instance, Platform = Any, Language = bn, Definition  = \"\xE0\xA6\xB0\xE0\xA6\x82 \xE0\xA6\xAA\xE0\xA7\x8D\xE0\xA6\xB0\xE0\xA6\xA6\xE0\xA6\xB0\xE0\xA7\x8D\xE0\xA6\xB6\xE0\xA6\xA8"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Toon kleuren"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
