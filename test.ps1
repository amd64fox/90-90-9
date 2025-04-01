function Show-SpotXRIP {
    $SpotXRipLogo = @"

   ███████╗██████╗  ██████╗ ████████╗██╗  ██╗    ██████╗ ██╗██████╗ 
   ██╔════╝██╔══██╗██╔═══██╗╚══██╔══╝╚██╗██╔╝    ██╔══██╗██║██╔══██╗
   ███████╗██████╔╝██║   ██║   ██║    ╚███╔╝     ██████╔╝██║██████╔╝
   ╚════██║██╔═══╝ ██║   ██║   ██║    ██╔██╗     ██╔══██╗██║██╔═══╝ 
   ███████║██║     ╚██████╔╝   ██║   ██╔╝ ██╗    ██║  ██║██║██║     
   ╚══════╝╚═╝      ╚═════╝    ╚═╝   ╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝╚═╝     
                                                                   
"@

    Write-Host $SpotXRipLogo -ForegroundColor Red

    Write-Host "SpotX is completely broken. The project has officially shut down and is no longer maintained as of today." -ForegroundColor Yellow
    Write-Host "Thank you for all your support throughout the years." -ForegroundColor Yellow
    Write-Host

    $message = "Choose an option:"
    $options = [System.Management.Automation.Host.ChoiceDescription[]] @(
        New-Object System.Management.Automation.Host.ChoiceDescription "&Exit", "Exit the script"
        New-Object System.Management.Automation.Host.ChoiceDescription "&RIP", "RIP"
    )

    $choice = $host.UI.PromptForChoice("", $message, $options, 0)

    switch ($choice) {
        0 { 
            Write-Host "press any key to exit" -ForegroundColor Red
			$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
            Exit
        }
        1 { 
            cls
            Write-Host "Alright, that was a stupid joke. Happy April Fools' Day!" -ForegroundColor Green
            Write-Host
  
        }
    }
}

Show-SpotXRIP
