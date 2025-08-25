#tag Class
Protected Class SpaceShip
	#tag Method, Flags = &h0
		Sub Constructor(x As Integer, y As Integer, c As Color)
		  Self.X = x
		  Self.Y = y
		  
		  ShipColor = c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  // Draw the space ship
		  // ===
		  //  =====
		  // ===
		  
		  Var shipPic As New Picture(kSize, kSize)
		  
		  shipPic.Graphics.DrawingColor = ShipColor
		  
		  Var shipPath As New GraphicsPath
		  shipPath.MoveToPoint(0, 0)
		  shipPath.AddLineToPoint(kSize, kSize / 2)
		  shipPath.AddLineToPoint(0, kSize)
		  shipPath.AddLineToPoint(kSize / 4, kSize / 2)
		  shipPath.AddLineToPoint(0, 0)
		  shipPic.Graphics.DrawPath(shipPath)
		  
		  // Display the thruster graphic for up to 10 ticks after
		  // the thruster was used.
		  If System.Ticks - ThrustAnimation < 10 Then
		    Var thrustPath As New GraphicsPath
		    thrustPath.MoveToPoint(3, 8)
		    thrustPath.AddLineToPoint(0, 10)
		    thrustPath.AddLineToPoint(3, 13)
		    shipPic.Graphics.DrawPath(thrustPath)
		  End If
		  
		  // Create a Vector shape for the bitmap so
		  // that it can be rotated later.
		  Var s As New PixmapShape(shipPic)
		  
		  // Set the center of the image for rotation
		  s.X = s.Width / 2 'kSize \ 2
		  s.Y = s.Height / 2 'kSize \ 2
		  
		  // Rotation is always specified in degrees, but vector
		  // graphics need it converted to radians.
		  // pi/180 = 0.01745329251
		  s.Rotation = Rotation * 0.01745329251
		  
		  g.DrawObject(s, X, Y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Fire() As Missile
		  // Create a missile in the center of the ship
		  
		  If System.Ticks - FireDelay > 10 Then
		    Var m As New Missile(Self.X - kSize / 2, Self.Y - kSize / 2, Rotation)
		    FireDelay = System.Ticks
		    Return m
		  End If
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Move()
		  If CurrentSpeed = 0 Then Return
		  
		  // Calcuate new X, Y position
		  Var radian As Double = Direction * 0.01745329251
		  Var xMove As Double
		  Var yMove As Double
		  
		  xMove = Cos(radian) * CurrentSpeed
		  
		  // Sine gives you the y position of the point on the circle
		  // starting from the center y position.
		  yMove = Sin(radian) * CurrentSpeed
		  
		  X = X + xMove
		  Y = Y + yMove
		  
		  If Y < 0 Then Y = 0
		  If X < 0 Then X = 0
		  
		  LastDirection = Rotation
		  
		  // Eventually slow down
		  Const kSpeed As Double = 0.01 // pixels to move
		  If CurrentSpeed > 0 Then CurrentSpeed = CurrentSpeed - kSpeed
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotateLeft()
		  // Rotate the left
		  
		  If Rotation < kRotationDegrees Then Rotation = 360
		  
		  Rotation = Rotation - kRotationDegrees
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotateRight()
		  // Rotate the right
		  
		  If Rotation > (360 - kRotationDegrees) Then Rotation = 0
		  
		  Rotation = Rotation + kRotationDegrees
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Thruster()
		  // Increase thruster
		  If System.Ticks - ThrustAnimation < 2 Then
		    // Don't let the ship thrust too quickly
		    Return
		  End If
		  
		  Const kSpeed As Double = 0.10 // pixels to move
		  
		  If Direction = LastDirection Then
		    CurrentSpeed = CurrentSpeed + kSpeed
		    If CurrentSpeed > 10 Then CurrentSpeed = 10
		  Else
		    CurrentSpeed = CurrentSpeed * 0.10
		  End If
		  
		  Direction = Rotation
		  
		  ThrustAnimation = System.Ticks
		  
		  asteroids_thrust.Play
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentSpeed As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Direction As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FireDelay As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastDirection As Double
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return New Realbasic.Rect(X, Y, kSize, kSize)
			  
			End Get
		#tag EndGetter
		Rect As Realbasic.Rect
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Rotation As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ShipColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		ThrustAnimation As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Double
	#tag EndProperty


	#tag Constant, Name = kRotationDegrees, Type = Double, Dynamic = False, Default = \"10", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSize, Type = Double, Dynamic = False, Default = \"20", Scope = Private
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
			Name="ShipColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
		#tag ViewProperty
			Name="ThrustAnimation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
