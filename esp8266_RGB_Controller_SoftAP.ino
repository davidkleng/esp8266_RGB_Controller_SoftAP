#include <ESP8266WiFi.h>
#include <ESPAsyncWebServer.h>
#include <FS.h>

#include "ColorConverterLib.h"
#include "config.h"  // Sustituir con datos de red
#include "Server.hpp"
#include "ESP8266_Utils.hpp"

void setup(void)
{
	pinMode(LED_BUILTIN, OUTPUT);
	Serial.begin(115200);
	SPIFFS.begin();
	
	ConnectWiFi_AP();

	InitServer();
}

void loop(void)
{
  if (efxON)
  {
    rgbEffects.update();
    delay(200);
  }
}
