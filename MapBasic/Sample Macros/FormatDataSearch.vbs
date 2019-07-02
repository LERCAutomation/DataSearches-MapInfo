sWorkbook = "G:\Computer Programs & Add-ins\Mapinfo tools\DataSearches - Surveyors\MapBasic\Data Search Macros.xlsm"
sMacro = "FormatSpp"
Save = True
sClose = False

sPath = WScript.Arguments.Item(0)
sRaw = WScript.Arguments.Item(1)
sOut = WScript.Arguments.Item(2)

Set objXL = CreateObject("Excel.Application")
objXL.Visible = False

Set objWkbk = objXL.Workbooks.Open(sWorkbook)

'objXL.Run sMacro, CStr(sPath), CStr(sRaw), CStr(sOut), CStr(sSave), CStr(sClose)
objXL.Run sMacro, CStr(sPath), CStr(sRaw), CStr(sOut)

objXL.DisplayAlerts = False
objWkbk.Close
objXL.Quit

Set objWkbk = Nothing
Set objXL = Nothing
