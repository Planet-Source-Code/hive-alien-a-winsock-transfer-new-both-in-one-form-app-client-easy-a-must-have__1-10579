VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FraServerFraServer 
   BackColor       =   &H00E0E0E0&
   Caption         =   "Server"
   ClientHeight    =   5550
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8640
   LinkTopic       =   "Form2"
   ScaleHeight     =   5550
   ScaleWidth      =   8640
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton Btn_Listen 
      Caption         =   "Listen for file"
      Height          =   375
      Left            =   6720
      TabIndex        =   34
      Top             =   4440
      Width           =   1695
   End
   Begin VB.CommandButton Btn_Send 
      Caption         =   "Send"
      Height          =   375
      Left            =   4680
      TabIndex        =   33
      Top             =   4440
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Client Settings"
      ForeColor       =   &H00000000&
      Height          =   2295
      Left            =   120
      TabIndex        =   25
      Top             =   3120
      Width           =   4335
      Begin VB.Timer Timer2 
         Left            =   2760
         Top             =   120
      End
      Begin VB.TextBox Txt_File2 
         Height          =   285
         Left            =   120
         TabIndex        =   26
         Text            =   "C:\"
         Top             =   600
         Width           =   4095
      End
      Begin MSComctlLib.ProgressBar FileBar2 
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   1920
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   450
         _Version        =   393216
         Appearance      =   0
         Scrolling       =   1
      End
      Begin MSWinsockLib.Winsock Winsock_Receive 
         Left            =   3360
         Top             =   120
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin VB.Label Lbl_Averages2 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Average: 0 / KBps"
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   1800
         TabIndex        =   32
         Top             =   1680
         Width           =   2415
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Filename: -"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   1200
         Width           =   4095
      End
      Begin VB.Label Lbl_FileSize2 
         BackStyle       =   0  'Transparent
         Caption         =   "Filesize: 0 kb"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   960
         Width           =   4095
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Save File to:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   29
         Top             =   360
         Width           =   4335
      End
      Begin VB.Label Lbl_Complete2 
         BackStyle       =   0  'Transparent
         Caption         =   "Complete: 0%"
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   1680
         Width           =   1575
      End
   End
   Begin MSWinsockLib.Winsock Winsock_Send 
      Left            =   3480
      Top             =   840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Frame Fra_Advanced 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Advanced Settings"
      Height          =   3615
      Left            =   4560
      TabIndex        =   8
      Top             =   720
      Width           =   3975
      Begin VB.TextBox Txt_Port2 
         Height          =   285
         Left            =   2160
         TabIndex        =   19
         Text            =   "0"
         Top             =   1080
         Width           =   1695
      End
      Begin VB.TextBox Txt_CurrentIP 
         Height          =   285
         Left            =   2160
         TabIndex        =   18
         Top             =   2520
         Width           =   1695
      End
      Begin VB.TextBox Txt_RemoteIP 
         Height          =   285
         Left            =   120
         TabIndex        =   12
         Text            =   "127.0.0.1"
         Top             =   1920
         Width           =   1815
      End
      Begin VB.TextBox Txt_Port 
         Height          =   285
         Left            =   120
         TabIndex        =   10
         Text            =   "0"
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Label Lbl_Status2 
         BackColor       =   &H00E0E0E0&
         Caption         =   "winsock State"
         Height          =   255
         Left            =   2160
         TabIndex        =   24
         Top             =   3240
         Width           =   1695
      End
      Begin VB.Label Lbl_Status 
         BackColor       =   &H00E0E0E0&
         Caption         =   "winsock State"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   3240
         Width           =   1815
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "(0 = free port, the port has to be the same in the server form)"
         Height          =   615
         Left            =   2160
         TabIndex        =   22
         Top             =   1560
         Width           =   1695
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Port to listen to:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   2160
         TabIndex        =   21
         Top             =   600
         Width           =   1695
      End
      Begin VB.Label lbl_ExternalIP 
         BackStyle       =   0  'Transparent
         Caption         =   "Your External IP:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2160
         TabIndex        =   20
         Top             =   2280
         Width           =   1695
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "SEND  LISTEN"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   600
         TabIndex        =   17
         Top             =   240
         Width           =   3255
      End
      Begin VB.Line Line1 
         X1              =   2040
         X2              =   2040
         Y1              =   240
         Y2              =   3480
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "(the IP adress you connect to: local 127.0.0.1)"
         Height          =   615
         Left            =   120
         TabIndex        =   13
         Top             =   2280
         Width           =   1815
      End
      Begin VB.Label Lbl_Info 
         BackStyle       =   0  'Transparent
         Caption         =   "(the port has to be the same in the client form)"
         Height          =   495
         Left            =   120
         TabIndex        =   11
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label Lbl_Port 
         BackStyle       =   0  'Transparent
         Caption         =   "Port/IP to connect to:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   495
         Left            =   120
         TabIndex        =   9
         Top             =   600
         Width           =   1575
      End
   End
   Begin VB.Frame FraServer 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Server Settings"
      ForeColor       =   &H00000000&
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   4335
      Begin VB.CommandButton Btn_Browse 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Browse"
         Height          =   375
         Left            =   3120
         MaskColor       =   &H00E0E0E0&
         TabIndex        =   15
         Top             =   600
         Width           =   1095
      End
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   2880
         Top             =   120
      End
      Begin MSComctlLib.ProgressBar FileBar 
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1920
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   450
         _Version        =   393216
         Appearance      =   0
         Scrolling       =   1
      End
      Begin MSComDlg.CommonDialog Dlg_Browser 
         Left            =   3840
         Top             =   120
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.TextBox Txt_File 
         Height          =   285
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   1
         Text            =   "C:\"
         Top             =   600
         Width           =   2895
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Filename:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   16
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Lbl_Averages 
         Alignment       =   2  'Zentriert
         BackStyle       =   0  'Transparent
         Caption         =   "Average: 0 / KBps"
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   2400
         TabIndex        =   7
         Top             =   1680
         Width           =   1815
      End
      Begin VB.Label Lbl_Complete 
         BackStyle       =   0  'Transparent
         Caption         =   "Complete: 0%"
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   1680
         Width           =   2175
      End
      Begin VB.Label Lbl_FileName 
         BackStyle       =   0  'Transparent
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   960
         TabIndex        =   4
         Top             =   1200
         Width           =   1335
      End
      Begin VB.Label Lbl_FileSize 
         BackStyle       =   0  'Transparent
         Caption         =   "Filesize: 0 kb"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   960
         Width           =   4095
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Selected File:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   360
         Width           =   4335
      End
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Zentriert
      BackStyle       =   0  'Transparent
      Caption         =   "made by www.Inter-Dev.de"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   615
      Left            =   0
      TabIndex        =   14
      Top             =   0
      Width           =   8535
   End
