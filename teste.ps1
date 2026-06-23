Add-Type @"
using System;
using System.Runtime.InteropServices;

public class W {
    [DllImport("kernel32.dll")]
    public static extern IntPtr GetConsoleWindow();

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
# SE ESTIVER HIDDEN → MOSTRA
# =========================
# 0 = hidden, 1 = normal, 5 = show
[W]::ShowWindow($h, 5)

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
# ATUALIZA JANELA
# =========================
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
