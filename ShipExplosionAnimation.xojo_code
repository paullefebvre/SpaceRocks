#tag Class
Protected Class ShipExplosionAnimation
	#tag Method, Flags = &h0
		Sub Constructor(x As Integer, y as Integer, duration As Double)
		  mStartTime = System.Microseconds * 0.000001
		  mDuration = duration
		  mX = x
		  mY = y
		  
		  ShipPoints(1) = 0
		  ShipPoints(2) = 0
		  ShipPoints(3) = 40
		  ShipPoints(4) = 20
		  ShipPoints(5) = 0
		  ShipPoints(6) = 40
		  ShipPoints(7) = 10
		  ShipPoints(8) = 20
		  ShipPoints(9) = 0
		  ShipPoints(10) = 0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  Var now As Double = System.Microseconds * 0.000001
		  Var qtyFrames As Integer = 20
		  Var curFrame As Integer = (now - mStartTime) / mDuration * qtyFrames
		  If curFrame >= qtyFrames Then
		    Done = True
		  Else
		    g.DrawPicture(GetPic(curFrame), mX, mY)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPic(frameNum As Integer) As Picture
		  Var shipPic As New Picture(40, 40)
		  shipPic.Graphics.DrawingColor = &cffffff
		  
		  For i As Integer = 0 To ShipPoints.LastIndex
		    If i <= 4 Or i >= 9 Then
		      ShipPoints(i) = ShipPoints(i) - 1
		    Else
		      ShipPoints(i) = ShipPoints(i) + 1
		    End If
		  Next
		  
		  Var explosionPath As New GraphicsPath
		  explosionPath.MoveToPoint(ShipPoints(1), ShipPoints(2))
		  For i As Integer = 3 To ShipPoints.LastIndex - 1 Step 2
		    explosionPath.AddLineToPoint(ShipPoints(i), ShipPoints(i + 1))
		  Next
		  
		  shipPic.Graphics.DrawPath(explosionPath)
		  
		  Return shipPic
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Done As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mDuration As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mStartTime As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mX As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ShipPoints(10) As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Done"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
