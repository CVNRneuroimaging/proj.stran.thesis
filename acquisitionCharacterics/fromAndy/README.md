Acquisition characteristics provided by Andy James
=====================================================

Below are my notes about the Andy James' acqusition data I'll be analyzing to support Stella's thesis. -stowler, 20140810

On 20140807 Andy emailed sequence characteristics for COWA, motor, and rest acquisitions.

This included a summary spreadsheet of non-sensitive session data. I'm working from [the version that Stella forwarded to me on August 8](https://docs.google.com/spreadsheets/d/1LhA_MiOxOChCteR2YYo-bs2JnFwGTKL9ovIQWsJ_mj4/edit?usp=sharing) (I'm not sure whether that includes any annotation from her or if its the original version Andy sent).

Across sessions and sequences three variations of slice order were acquried. The summary spreadsheet above shows each sessionXsequence slice order as "default", "ascending", or "interleaved". Andy emailed slice timing files for each variation and I've included them as text files in the directory with this README.

Also in that August 7 email, Andy describes the task timing and Bx recording. Pasted:

    raw.log.COG.C.076-blah.log is the Presentation logfile for one subject’s COWAT
    and MOTOR task.  I don’t know if you’re familiar with presentation. The
    Response 99 indicates triggers from scanner, occurring every 2000ms (at start
    of each acquisition).
    
    COWAT:
    Letter task:  15 second block, starting at 15, 75, 135, 195, and 255 seconds
    Categories task: 15 second block, starting at 45, 105, 165, 225, and 285 seconds
    Fixation cross shown during rest condition, which was for all non-task blocks.
     
    COWAT task is fixed for all subjects, and has no responses.
      
    MOTOR:
    Left finger tap:  18 second block, starting at 10, 94, 150 seconds
    Right finger tap: 18 second block, starting at 38, 66, 122 seconds
       
    I’ve zipped up all of the subject’s MOTOR data, which will tell you exactly
    when they made motor responses across the motor task, relative to the start
    of the MRI scan (0sec).  In case you want to covary # of motor responses
    made, etc.

    I rounded for the motor task.
    Exact start times:
     
    Left:   9.9861  93.757  149.6 seconds
    Right:  37.91  65.833  121.68 seconds
