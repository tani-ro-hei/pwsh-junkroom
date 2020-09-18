<#
 # # カレントディレクトリを変更するショートカット集
 #
 # よく使う場所を登録しておきます。
 #>


If ($Args[0] -eq "dtop") {
    Set-Location("C:" + $env:homepath + "\Desktop")
}
ElseIf ($Args[0] -eq "ws") {
    Set-Location("C:" + $env:homepath + "\Dropbox\ws")
}
ElseIf ($Args[0] -eq "d") {
    Set-Location("C:" + $env:homepath + "\Dropbox\ws\otherLang\D")
}

# デフォルトではそのまま cd に渡す
Else {
    cd $Args[0]
}
