/* ---------------------------------------------------------------------
 * LISTALC  FIND ALLOCATED DDNAMES AND DATASETS
 * NUMFILES=LISTALC(<PRINT/NOPRINT>)
 *   NUMFILES    FILES FOUND
 *   PRINT       DISPLAY FOUND ALLOCATION, AND RETURN IN STEM VARIABLES
 *   NOPRINT     RETURN RESULTS IN STEM VARIABLES
 *   PRINT       IS DEFAULT
 * RESULTS ARE RETURNED IN:
 *  LISTALCDDN.N  CONTAINS THE ALLOCATED DD NAME
 *  LISTALCDSN.N  CONTAINS THE ALLOCATED DSNAME (INCL. MEMBER, IF ANY)
 *  LISTALCDDN.0  CONTAIN THE NUMBER OF ENTRIES
 *  LISTALCDSN.0  CONTAIN THE NUMBER OF ENTRIES
 *  LISTALCDSN.N AND LISTALCDDN.N CORRESPOND
 * ---------------------------------------------------------------------
 */
LISTA:
CALL LISTALC 'PRINT'  /* FETCH ALL CURRENT ALLOCATIONS */
/* THE LISTALC FUNCTION OUT OF RXLIB IS USED */
