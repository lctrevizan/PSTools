# PowerShell script to install all specified programs using winget

# List of applications to install using winget
$apps = @(
    "Git.Git",
    "HermannSchinagl.LinkShellExtension",
    "HexChat.HexChat",
    "Mozilla.Thunderbird",
    "Notepad++.Notepad++",
    "VirtualGL.TurboVNC",
    "Obsidian.Obsidian",
    "PeterPawlowski.foobar2000",
    "squidowl.halloy",
    "Microsoft.PowerShell",
    "NordSecurity.NordVPN",
    "Microsoft.VCRedist.2010.x64",
    "Malwarebytes.Malwarebytes",
    "Giorgiotani.Peazip",
    "Microsoft.VCRedist.2008.x64",
    "Microsoft.VSTOR",
    "calibre.calibre",
    "GitHub.cli",
    "OpenJS.NodeJS",
    "namazso.OpenHashTab",
    "Microsoft.VCRedist.2005.x86",
    "Brave.Brave",
    "Microsoft.EdgeWebView2Runtime",
    "Valve.Steam",
    "Python.Launcher",
    "Microsoft.VCRedist.2015+.x86",
    "Microsoft.VCRedist.2015+.x64",
    "Microsoft.VCRedist.2005.x64",
    "Microsoft.VCRedist.2010.x86",
    "Microsoft.DotNet.DesktopRuntime.8",
    "Microsoft.VCRedist.2008.x86",
    "Intel.IntelDriverAndSupportAssistant",
    "Microsoft.VCLibs.Desktop.14",
    "Microsoft.VCLibs.Desktop.14",
    "Microsoft.DotNet.SDK.3_1",
    "ArmCord.ArmCord",
    "Python.Python.3.12",
    "Microsoft.AppInstaller",
    "Microsoft.UI.Xaml.2.8",
    "Microsoft.UI.Xaml.2.8",
    "Microsoft.WindowsTerminal"
)

# Iterate through the list and install each application
foreach ($app in $apps) {
    winget install --id $app --accept-source-agreements --accept-package-agreements
}
