//Prototype for the Adec Counter Mk.III
//Summer Internship Team of  2019
//Date last updated/looked at 7/1/2019


//Current state of development is design of the chassis and case of the PCB board
//Code is semi finalized waiting to update and see final pins before last testing and bug-testing



#include <LiquidCrystal.h>

//Pins for the LCD screen for LiquidCrystal
const int rs = 5, en = 7, d4 = 8, d5 = 9, d6 = 10, d7 = 11;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);




//Global Ints to be used throughout entire process

//Checks for total bags completed
int totalBags = 0;

//Int for prevGoal that is used to check and add a delay of sorts to the IR sensor
int prevGoal = 0;

//Global count for the current amount of widgets in the bag
volatile int GCount = 0;

//The int for the goal that is currently set
int Goal = 0;

//Decides when the main loop ends and the reset function has begun
//When true it means that you need to press the reset big button to continue back to the main loop
boolean pressReset = false;

//The boolean to help detect when the Large Button is pressed used within an interrupt
volatile boolean resetButtonPressed = false;


//Pins with there respected ports
int objDetect = 2;
int buttonInterrupt = 3;
int buttonResetLED = 6;
int buttonResetDATA = 3;
int Buzzer = A1;

int Inc5 = A5;
int Inc1 = A3;
int Dec1 = A2;
int Dec5 = A4;

//Amount of time that the button press is delayed while holding button
int BtnDTime = 250;

//Turns the Buzzer on or off
boolean BuzzerToggle = true;

/*
***********************
END OF GLOBAL VARIABLE SETUP
Starts the setup function with pin definition and interruptss
***********************
*/
void setup() {

//Pin setup for button on analog for reading the button inputs
  pinMode(Inc1, INPUT_PULLUP);
  pinMode(Inc5, INPUT_PULLUP);
  pinMode(Dec5, INPUT_PULLUP);
  pinMode(Dec1, INPUT_PULLUP);


  //The pin for the Large Button LED light
  pinMode(buttonResetLED, OUTPUT);

  //The pin for the Buzzer 
  pinMode(Buzzer, OUTPUT);
  
  //Interrupts, this one waits for the large button to be pressed 
  pinMode(buttonInterrupt, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(buttonInterrupt),resetChange, FALLING);
  
  //Interrupt that is used in the detection to change the current count with the IR sensors
  pinMode(objDetect, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(objDetect), detect, FALLING);

  
  //Writes the basic LCD screen with the layout on setup
  //Might be subjected to change
  lcd.begin(16, 2);

  lcd.setCursor(0, 1);

  lcd.print("Completed:");

  lcd.setCursor(0,0);

  lcd.print("Count:");
  
  Serial.begin(9600);
}



/*
***********************
END OF SETUP FUNCTION
Starts the main loop of the counter
***********************
*/
void loop() {
//Fixes the boolean issue with button bouncing to fix the reset function loop
//Had issue with the reset only working every alternate attempt this fixed that issue
//Might be an easier solution within the actual function
  resetButtonPressed = false;


//Used to help the reset for when the goal is changed to reset the count
//If goal is changed it resets the current count
  prevGoal = Goal;



//Changed the Goal by using the buttons and waiting for them to be pressed
//Delays added to make sure the goal moved at steady increments
    if (digitalRead(Inc1) == LOW)
    {
      Serial.println("Increase by 1 Pressed");
      Goal++;
      Serial.println(Goal);
      delay(BtnDTime);

    }
    if (digitalRead(Dec1) == LOW)
    {

      Goal -= 1;
      delay(BtnDTime);
    }
    if (digitalRead(Inc5) == LOW)
    {
      Serial.println("INCREASE BY 10 PRESSED");
      Goal = Goal + 10;
      Serial.println(Goal);
      delay(BtnDTime);
    }
    if (digitalRead(Dec5) == LOW)
    {

      Goal = Goal - 10;
      delay(BtnDTime);
    }



//Resets count when the goal is changed
  if (prevGoal != Goal)
  {
    GCount = 0;
  }



//Fixes the LCD error where subtracting below 10 would keep the second zero
  if (Goal < 10)
  {
    lcd.setCursor(15,0);
    lcd.write(" ");
  }

  

//Does not let Goal become negative
  if (Goal < 0)
  {
    Goal = 0;
  }




//Checks of Goal is met and if so runs the reset function
  if (GCount >= Goal && Goal > 0)
  {
    digitalWrite(buttonResetLED, HIGH);
    Sound();
    lcd.clear();
    lcd.print("Goal Met!!!");
    lcd.setCursor(0,1);
    lcd.print("Press Button");
    pressReset = true;
    reset();
  }


//Updates the current values to the LCD in the proper location
  lcd.setCursor(14, 0);

  lcd.print(Goal);

  lcd.setCursor(7,0);

  lcd.print(GCount);

  lcd.setCursor(10,0);

  lcd.print("of");

  lcd.setCursor(11,1);

  lcd.print(totalBags);
}
/*
***********************
END OF MAIN LOOP
Starts the voids/Functions
***********************
*/


//Function to update the values on the LCD
//Potentially to be used within the main loop after further testing
void lcdUpdate()
{
  lcd.setCursor(14, 0);

  lcd.print(Goal);

  lcd.setCursor(7,0);

  lcd.print(GCount);

  lcd.setCursor(10,0);

  lcd.print("of");

  lcd.setCursor(11,1);

  lcd.print(totalBags);
}



//Runs the function for the detect of the widgets
//Uses an interrupt to run
//Stops the IR beam from shooting twice by making a sort of mini delay
void detect()          
{
  static unsigned long last_interrupt_time = 0;
  unsigned long interrupt_time = millis();
  //If interrupts comes faster than 200ns, assume it's a bounce and ignore
  if (interrupt_time - last_interrupt_time > 200)
  {
    GCount += 1;
  }
  last_interrupt_time = interrupt_time;

}



//Detects wether the Big Button has been pressed to end the while loop in the reset() function
//
void resetChange()
{
  resetButtonPressed = true;

}


//Reset function to set LCD back to proper score and when worker is ready to start the next batch they pressed the green big red button
void reset()
{


  while (pressReset == true)
  {
  Serial.println("While has Run");
  digitalWrite(buttonResetLED, HIGH);  
  digitalWrite(Buzzer, HIGH);
  if (resetButtonPressed == true)
  {
    Serial.println("If has Run");
  GCount = 0;

  lcd.clear();
  lcd.setCursor(0, 1);

  lcd.print("Completed:");

  lcd.setCursor(0,0);

  lcd.print("Count:");
  digitalWrite(buttonResetLED, LOW);
  totalBags++;
  digitalWrite(Buzzer, LOW);
  pressReset = false;
  resetButtonPressed = false;
  }
  
  }


  
}
//Sounds the buzzer when the goal is met
void Sound()
{
  if(BuzzerToggle == true){
    tone(Buzzer, 500);
    delay(150);
    for(int x = 0; x < 1750; x += 200){
      tone(Buzzer, x, 10);
     delay(10);
    }
  }
}
