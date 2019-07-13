DefinitionBlock ("SSDT-USB.aml", "SSDT", 1, "sample", "USBFix", 0x00003000)
{
    // "USBInjectAllConfiguration" : override settings for USBInjectAll.kext
    Device (UIAC)
    {
        Name (_HID, "UIA00000")
        // "RehabManConFiguration"
        Name (RMCF, Package ()
        {
            // XHC overrides for 300-series boards
            "8086_a36d", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0}, // Highest port number is SS10 at 0x1A
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package() 
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS06", Package() // USB2 on the top of the IO panel
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },               
                    "HS08", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS13", Package() // USB2 on the top of the IO panel
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "HS14", Package() // Board integrated bluetooth (works natively)
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 18, 0, 0, 0 },
                    },
                    "SS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 19, 0, 0, 0 },
                    },
                    "SS07", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 23, 0, 0, 0 },
                    },
                    "SS08", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 24, 0, 0, 0 },
                    },
                    "SS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 26, 0, 0, 0 },
                    },
                }
            }
        })
    }
}

