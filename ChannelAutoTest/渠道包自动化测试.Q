[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=70a912b1-841b-4463-9cb6-bdbf13564a40
Description=我的脚本1
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
n = Plugin.File.ReadINI("ChannelInstallerTest", "CurInstaller", "C:\Users\dc\Desktop\AutoTest\AutoTest\ChannelAutoTest\config.ini")
max = Plugin.File.ReadINI("ChannelInstallerTest", "MaxNum", "C:\Users\dc\Desktop\AutoTest\AutoTest\ChannelAutoTest\config.ini")
TracePrint n
TracePrint max


If n >= max Then 
	MsgBox "渠道包全部测试完毕"
	Call Plugin.File.WriteINI("ChannelInstallerTest", "CurInstaller", 0, "C:\Users\dc\Desktop\AutoTest\AutoTest\ChannelAutoTest\config.ini")
Else 
   channelInstaller = "Channel_" & n
   TracePrint channelInstaller
   fullPath = Plugin.File.ReadINI("ChannelInstallerTest", channelInstaller, "C:\Users\dc\Desktop\AutoTest\AutoTest\ChannelAutoTest\config.ini")
   Call Plugin.File.WriteFileEx("C:\Users\dc\Desktop\AutoTest\AutoTest\ChannelAutoTest\Log.txt", "开始进行" & fullPath & "测试")
   TracePrint "渠道包测试完毕"
   curInstaller = n + 1
   TracePrint curInstaller
   Call Plugin.File.WriteINI("ChannelInstallerTest", "CurInstaller", curInstaller, "C:\Users\dc\Desktop\AutoTest\AutoTest\ChannelAutoTest\config.ini")
End If






