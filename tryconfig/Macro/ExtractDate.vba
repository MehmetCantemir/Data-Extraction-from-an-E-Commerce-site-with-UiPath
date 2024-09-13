Sub FormatDateInCell()
    Dim inputString As String
    Dim datePattern As String
    Dim monthName As String
    Dim day As String
    Dim year As String
    Dim formattedDate As String
    Dim cell As Range

    ' Hücreyi belirtin (örneğin, C1 hücresini)
    Set cell = Range("C1")
    inputString = cell.Value
    
    ' Tarih desenini tanımla
    datePattern = "d mmmm yyyy"

    ' Tarih bilgilerini ayıkla
    On Error Resume Next
    day = Mid(inputString, InStr(inputString, "değerlendirildi") - 16, 2)
    monthName = Trim(Mid(inputString, InStr(inputString, "değerlendirildi") - 13, 9))
    year = Trim(Mid(inputString, InStr(inputString, "değerlendirildi") - 4, 4))
    On Error GoTo 0

    ' Ay adlarını ve numaralarını eşle
    Select Case monthName
        Case "Ocak": monthName = "01"
        Case "Şubat": monthName = "02"
        Case "Mart": monthName = "03"
        Case "Nisan": monthName = "04"
        Case "Mayıs": monthName = "05"
        Case "Haziran": monthName = "06"
        Case "Temmuz": monthName = "07"
        Case "Ağustos": monthName = "08"
        Case "Eylül": monthName = "09"
        Case "Ekim": monthName = "10"
        Case "Kasım": monthName = "11"
        Case "Aralık": monthName = "12"
        Case Else: monthName = "01" ' Varsayılan ay
    End Select

    ' Tarihi biçimlendir
    formattedDate = day & "." & monthName & "." & year

    ' Hücreye formatlanmış tarihi yaz
    cell.Value = formattedDate
End Sub
