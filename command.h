#ifndef COMMAND_H
#define COMMAND_H

#include "swmachine.h"

class Command
{    
public:
    typedef void(SWMachine ::*Action)();
    Command(SWMachine* machine = 0, Action action = 0);
    void execute();
private:
    SWMachine* m_machine;
    Action m_action;

};

#endif // COMMAND_H
