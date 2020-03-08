#include "command.h"

Command::Command(SWMachine* machine, Action action)
    : m_machine(machine), m_action(action)
{
}

void Command::execute()
{
    if(m_machine != nullptr)
        (m_machine->*m_action)();
}