End
Attribute VB_Name = "FraServerFraServer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim DoneBytes As Long
Dim NextPart As Boolean
Dim DoneRec As Long                   '# for calculating kbps
Dim DownloadingFile As Integer          '# freefile for open files




' Ronny R. Germany Berlin
' Contact me: manager@directbox.com
' Sorry for bad english... i'm german, but I become better... I swear
'
' I made this because a lot of examples on PSC are not precise enought
' There are a lot of unforseen errors
' I hope you enjoy!


Private Sub Btn_Browse_Click()
On Error GoTo Quit
    Dlg_Browser.ShowOpen
    
    Txt_File.Text = Dlg_Browser.FileName
    Lbl_FileSize.Caption = "Filesize: " & FileLen(Dlg_Browser.FileName)
    Lbl_FileName.Caption = Dlg_Browser.FileTitle


Quit:

End Sub

Private Sub Btn_Listen_Click()
On Error GoTo ErrorHandler:
        
        
        'the following routines are nessessary to beware of errors
        If Winsock_Receive.State <> sckClosed Then          '# Reset if winsock was in use
            Winsock_Receive.Close
        End If
        Winsock_Receive.Protocol = sckTCPProtocol           '# We work with TCP now
        '# Init the Winsock
        If Txt_Port2.Text <> 0 Then                          '# select the port you entered
                Winsock_Receive.LocalPort = Txt_Port2.Text   '# set the winsock receive port to the selected one
        Else
                Winsock_Receive.LocalPort = 0               '# in that case 0 means to select a free port
        End If
        Winsock_Receive.Listen                              '# listning on port selected above and current external and internal IP
        Lbl_Status2.Caption = Winsock_Receive.State & " on port: " & Winsock_Receive.LocalPort
        
Exit Sub
        
