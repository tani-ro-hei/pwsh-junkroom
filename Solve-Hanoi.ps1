# # ハノイの塔問題の解法を表示します
#
# PS> .\Solve-Hanoi 5
#
# 実行された場所に手数分のフォルダを再帰的に作成して解く、恐ろしい仕様です。
# 大きな数 (64 とか) を引数に与えないことをお勧めします (責任は取りません)。


function Solve-Hanoi($n, $strt, $end, $extr) {

    $pre  = "0"
    $mid  = "1 Move-${strt}_to_$end"
    $post = "2"

    If ($n -ne 1) {
        New-Item $pre -Type Directory
        Push-Location $pre
        Solve-Hanoi ($n - 1) $strt $extr $end
        Pop-Location
    }

    New-Item $mid -Type Directory

    If ($n -ne 1) {
        New-Item $post -Type Directory
        Push-Location $post
        Solve-Hanoi ($n - 1) $extr $end $strt
        Pop-Location
    }
}


$depth = $Args[0]
If ($depth -eq $Null) {
    $depth = 7
}
$dir = "Result_Hanoi-$depth"

New-Item $dir -Type Directory
Push-Location $dir
Solve-Hanoi $depth A C B

# 解法を表示
tree /A

Pop-Location
