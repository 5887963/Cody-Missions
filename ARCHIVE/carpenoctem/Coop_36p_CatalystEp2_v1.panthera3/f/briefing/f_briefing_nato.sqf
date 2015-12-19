// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// TASKS
// The code below creates tasks. Two (commented-out) sample tasks are included.
// Note: tasks should be entered into this file in reverse order.

// _task2 = player createSimpleTask ["OBJ_2"];
// _task2 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task2 setSimpleTaskDestination WAYPOINTLOCATION;
// _task2 setTaskState "Created";

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Cody Burton.
<br/><br/>
Original template by James Clarke.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
After death remain at base until reinsertion time. Before leaving the base confirmation by Command needs to be given. Reinsertions are organised every 30 Minutes at xx:30 and xx:00.
<br/><br/>
Brightness and Gamma need to be on 1.0. Changing those values is considered cheating.
<br/><br/>
Video setting Shadows needs to be at least on low, turning them off gives an unfair advantage and is considered cheating.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>MISSION EXECUTION</font>
<br/><br/>
Utilize the air vehicles at base and mount up ready to react to reports
<br/><br/>
Move to the marked areas of supposed PFF activity
<br/><br/>
Eliminate all hostile insurgents
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
<font size='18'>MISSION OBJECTIVES</font>
<br/><br/>
Primary: Secure areas of supposed PFF activity.
<br/><br/>
Secondary: Support BLUFOR in taking the island.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
<font size='18'>SITUATION</font>
<br/><br/>
BLUFOR forces have been engaged in a three month skirmish with OPFOR on the island and have sustained heavy casualties whilst pushing the enemy to the south. Even though BLUFOR have defeated most of OPFOR on the island, OPFOR has gained the support of a locally-maintained militia known as the PFF (Pantheran Freedom Fighters). We have been called upon aid BLUFOR in securing the island, and to react to insurgent sightings within the blue zone.
"]];

// ====================================================================================