ErrorHandler:
    MsgBox Err.Description, vbCritical
End Sub

Private Sub Btn_Send_Click()
On Error GoTo ErrorHandler:
    
Dim StartTime As Long
    
        'You are looking for the remoteadress
        
        'the following routines are nessessary to beware of errors
        If Winsock_Send.State <> sckClosed Then             '# Reset if winsock was in use
            Winsock_Send.Close
        End If
        Winsock_Send.Protocol = sckTCPProtocol              '# We work with TCP now
        Winsock_Send.LocalPort = 0                          '# The Localport can be a free port and unknow by you because you just need it to initialize
        '# Init the Winsock
        If Txt_Port.Text <> 0 Then                          '# select the port you entered
            Winsock_Send.RemotePort = Txt_Port.Text         '# set the winsock send remoteport; on the same port the client should listen already
            Winsock_Send.RemoteHost = Txt_RemoteIP.Text     '# that should be the same ip the client uses (Local 127.0.0.1)
        Else
            MsgBox "Select a Port first!"
            Exit Sub
        End If
        Winsock_Send.Connect                                '# connecting to port
        Lbl_Status.Caption = Winsock_Send.State & " to port: " & Winsock_Send.RemotePort
          
        StartTime = Timer
          
        Do While Winsock_Send.State <> 7 And Timer - StartTime < 30
            DoEvents                                        '# Wait until the connections ethablishes
        Loop                                                '  there must be a timeout check else it will never end
        
        If Timer - StartTime > 30 Then GoTo Timeout         '# When Timeout
       
        
        
       
        '-----------------------------------------------------
        '# Now we come to the send routine
        '# You have to open a file in binary mode, read out 2k packages and send them to the connected port
        '# Letz start
        
        
            Dim OpenedFileNbr, FileLength, Back
            Dim Temp As String
            Dim PackageSize As Long
            Dim LastData As Boolean
            
            FileLength = FileLen(Txt_File.Text)
            FileBar.Max = FileLength
            FileBar.Value = 0
            
            
            Winsock_Send.SendData ("FILEINFO|" & FileLength & "|" & Lbl_FileName.Caption & "|")  '# You can add more like filename , description ...
            
            StartTime = Timer
            
                Do While NextPart = False And Timer - StartTime < 30        '# When the next Package where not send the procedure will quit after 30 secs timeout
                    DoEvents
                Loop
                
            If Timer - StartTime > 30 Then GoTo Timeout         '# When Timeout
                        
            PackageSize = 2048                                  '#  Declare the size of the packages to send
            'On Error GoTo ErrorHandler
                    
                    LastData = False                            '#  You'll see that we need that to make the received
                                                                '   file excactly the same size like the original one
                    NextPart = True                             '#  NextPart is a form-global variable which
                                                                '   contains wheter the package was send or not
                                                                '   take a look at the winsock_sendcomplete event
                    
                    OpenedFileNbr = FreeFile                    '# Find a free Filenumber to open your file
                    Open Txt_File.Text For Binary Access Read As OpenedFileNbr
                        
                        'FileLength = FileLen(Txt_File.Text)
                        Temp = ""
                        Do Until EOF(OpenedFileNbr)
                            ' Adjust PackageSize at end so we don't read too much data
                            If FileLength - Loc(OpenedFileNbr) <= PackageSize Then
                                PackageSize = FileLength - Loc(OpenedFileNbr) + 1
                                LastData = True
                            End If
                            
                            Temp = Space$(PackageSize)                  '# Make string empty for data
                            Get OpenedFileNbr, , Temp                   '# Load data into string
                            
                            If Winsock_Send.State <> 7 Then Exit Sub    '# Checks again wether the connections exist or not
                            On Error Resume Next
                            
                            StartTime = Timer
                                Do While NextPart = False And Timer - StartTime < 30        '# When the next Package where not send the procedure will quit after 30 secs timeout
                                    DoEvents
                                Loop
                            
                            If Timer - StartTime > 30 Then GoTo Timeout '# When Timeout
                            
                            If Winsock_Send.State = 7 Then              '# Check state again
                            
                            If LastData = True Then
                                Temp = Mid(Temp, 1, Len(Temp) - 1)      '# We added one byte above, which we don't wanna send
                                                                        '   therefore we need lastdata
                            End If
                                FileBar.Value = FileBar.Value + Len(Temp)
                                Lbl_Complete.Caption = "Complete: " & Int(100 / FileLength * FileBar.Value) & " %"
                                DoneBytes = DoneBytes + Len(Temp)
                                Winsock_Send.SendData Temp              '# Send datapackage
                                NextPart = False                        '# Set the senddata check
                            Else
                                Exit Sub
                            End If
                    Loop

                            Close #OpenedFileNbr                        '# Last package was send, now you can close the file
                            FileBar.Value = 0
                            Do While NextPart = False                   '# You have to wait until the sendprogress is done because
                                DoEvents                                '   when we close the winsock before the file was send completly
                            Loop                                        '   data will be lost --> We use the close event in the client to
                                                                        '   close the received file too
                            
                            Winsock_Send.Close
                            Exit Sub
