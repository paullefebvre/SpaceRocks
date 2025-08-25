#tag Class
Protected Class Asteroid
	#tag Method, Flags = &h1000
		Sub Constructor(x As Integer, y As Integer, size As Asteroid.Size)
		  // An asteroid can be created in large, medium or small sizes
		  Var colors() As Color
		  colors.Add(&cff0000)
		  colors.Add(&c00ff00)
		  colors.Add(&c0000ff)
		  
		  Self.X = x
		  Self.Y = y
		  Self.CurrentSize = size
		  
		  // Start the asteroid moving in a random direction
		  Var degree As Double = System.Random.InRange(1, 360)
		  Direction = degree * 0.01745329251 // convert to radians
		  
		  mSpeed = System.Random.InRange(1, 2)
		  
		  Var asteroidWidth As Integer
		  
		  Var g As Graphics
		  Select Case size
		  Case Asteroid.Size.Large
		    asteroidWidth = 80
		    
		  Case Asteroid.Size.Medium
		    asteroidWidth = 40
		  Case Asteroid.Size.Small
		    asteroidWidth = 20
		    
		  End Select
		  
		  Image = New Picture(asteroidWidth, asteroidWidth)
		  g = Image.Graphics
		  g.DrawingColor = &cffffff
		  
		  // Create the asteroid shape
		  // Replace with your own points (or image) if you want the
		  // asteroid to look different.
		  Var asteroidPath As New GraphicsPath
		  asteroidPath.MoveToPoint(asteroidWidth * 0.5, 0)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.75, 0)
		  asteroidPath.AddLineToPoint(asteroidWidth - 1, asteroidWidth * 0.25)
		  asteroidPath.AddLineToPoint(asteroidWidth - 1, asteroidWidth * 0.5)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.75, asteroidWidth * 0.625)
		  asteroidPath.AddLineToPoint(asteroidWidth - 1, asteroidWidth * 0.75)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.875, asteroidWidth - 1)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.75, asteroidWidth * 0.875)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.375, asteroidWidth - 1)
		  asteroidPath.AddLineToPoint(0, asteroidWidth * 0.5)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.375, asteroidWidth * 0.125)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.4375, asteroidWidth * 0.25)
		  asteroidPath.AddLineToPoint(asteroidWidth * 0.5, 0)
		  g.DrawPath(asteroidPath)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateAsteroids(ByRef newAsteroids() As Asteroid) As Integer
		  // When the asteroid is destroyed, new asteroids are created and points are awarded.
		  // A large asteroid splits into 2 medium asteroids.
		  // A medium asteroid splits into 2 small asteroids.
		  // Small asteroids disappear.
		  Var score As Integer
		  
		  Var asteroids() As Asteroid
		  
		  Var a As Asteroid
		  
		  Select Case CurrentSize
		  Case Size.Large
		    // Create two medium asteroids to replace the
		    // large one
		    a = New Asteroid(X, Y, Size.Medium)
		    asteroids.Add(a)
		    a = New Asteroid(X, Y, Size.Medium)
		    asteroids.Add(a)
		    
		    newAsteroids = asteroids
		    
		    score = 20
		    
		  Case Size.Medium
		    // Create two small asteroid to replace the medium one
		    a = New Asteroid(X, Y, Size.Small)
		    asteroids.Add(a)
		    a = New Asteroid(X, Y, Size.Small)
		    asteroids.Add(a)
		    
		    newAsteroids = asteroids
		    
		    score = 50
		    
		  Case Size.Small
		    // Asteroid is destroyed
		    score = 100
		  End Select
		  
		  explosion.Volume = 50
		  explosion.Play
		  Return score
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  g.DrawPicture(Image, X, Y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDestroyedByMissile(m As Missile, ByRef newAsteroids() As Asteroid) As Integer
		  // If a missle hits the asteroid, it is destroyed.
		  // This replaces it with smaller asteroids or
		  // removes it entirely.
		  // Asteroid also gets destroyed if it hits a ship.
		  // Points are given based on its size.
		  
		  Var rectSize As Integer
		  Select Case CurrentSize
		  Case Size.Small
		    rectSize = 20
		  Case Size.Medium
		    rectSize = 40
		  Case Size.Large
		    rectSize = 80
		  End Select
		  
		  Var asteroidRect As New REALbasic.Rect(X, Y, rectSize, rectSize)
		  Var missileRect As Realbasic.Rect = m.Rect
		  
		  If asteroidRect.Intersects(missileRect) Then
		    Return CreateAsteroids(newAsteroids)
		  End If
		  
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDestroyedByShip(s As SpaceShip, ByRef newAsteroids() As Asteroid) As Integer
		  // Asteroid also gets destroyed if it hits a ship.
		  // Points are given based on its size.
		  
		  Var rectSize As Integer
		  Select Case CurrentSize
		  Case Size.Small
		    rectSize = 20
		  Case Size.Medium
		    rectSize = 40
		  Case Size.Large
		    rectSize = 80
		  End Select
		  
		  Var asteroidRect As New REALbasic.Rect(X, Y, rectSize, rectSize)
		  Var shipRect As Realbasic.Rect = s.Rect
		  
		  If asteroidRect.Intersects(shipRect) Then
		    Return CreateAsteroids(newAsteroids)
		  End If
		  
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Move()
		  Var xMove As Double
		  Var yMove As Double
		  
		  // Cosine gives you the x position of the point on the circle
		  // starting from the center.
		  xMove = Cos(Direction) * mSpeed
		  
		  // Sine gives you the y position of the point on the circle
		  // starting from the center.
		  yMove = Sin(Direction) * mSpeed
		  
		  X = X + xMove
		  
		  Y = Y + yMove
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrentSize As Size
	#tag EndProperty

	#tag Property, Flags = &h0
		Direction As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSpeed As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Double
	#tag EndProperty


	#tag Enum, Name = Size, Type = Integer, Flags = &h0
		Large
		  Medium
		Small
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Image"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
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
