sWorkbook = "G:\Computer Programs & Add-ins\Mapinfo tools\DataSearches - Surveyors\MapBasic\Data Search Macros.xlsm"
sMacro = "CopyCitations"

sPath = WScript.Arguments.Item(0)
sInput = WScript.Arguments.Item(1)

Set objXL = CreateObject("Excel.Application")
objXL.Visible = False

Set objWkbk = objXL.Workbooks.Open(sWorkbook)

objXL.Run sMacro, CStr(sPath), CStr(sInput)

objXL.DisplayAlerts = False
objWkbk.Close
objXL.Quit

Set objWkbk = Nothing
Set objXL = Nothing
