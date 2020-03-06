#ifndef COMMAND_H
#define COMMAND_H

#include "swmachine.h"

class Command
{
    SWMachine* m_machine;
    void(SWMachine ::*action)();
public:
    Command(SWMachine* machine = 0, void(SWMachine ::*method)() = 0);
    void execute();
};

#endif // COMMAND_H
