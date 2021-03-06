#tag Class
Protected Class CocoaMenuItemTextCenter
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "alignCenter:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Center", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Center"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Zentriert"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE4\xB8\xAD\xE5\xA4\xAE\xE6\x8F\x83\xE3\x81\x88"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Centrer"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Centra"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Centreer"
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
