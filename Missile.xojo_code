#tag Class
Protected Class Missile
	#tag Method, Flags = &h0
		Sub Constructor(startX As Double, startY As Double, startDirection As Double)
		  // Create a missile at the starting position and heading in
		  // in the direction the ship is pointing.
		  
		  Var offset As Integer = 20
		  
		  X = startX + offset
		  Y = startY + offset
		  
		  StartPoint = New Point(X, Y)
		  
		  Direction = startDirection
		  
		  Var shoot As Sound = asteroids_shoot.Clone
		  shoot.Play
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  // Draw the missile
		  
		  Var missilePic As New Picture(kWidth, kHeight)
		  
		  missilePic.Graphics.DrawingColor = &cffffff
		  missilePic.Graphics.FillRoundRectangle(0, 0, _
		  missilePic.Graphics.Width, missilePic.Graphics.Height, 10, 10)
		  
		  // Create is as a vector so that it can be rotated in the direction
		  // the ship is facing.
		  Var s As New PixmapShape(missilePic)
		  s.Rotation = Direction * 0.01745329251
		  
		  g.DrawObject(s, X, Y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Move() As Boolean
		  // Move the missile
		  
		  Const kSpeed = 5 // pixels to move
		  
		  // Calcuate new X, Y position
		  Var radian As Double = Direction * 0.01745329251
		  Var xMove As Double
		  Var yMove As Double
		  
		  xMove = Cos(radian) * kSpeed
		  
		  // Sine gives you the y position of the point on the circle
		  // starting from the center y position.
		  yMove = Sin(radian) * kSpeed
		  
		  X = X + xMove
		  Y = Y + yMove
		  
		  Var currPoint As New Point(X, Y)
		  If StartPoint.DistanceTo(currPoint) > 500 Then
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Direction As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		MissileRect As Realbasic.Rect
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return New Realbasic.Rect(X, Y, kWidth, kHeight)
			  
			End Get
		#tag EndGetter
		Rect As Realbasic.Rect
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		StartPoint As Point
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Double
	#tag EndProperty


	#tag Constant, Name = kHeight, Type = Double, Dynamic = False, Default = \"5", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kWidth, Type = Double, Dynamic = False, Default = \"5", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Direction"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
