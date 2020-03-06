#include "command.h"

Command::Command(SWMachine* machine, void(SWMachine ::*method)())
    : m_machine(machine), action(method)
{
}

void Command::execute()
{
    if(m_machine != nullptr)
        (m_machine->*action)();
}
