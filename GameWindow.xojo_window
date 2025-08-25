#tag DesktopWindow
Begin DesktopWindow GameWindow
   Backdrop        =   0
   BackgroundColor =   &c00FFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   700
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   297960005
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Space Rocks"
   Type            =   0
   Visible         =   True
   Width           =   900
   Begin DesktopCanvas GameCanvas
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   654
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   46
      Transparent     =   False
      Visible         =   True
      Width           =   900
   End
   Begin Timer AsteroidTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   40
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Timer SoundTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Timer ControllerTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   0
      Period          =   150
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Timer KeyboardTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   20
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Timer RefreshTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   30
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopLabel ScoreLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Score: 0"
      TextAlignment   =   0
      TextColor       =   &c0000FF00
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   134
   End
   Begin DesktopLabel LivesLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   736
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Remaining Ships: 3"
      TextAlignment   =   3
      TextColor       =   &c0433FF00
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   144
   End
   Begin Timer ShipTimer
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   10
      RunMode         =   2
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopLabel HighScoreLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   364
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "High Score: 0"
      TextAlignment   =   2
      TextColor       =   &c0000FF00
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   171
   End
   Begin DesktopLabel LevelLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   193
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Level: 1"
      TextAlignment   =   0
      TextColor       =   &c0000FF00
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   134
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  Var scoreFile As FolderItem = SpecialFolder.ApplicationData.Child("SpaceRocksHighScore.txt")
		  
		  Var output As TextOutputStream = TextOutputStream.Create(scoreFile)
		  output.WriteLine(HighScore.ToString)
		  output.Close
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(key As String) As Boolean
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  mInputManager = New GameInputManager
		  
		  Var scoreFile As FolderItem = SpecialFolder.ApplicationData.Child("SpaceRocksHighScore.txt")
		  
		  If scoreFile.Exists Then
		    Var input As TextInputStream = TextInputStream.Open(scoreFile)
		    Var hs As String = Input.ReadLine
		    HighScore = Integer.FromString(hs)
		    input.Close
		  End If
		  
		  StartGame
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileNewGame() As Boolean Handles FileNewGame.Action
		  StartGame
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub CheckController()
		  If mDevice = Nil Then
		    For i As Integer = 0 To mInputManager.DeviceCount-1
		      If mInputManager.Device(i).Name.Left(7) = "Macally" Then
		        mDevice = mInputManager.Device(i)
		      End If
		    Next
		  End If
		  
		  If mDevice = Nil Then Return
		  
		  Var controllerButton As GameInputElement
		  
		  For i As Integer = 0 To mDevice.ElementCount-1
		    controllerButton = mDevice.Element(i)
		    
		    Select Case controllerButton.Name
		    Case "Button #1" // Forward
		      If controllerButton.Value = 1 Then
		        Ship.Thruster
		      End If
		    Case "Button #3" // Left
		      If controllerButton.Value = 1 Then
		        Ship.RotateLeft
		      End If
		    Case "Button #4" // Right
		      If controllerButton.Value = 1 Then
		        Ship.RotateRight
		      End If
		    Case "Button #5" // Fire
		      If controllerButton.Value = 1 Then
		        mShipMissile = Ship.Fire
		      End If
		    End Select
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateAsteroids()
		  Asteroids.RemoveAll
		  
		  Var xPos As Integer
		  Var yPos As Integer
		  For i As Integer = 1 To 4 + Level
		    xPos = App.Randomizer.InRange(1, GameCanvas.Width)
		    yPos = App.Randomizer.InRange(1, GameCanvas.Height \ 2)
		    
		    Var a As New Asteroid(xPos, yPos, Asteroid.Size.Large)
		    
		    Asteroids.Add(a)
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StartGame()
		  Score = 0
		  Lives = 3
		  
		  GenerateAsteroids
		  
		  Ship = New SpaceShip(GameCanvas.Width \ 2, GameCanvas.Height \ 2, &cffffff)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Asteroids() As Asteroid
	#tag EndProperty

	#tag Property, Flags = &h0
		HighScore As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Level As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Lives As Integer = 3
	#tag EndProperty

	#tag Property, Flags = &h0
		LowSound As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDevice As GameInputDevice
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInputManager As GameInputManager
	#tag EndProperty

	#tag Property, Flags = &h0
		Missiles() As Missile
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShipMissile As Missile
	#tag EndProperty

	#tag Property, Flags = &h0
		Score As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Ship As SpaceShip
	#tag EndProperty

	#tag Property, Flags = &h0
		ShipExplosion As ShipExplosionAnimation
	#tag EndProperty

	#tag Property, Flags = &h0
		ThrusterOn As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events GameCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.DrawingColor = &c000000
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		  For Each a As Asteroid In Asteroids
		    a.Draw(g)
		  Next
		  
		  If Ship <> Nil And Lives > 0 Then
		    Ship.Draw(g)
		  End If
		  
		  // The ship exploded so draw the explosion animation
		  If ShipExplosion <> Nil Then
		    ShipExplosion.Draw(g)
		    If ShipExplosion.Done Then
		      ShipExplosion = Nil
		      
		      // Add a new ship to the screen if they have more lives
		      If Lives > 0 Then
		        Ship = New SpaceShip(GameCanvas.Width \ 2, GameCanvas.Height \ 2, &cffffff)
		      End If
		    End If
		  End If
		  
		  For Each m As Missile In Missiles
		    m.Draw(g)
		  Next
		  
		  If Lives <= 0 Then
		    Const kGameOver = "Game Over"
		    g.DrawingColor = &cffffff
		    g.FontSize = 32
		    Var goWidth As Integer = g.TextWidth(kGameOver)
		    Var goHeight As Integer = g.TextHeight(kGameOver, 100)
		    g.DrawText("Game Over", (g.Width - goWidth) \ 2, (g.Height - goHeight) \ 2)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AsteroidTimer
	#tag Event
		Sub Action()
		  // Move all the asteroids and check if they've been hit
		  Var a As Asteroid
		  For ac As Integer = Asteroids.LastIndex DownTo 0
		    a = Asteroids(ac)
		    
		    For m As Integer = Missiles.LastIndex DownTo 0
		      Var newAsteroids() As Asteroid
		      Var asteroidScore As Integer
		      
		      // Was the asteroid hit by a missile?
		      asteroidScore = a.IsDestroyedByMissile(Missiles(m), newAsteroids)
		      If  asteroidScore > 0 Then
		        Score = Score + asteroidScore
		        Missiles.RemoveAt(m)
		        Asteroids.RemoveAt(ac)
		        
		        For Each na As Asteroid In newAsteroids
		          Asteroids.Add(na)
		        Next
		        a = Nil
		        Exit For
		      End If
		    Next
		    
		    If a <> Nil Then
		      // Was the asteroid hit by a ship?
		      If Ship <> Nil Then
		        Var newAsteroids() As Asteroid
		        
		        Var asteroidScore As Integer = a.IsDestroyedByShip(Ship, newAsteroids)
		        If  asteroidScore > 0 Then
		          ShipExplosion = New ShipExplosionAnimation(Ship.X, Ship.Y, 1.0)
		          Ship = Nil
		          
		          Score = Score + asteroidScore
		          Lives = Lives - 1
		          
		          Asteroids.RemoveAt(ac)
		          
		          For Each na As Asteroid In newAsteroids
		            Asteroids.Add(na)
		          Next
		          a = Nil
		          Continue
		        End If
		      End If
		      
		      a.Move
		      
		      // Asteroid wrap around screen edges
		      If a.Y > GameCanvas.Height Then
		        a.Y = 0
		      End If
		      
		      If (a.Y + a.Image.Height) < 0 Then
		        a.Y = GameCanvas.Height
		      End If
		      
		      If a.X > GameCanvas.Width Then
		        a.X = 0
		      End If
		      
		      If (a.X + a.Image.Width) < 0 Then
		        a.X = GameCanvas.Width
		      End If
		    End If
		    
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SoundTimer
	#tag Event
		Sub Action()
		  If LowSound Then
		    asteroids_tonelo.Volume = 100
		    asteroids_tonelo.Play
		  Else
		    asteroids_tonehi.Volume = 100
		    asteroids_tonehi.Play
		  End If
		  
		  LowSound = Not LowSound
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ControllerTimer
	#tag Event
		Sub Action()
		  If Ship Is Nil Then Return
		  
		  CheckController
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events KeyboardTimer
	#tag Event
		Sub Action()
		  If Keyboard.AsyncKeyDown(&h12) Then
		    // Press "1" to start a new game
		    StartGame
		    Return
		  End If
		  
		  If Ship Is Nil Then Return
		  
		  // Process keys
		  If Keyboard.AsyncKeyDown(&h7B) Then
		    // Left arrow key
		    Ship.RotateLeft
		  End If
		  If Keyboard.AsyncKeyDown(&h7C) Then
		    // Right arrow key
		    Ship.RotateRight
		  End If
		  
		  If Keyboard.AsyncKeyDown(&h31) Or Keyboard.AsyncCommandKey Or Keyboard.AsyncShiftKey Then
		    // Space or Command or Shift keys
		    Var m As Missile = Ship.Fire
		    If m <> Nil Then Missiles.Add(m)
		  End If
		  
		  If Keyboard.AsyncKeyDown(&h7E) Then
		    // Up arrow key
		    Ship.Thruster
		    Return
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RefreshTimer
	#tag Event
		Sub Action()
		  GameCanvas.Refresh(False)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ShipTimer
	#tag Event
		Sub Action()
		  // Move the ship and its missiles.
		  
		  // Move missiles
		  For i As Integer = Missiles.LastIndex DownTo 0
		    If Not Missiles(i).Move Then
		      Missiles.RemoveAt(i)
		    End If
		  Next
		  
		  // Move the ship
		  If Ship <> Nil Then
		    Ship.Move
		    
		    // Ship wraps around edges
		    If Ship.X > GameCanvas.Width Then Ship.X = 1
		    If Ship.X < 1 Then Ship.X = GameCanvas.Width
		    If Ship.Y > GameCanvas.Height Then Ship.Y = 1
		    If Ship.Y < 1 Then Ship.Y = GameCanvas.Height
		  End If
		  
		  ScoreLabel.Text = "Score: " + Score.ToString
		  
		  If Score > HighScore Then
		    HighScore = Score
		  End If
		  
		  HighScoreLabel.Text = "High Score: " + HighScore.ToString
		  LivesLabel.Text = "Remaining Ships: " + Lives.ToString
		  
		  If Asteroids.LastIndex < 0 Then
		    // Cleared the screen, so generate more asteroids
		    // and increase their speed.
		    
		    Level = Level + 1
		    AsteroidTimer.Period = Max(AsteroidTimer.Period - 5, 5)
		    
		    GenerateAsteroids
		  End If
		  
		  LevelLabel.Text = "Level: " + Level.ToString
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
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
		Name="Interfaces"
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
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ThrusterOn"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Score"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Lives"
		Visible=false
		Group="Behavior"
		InitialValue="3"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LowSound"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