Timeout:
            MsgBox "Timeout"                                    '# write what you want to say to the user
                            
        '# Quit
        '-----------------------------------------------------
Exit Sub
        
ErrorHandler:
    MsgBox Err.Description, vbCritical
End Sub

Private Sub Command1_Click()
    End
End Sub

Private Sub Form_Load()
    'Frm_Client.Top = Frm_Server.Top + Frm_Server.Height
    'Frm_Client.Show
End Sub

Private Sub Label2_Click()
    OpenUrl ("http://www.inter-dev.de")
End Sub

Private Sub Timer2_Timer()
    Lbl_Averages.Caption = "Average: " & Format(DoneRec / 1000, "###0.0") & " / KBps"
    DoneRec = 0
End Sub

Private Sub Winsock_Receive_Close()
    Close #DownloadingFile '# File Ready
    FileBar2.Value = 0
    Winsock_Receive.Close
End Sub

Private Sub Winsock_Receive_ConnectionRequest(ByVal requestID As Long)

    '# accept the connections
    If Winsock_Receive.State <> sckClosed Then
        Winsock_Receive.Close
    End If
    Winsock_Receive.Accept requestID
    
    
    '# We use the close event to close the file afterwards
    
        
End Sub

Private Sub Winsock_Receive_DataArrival(ByVal bytesTotal As Long)
    Dim StrData As String
    Dim lNewValue As Long
    Dim Info As String
    Dim Glob_FileName As String
    
    StrData = ""                                    '# You only get filedata trought that winsock
                                                    ' so you only have to write it in the file opened before
    Winsock_Receive.GetData StrData, vbString
    
    
    '# Thats some file info send before we receive the first package
    Info = Left(StrData, 8)
    If Info = "FILEINFO" Then
        FileBar2.Max = GetField(StrData, 2)
        Glob_FileName = GetField(StrData, 3)
        
        Txt_File.Text = Glob_FileName
        DownloadingFile = FreeFile
        Open App.Path & "\" & Glob_FileName For Binary Access Write As #DownloadingFile

        Exit Sub
    End If

    FileBar2.Value = FileBar2.Value + bytesTotal
    DoneRec = DoneRec + bytesTotal
    Lbl_Complete2.Caption = "Complete: " & Int(100 / FileBar2.Max * FileBar2.Value) & " %"
    
    Put #DownloadingFile, , StrData
    DoEvents
    
    Debug.Print Len(StrData)
    

End Sub

Public Function GetField(Field As String, FieldPos As Long) As String

'# That 's an routine to get elements from a string


Dim FieldCounter As Long
Dim IPPositionStart As Long
Dim IPPositionEnde As Long
Dim TempPosition As Long
Dim OpenedID As String
    
    TempPosition = 1
    
    For FieldCounter = 1 To FieldPos - 1 Step 1
        IPPositionStart = InStr(TempPosition, Field, "|", vbTextCompare)
        TempPosition = IPPositionStart + 1
    Next FieldCounter
    IPPositionStart = IPPositionStart + 1
    IPPositionEnde = InStr(IPPositionStart, Field, "|", vbTextCompare)
On Error Resume Next
    If IPPositionEnde >= IPPositionStart Then
        GetField = Mid(Field, IPPositionStart, IPPositionEnde - IPPositionStart)
    End If

End Function

Private Sub Winsock_Send_Connect()
    Lbl_Status.Caption = Winsock_Send.State & " to port: " & Winsock_Send.RemotePort
End Sub

Private Sub Winsock_Send_SendComplete()
    NextPart = True
End Sub
