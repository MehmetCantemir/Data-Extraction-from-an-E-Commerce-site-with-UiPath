Sub BoyamaIslemi()
    Dim ws As Worksheet
    Dim cell As Range
    Dim lastRow As Long
    
    ' Aktif çalışma sayfasını al
    Set ws = ActiveSheet
    
    ' C sütunundaki son satırı bul
    lastRow = ws.Cells(ws.Rows.Count, "C").End(xlUp).Row
    
    ' C sütunundaki her bir hücreyi döngüye al
    For Each cell In ws.Range("C1:C" & lastRow)
        If IsNumeric(cell.Value) Then
            Select Case cell.Value
                Case 5, 4
                    ' Yeşil boya
                    cell.Interior.Color = RGB(0, 255, 0)
                Case 3
                    ' Sarı boya
                    cell.Interior.Color = RGB(255, 255, 0)
                Case 2, 1
                    ' Kırmızı boya
                    cell.Interior.Color = RGB(255, 0, 0)
                Case Else
                    ' Başka bir işlem yapma
                    cell.Interior.ColorIndex = xlNone
            End Select
        End If
    Next cell
End Sub
