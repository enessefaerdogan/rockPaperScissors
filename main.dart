
import 'dart:math';
import 'dart:io';


enum PlayerSituation{Rock,Paper,Scissors}

enum ComputerSituation{Roc,Paper,Scissors}

int playerScore =  0;
int computerScore = 0;

var _computerChooseName;
var _playersChooseName;

String? userName;

int again = 0 ;

void main() {
  
   print('Hello there, can i learn your name ?');
   userName = stdin.readLineSync();
   print('Welcome');
   print('$userName you got 2 options and they are ; '+'\n'
   +'1. Playing the Game'+'\n'
   +'2. Leaving the Game');
  int? choose = int.parse(stdin.readLineSync()!);
  while(true){

    if(choose == 1){ 
      if(_checkScore() ==0){
   print('Choose one of them;'+'\n'
         +'1 = Rock'+'\n'
         +'2 = Paper'+'\n'
         +'3 = Scissors');
  int _playersChoose = int.parse(stdin.readLineSync()!);
  
  if(_playersChoose == 1){
   
   _playersChooseName = PlayerSituation.Rock.name;
  }
  else if(_playersChoose == 2){
  _playersChooseName = PlayerSituation.Paper.name;
  }
  else{
    _playersChooseName = PlayerSituation.Scissors.name;
  }
   print(_playersChooseName);

   // random sayı üret
   Random random = new Random();
   int  _computerChoose = random.nextInt(3);
   
   if(_computerChoose == 0){
    _computerChooseName = PlayerSituation.Rock.name;
   }
   else if(_computerChoose == 1){  
    _computerChooseName = PlayerSituation.Paper.name;
   } 
   else if(_computerChoose == 2){
    _computerChooseName = PlayerSituation.Scissors.name;
   }
   print(_computerChooseName);
  
   
    if(_playersChoose == 1 && _computerChoose == 0){
      print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , equal for this tour');
    }
    else if(_playersChoose == 1 && _computerChoose==1 ){
            print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , computer won for this tour');
            computerScore ++ ;
    }
    else if(_playersChoose == 1 && _computerChoose==2 ){
            print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , $userName won for this tour');
            playerScore++;
           
    }
    else if(_playersChoose == 2 && _computerChoose == 0){
      print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , $userName won for this tour');
      playerScore++;
    }
    else if(_playersChoose == 2 && _computerChoose == 1 ){
            print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , equal for this tour');
           
    }
    else if(_playersChoose == 2 && _computerChoose==2 ){
            print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , computer won for this tour');
            computerScore++;
    }
    else if(_playersChoose == 3 && _computerChoose == 0){
      print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , computer won for this tour');
      computerScore++;
    }
    else if(_playersChoose == 3 && _computerChoose==1 ){
            print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , $userName won for this tour');
            playerScore++ ;
    }
    else if(_playersChoose == 3 && _computerChoose==2 ){
            print('$userName s choose was $_playersChooseName and Computers choose was $_computerChooseName , $userName equal for this tour');
           
    } 


    print('Player score is $playerScore and pc score is $computerScore ');

   }
   else {
    _checkScore();
    print('Do you wanna play again? Please 1 for yes 2 for no ');
    int response  = int.parse(stdin.readLineSync()!);
    if(response == 1){
      playerScore = 0;
      computerScore = 0;

    }
    else{
       print('You leaving the game...');
      break;
    }
   }}
  
    else{
    print('You leaving the game...');
    break;
    }

    
  }
}

int _checkScore(){
  if(playerScore == 3){
    print('$userName you won.');
    return 1;
  }
  else if(computerScore == 3){
    print('Computer won');
    return 2;
  }
  return 0;
}
