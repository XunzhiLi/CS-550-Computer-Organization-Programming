*-----------------------------------------------------------
* Title      :ASSEMBLY 3 PROJECT
* Written by :Xunzhi Li
* Date       :20/4/2024
* Description:Homework for cs550
*-----------------------------------------------------------
     org $1000

start
    lea filename,a1
    move   #51,d0 
    trap   #15 
    
    move.l #filesize, d2
    
    lea    buffer,a1
    move   #53,d0
    trap   #15
    
    
    SIMHALT       ;
    org $2000


filename dc.b       'file.txt',0
buffer   ds.b       80
filesize dc.b       80

    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
