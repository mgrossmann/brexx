/*
 * $Id: cefunc.h,v 1.3 2002/06/11 12:37:56 bnv Exp $
 * $Log: cefunc.h,v $
 * Revision 1.3  2002/06/11 12:37:56  bnv
 * Added: CDECL
 *
 * Revision 1.2  2001/06/25 18:52:04  bnv
 * Header -> Id
 *
 * Revision 1.1  1999/11/29 14:58:00  bnv
 * Initial revision
 *
 */
#ifndef __CEFUNC_H__
#define __CEFUNC_H__

enum	ce_msgs {
		f_windowtitle,
		f_createdirectory,
		f_removedirectory,
		f_deletefile,
		f_movefile,
		f_copyfile,
		f_clrscr,
		f_clreol,
		f_wherex,
		f_wherey,
		f_getch,
		f_kbhit
};

/* ---- Function Prototypes ---- */
BOOL __CDECL CE_GetRegData(HKEY key, TCHAR *keyPath, TCHAR *varName,
		   DWORD type, LPBYTE pvData, LPDWORD cbData );


/* ---- Macros Definitions ---- */
#define RXREGGETDATA(v,t,d,l) CE_GetRegData(HKEY_CURRENT_USER,\
					_szRxAppKey, v, t, d, l)

#endif