# Chapter 5 Project: Light Game
## Project Description
We made a game where one player's reaction time is tested by clicking the button when the light flashes on. 
The light will flash on after a short random time interval and the player must quickly press the button to continue playing
If they don't the light will flash on and off briefly before lighting constantly.
Then the player's score, the amount of successful button presses in the interval, will be displayed on the Serial Monitor.
In order to restart and play again, the player must simply press the button again and the game will restart with a reset score.
## Images of Project
![Image of Game on breadboard](79C7890E-1774-4606-9B63-7000BD2649CA.jpeg)
This is the game and the wiring for the circuit board.
![Image of Scoreboard](7EE53617-21FF-49D7-BEF8-35E596F6E3C7.jpeg)
This is the score pop-up in the serial monitor after a finished game.
## Video of Project
![Vid of Proj](GameVideo1.mp4)
## Project Code
```
int sensorValue;
int led = 13;
int Score = 0;
boolean ResetGame = true;
boolean GameEnd=false;
long timeVal;
boolean LightOn;
int GameStart=1;
void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT);
  pinMode(led, OUTPUT);
  
}

void loop() {
   sensorValue = digitalRead(2);
  


  if(GameStart==1){
 
Score=Score+1;
  delay(random(1000,2000));
    digitalWrite(led, HIGH); 
    
    LightOn=true;
    GameStart=0;
    
    }
if(LightOn==true && sensorValue==1){
  
    digitalWrite(led,LOW);
    LightOn==false;
    GameStart=1;
    delay(200);
     
    }     

    if(LightOn==false && sensorValue==1){
GameEnd=true;
}
  if(GameStart==0){
    
    timeVal=millis();
   GameStart=2;
  }
    if(millis()-timeVal>=500&&GameStart==2||GameEnd==true){ 
      GameStart=5;
     
    digitalWrite(led,LOW);
  
    delay(300);
    digitalWrite(led,HIGH);
   
    delay(200);
    digitalWrite(led,LOW);
     
    delay(200);
    digitalWrite(led,HIGH);
    
    delay(200);
    digitalWrite(led,LOW);
 
    delay(200);
    digitalWrite(led,HIGH);
      
    delay(200);
     Serial.println("You suck");
      Serial.println("Score:");
      Serial.println(Score);
      Score = 0;
   }
      
 
    }
```

