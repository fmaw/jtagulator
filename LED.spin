{{
LED.spin -- utility object for blinken light
}}

CON                                         
  LED_R         = 27   ' Bi-color Red/Green LED, common cathode
  LED_G         = 26

PUB Init
  dira[LED_R]  := 1        
  dira[LED_G]  := 1
    
PUB Off
  outa[LED_R] := 0 
  outa[LED_G] := 0
  
PUB Green
  outa[LED_R] := 0 
  outa[LED_G] := 1
  
PUB Red
  outa[LED_R] := 1 
  outa[LED_G] := 0
  
PUB Yellow
  outa[LED_R] := 1 
  outa[LED_G] := 1

PUB Progress
  outa[LED_G] := !outa[LED_G]   ' Toggle LED between red and yellow