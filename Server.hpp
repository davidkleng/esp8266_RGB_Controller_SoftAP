#include <RGBEffects.h>
bool efxON;

AsyncWebServer server(80);

const int redPin = D2;
const int greenPin = D1;
const int bluePin = D0;

uint16_t redVal;
uint16_t greenVal;
uint16_t blueVal;

// RGB EFFECTS
RGBEffects rgbEffects( redPin, greenPin, bluePin );

void handleFormLed(AsyncWebServerRequest *request)
{
  String rgb = request->arg("rgb");

  efxON = false;
  Serial.println(rgb);
  
  uint8_t red = 0;
  uint8_t green = 0;
  uint8_t blue = 0;

  ColorConverter::HexToRgb(rgb, red, green, blue);

  redVal = 1020 - (red*4);
  greenVal = 1020 - (green*4);
  blueVal = 1020 - (blue*4);

  Serial.println(red);
  Serial.println(green);
  Serial.println(blue);
  Serial.println(redVal);
  Serial.println(greenVal);
  Serial.println(blueVal);

  analogWrite(redPin, (redVal));
  analogWrite(greenPin,(greenVal));
  analogWrite(bluePin,(blueVal));

  request->redirect("/");
}

void handleFormEffect(AsyncWebServerRequest *request)
{
  String efx = request->arg("efx");

  if(efx == "fade")   
  { 
    Serial.println("1"); 
    efxON = true;
    rgbEffects.setEffect(EFFECT_CUBE);
  }
  if(efx == "rainbow")
  { 
    Serial.println("2"); 
    efxON = true;
    rgbEffects.setEffect(EFFECT_RAINBOW);
  }
  if(efx == "off")    
  { 
    Serial.println("3"); 
    efxON = false;
    digitalWrite(redPin,HIGH);
    digitalWrite(greenPin,HIGH);
    digitalWrite(bluePin,HIGH);
  }
  
  request->redirect("/");
}


void InitServer()
{
  server.serveStatic("/", SPIFFS, "/").setDefaultFile("index.html");

  server.on("/RGB", HTTP_POST, handleFormLed);
  server.on("/EFX", HTTP_POST, handleFormEffect);

  server.onNotFound([](AsyncWebServerRequest *request) {
    request->send(400, "text/plain", "Not found");
  });

  server.begin();
  Serial.println("HTTP server started");
}
