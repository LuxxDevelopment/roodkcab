Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms


$screen = [System.Windows.Forms.Screen]::AllScreens

foreach ($s in $screen) {
    $window = New-Object System.Windows.Window
    $window.Background = "Black"
    $window.WindowStyle = "None"
    $window.ResizeMode = "NoResize"
    $window.Topmost = $true
    $window.Left = $s.Bounds.Left
    $window.Top = $s.Bounds.Top
    $window.Width = $s.Bounds.Width
    $window.Height = $s.Bounds.Height

    # Create a label to display the text "LOCKED" in red
    $label = New-Object System.Windows.Controls.Label
    $label.Content = "LOCKED"
    $label.Foreground = "Red"
    $label.FontSize = 74
    $label.HorizontalAlignment = "Center"
    $label.VerticalAlignment = "Center"

    # Add the label to the window
    [System.Windows.Controls.Panel]$window.Content = New-Object System.Windows.Controls.Grid
    [System.Windows.Controls.Panel]$window.Content.Children.Add($label)

    $window.Show()
}

while ($true) {

}
