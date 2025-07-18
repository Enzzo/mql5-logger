//+------------------------------------------------------------------+
//|                                                       logger.mqh |
//|                                                   Sergey Vasilev |
//|                                         vasilevnogliki@yandex.ru |
//+------------------------------------------------------------------+
#property copyright "Sergey Vasilev"
#property link      "vasilevnogliki@yandex.ru"
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+

// Этот метод обёрнут в функцию, потому что в дальнейшем
// планируется использовать разные способы логирования
// Добавятся типы логирования DEBUG, INFO, WARNING, ERROR, FATAL
// Добавится возможность сохранять в файл

#define DEBUG(msg) Logger::debug(msg);
#define INFO(msg) Logger::info(msg);
#define WARN(msg) Logger::warn(msg);
#define ERROR(msg) Logger::error(msg);
#define FATAL(msg) Logger::fatal(msg);

class Logger{
private:
   Logger(void);
   ~Logger(void);
   
public:
   static void debug(const string msg);
   static void info(const string msg);
   static void warn(const string msg);
   static void error(const string msg);
   static void fatal(const string msg);
};

void Logger::debug(const string msg){
   #ifdef DEBUG_LOG
      Print("DEBUG: " + msg);
   #endif 
};
void Logger::info(const string msg){
   #ifdef INFO_LOG
      Print("INFO: " + msg);
   #endif 
};
void Logger::warn(const string msg){
   #ifdef WARN_LOG
      Print("WARN: " + msg);
   #endif 
};
void Logger::error(const string msg){
   #ifdef ERROR_LOG
      Print("ERROR: " + msg);
   #endif 
};
void Logger::fatal(const string msg){
   #ifdef FATAL_LOG
      Print("FATAL: " + msg);
   #endif 
};