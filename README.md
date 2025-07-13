# mql5-logger
## Описание
Простой логгер, выводящий сообщения в журнал терминала

## Примеры работы
- Подключить в проект библиотеку: `#include <vasilev/logger/logger.mqh>`
- Объявить макрос/ы в зависимости от использования:
`#define DEBUG_LOG` - для `DEBUG("msg")`
`#define INFO_LOG` - для `INFO("msg")`
`#define WARN_LOG` - для `WARN("msg")`
`#define ERROR_LOG` - для `ERROR("msg")`
`#define FATAL_LOG` - для `FATAL("msg")`
