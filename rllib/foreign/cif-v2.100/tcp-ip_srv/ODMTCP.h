/* <St> *******************************************************************

  FILENAME    : ODMDRV_IF.h

  -------------------------------------------------------------------------
  CREATED BY  :	J.Knierriem,  Hilscher GmbH
  CREATED AT  :	08.07.99
  PROJECT     :	ODM interface
  =========================================================================

  FUNCTION / CLASSDESCRIPTION:
  
  =========================================================================

  CHANGES OF REVISIONS :

  Version	Name		Date		Change
  -------------------------------------------------------------------------

  1.000   JK     	08.07.99				Created

  ******************************************************************** <En> */
#if !defined( ODMDRV_IF_INCLUDED)
#define ODMDRV_IF_INCLUDED 

#ifndef CIFUSER_H
  #define CIFUSER_H
  #include "../usr-inc/cif_user.h"
#endif

#include "ODMIF_DEF.h"

#define MAX_CONNECTIONS     1                       // Number of permissible connections
#define MAX_LIST_SIZE       100                     // Number of maximnum nodes to save

typedef struct tagTCP_ASSIGNED_DEVICE
{
  unsigned short          usSelectedBoard;
  unsigned short          usIrqNumber;
  unsigned long           ulPhysicalAddress;
  unsigned short          usDpmSize;
  unsigned char           abFirmwareName[16];
  unsigned char           abFirmwareVersion[16];
  long                    lDeviceModel;
  long                    lDeviceType;
  short                   sErrorNumber;
} TCP_ASSIGNED_DEVICE;


typedef struct tagTCP_DEVICE_CONFIG_DATA
{
  long                    lLogicalID;               // Logical ID generated by SyCon
  char                    szConfigName[255];        // Configuration name
  unsigned long           ulIpAddress;              // Ip address corresponding to device ID
  TCP_ASSIGNED_DEVICE     tSelectedBoard;           // Selected Board corresponding to the configuration
} TCP_DEVICE_CONFIG_DATA;


typedef struct tagTCP_DEVICE_DATA
{
  long                    lConnectCnt;
  ODM_DEVICE_INFO         tInfo;
  ODM_DEVICE_STATE        tState;
  ODM_ERROR               tError;
} TCP_DEVICE_DATA;


// INI-File data
typedef struct tagTCP_INI_DATA
{
  unsigned long   ulIpAddress;                      // IP Address written into .ini File
} TCP_INI_DATA;

// Hardware information about installed devices
typedef struct tagGENERAL_BOARD_INFO
{
  BOARD_INFOEX tBoardInfo;
  short sErrorNumber[MAX_DEV_BOARDS];                 // driver error occured at server
} GENERAL_BOARD_INFO;

#endif // ODMDRV_IF_INCLUDED 