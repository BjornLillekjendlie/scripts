#tag Class
Protected Class CocoaMenuItemEditSubstitutions
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Substitutions", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Substitutions"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ersetzungen"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE8\x87\xAA\xE5\x8B\x95\xE7\xBD\xAE\xE6\x8F\x9B"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Substitutions"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Sostituzioni"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vervanging"
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
