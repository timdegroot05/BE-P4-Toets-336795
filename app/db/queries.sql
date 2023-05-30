SELECT 
    VI.* 
   ,VO.*
   ,TV.* 
FROM           VoertuigInstructeur AS VI
INNER JOIN     Voertuig AS VO
ON             VI.VoertuigId = VO.Id
INNER JOIN     TypeVoertuig AS TV
ON             VO.TypeVoertuigId = TV.Id
WHERE   InstructeurId = 1;