// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// TASKS
// The code below creates tasks. A (commented-out) sample task is included.

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
This mission has been created with dedication by James Clarke.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
*** Insert information on administration and logistics here. ***
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
*** Insert very short summary of plan here. ***
<br/><br/>
MOVEMENT PLAN
<br/>
*** Insert movement instructions here. ***
<br/><br/>
FIRE SUPPORT PLAN
<br/>
*** Insert fire support instructions here. ***
<br/><br/>
SPECIAL TASKS
<br/>
*** Insert instructions for specific units here. ***
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Locate and eliminate the HVT within Oreokastro. Use any assets provided at the NATO main base to accomplish your tasks.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The CSAT forces have successfully captured Kavala and the surrounding areas, currently they outnumber our forces ten to one. Therefore any military actions against CSAT are futile as long as they have not dispersed their troops over a wider territory.<br/><br/>However, we have gathered intel that suggests an influential AAF general is contemplating an alliance with CSAT in order to drive NATO from Altis once and for all. An alliance with CSAT is an unpopular move within the AAF and could be entirely avoided by eliminating the HVT.
<br/><br/>
ENEMY FORCES
<br/>
The north western part of Altis is an AAF stronghold, with many infantry patrols roaming the vast woodland areas and rocky valleys. The AAF also is still capable of air support due to their small airport north of Abdera.
<br/><br/>
FRIENDLY FORCES
<br/>
The AAF enjoys vast support among the civilian population of Altis. There is a high probability of civilian presence within the AO.
"]];

// ====================================================================================