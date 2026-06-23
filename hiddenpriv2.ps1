Add-Type @"
using System;
using System.Runtime.InteropServices;

public class W {
    [DllImport("kernel32.dll")]
    public static extern IntPtr GetConsoleWindow();

    [DllImport("kernel32.dll")]
    public static extern IntPtr GetStdHandle(int nStdHandle);

    [DllImport("user32.dll")]
    public static extern int GetWindowLong(IntPtr hWnd, int nIndex);

    [DllImport("user32.dll")]
    public static extern int SetWindowLong(IntPtr hWnd, int nIndex, int dwNewLong);

    [DllImport("user32.dll")]
    public static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter,
        int X, int Y, int cx, int cy, uint uFlags);

    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
}
"@

$h = [W]::GetConsoleWindow()

# =========================
# REMOVE BOTÕES / BORDA
# =========================
$GWL_STYLE = -16

$WS_CAPTION     = 0x00C00000
$WS_THICKFRAME  = 0x00040000
$WS_SYSMENU     = 0x00080000
$WS_MINIMIZEBOX = 0x00020000
$WS_MAXIMIZEBOX = 0x00010000

$style = [W]::GetWindowLong($h, $GWL_STYLE)

$newStyle = $style -band -bnot $WS_CAPTION `
                   -band -bnot $WS_THICKFRAME `
                   -band -bnot $WS_SYSMENU `
                   -band -bnot $WS_MINIMIZEBOX `
                   -band -bnot $WS_MAXIMIZEBOX

[W]::SetWindowLong($h, $GWL_STYLE, $newStyle)

# =========================
# FULLSCREEN
# =========================
$SW_MAXIMIZE = 3
[W]::ShowWindow($h, $SW_MAXIMIZE)

$SWP_NOMOVE = 0x0002
$SWP_NOSIZE = 0x0001
$SWP_NOZORDER = 0x0004
$SWP_FRAMECHANGED = 0x0020

[W]::SetWindowPos(
    $h,
    [IntPtr]::Zero,
    0,0,0,0,
    $SWP_NOMOVE -bor $SWP_NOSIZE -bor $SWP_NOZORDER -bor $SWP_FRAMECHANGED
)

# =========================
# REMOVE SCROLL
# =========================
$raw = (Get-Host).UI.RawUI
$raw.BufferSize = $raw.WindowSize

# =========================
# BLOQUEIO SIMPLES DE F11
# =========================
Add-Type @"
using System;
using System.Runtime.InteropServices;

public class K {
    [DllImport("user32.dll")]
    public static extern short GetAsyncKeyState(int vKey);
}
"@

# F11 = 0x7A
Start-Job -ScriptBlock {
    while ($true) {
        if ([K]::GetAsyncKeyState(0x7A) -ne 0) {
            # bloqueio simples (não deixa agir dentro do loop)
            Start-Sleep -Milliseconds 200
        }
        Start-Sleep -Milliseconds 50
    }
}
