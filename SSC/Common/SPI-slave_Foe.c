#include "SPI-slave_Foe.h"
#include "applInterface.h"
#include "ecatfoe.h"

#define    MAX_FILE_NAME_SIZE    16

UINT32 nFileSize;
UINT32 nFileWriteOffset;
UINT8  DataValue = 0x00; //Used to fill upload file with dummy data
const UINT16 HUGE aFirmwareDownloadHeader[4] = {0x4345, 0x5441, 0x5746, 0x5F5F}; // "ECATFW__"


UINT16 SPIslave_FoeRead(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password, UINT16 maxBlockSize, UINT16 * pData)
{
  UINT16 size = 0;
  UINT16 i = 0;

  if (nFileSize > 0)
    {
      if (nFileSize >= maxBlockSize)
        { size = maxBlockSize; }

      else
        { size = (unsigned short) nFileSize; }

      MBXMEMSET(pData, DataValue, size);

      DataValue++;
    }

  else
    {
      return ECAT_FOE_ERRCODE_NOTFOUND;
    }

  return size;
}


UINT16 SPIslave_FoeWrite(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password)
{
  if ((nameSize >= SIZEOF(aFirmwareDownloadHeader))
      && (pName[0] == aFirmwareDownloadHeader[0])
      && (pName[1] == aFirmwareDownloadHeader[1])
      && (pName[2] == aFirmwareDownloadHeader[2])
     )
    {
      if (bBootMode)
        {
          BL_StartDownload(password);
          return 0;
        }

      else
        { return ECAT_FOE_ERRCODE_BOOTSTRAPONLY; }
    }

  else if (bBootMode)
    { return ECAT_FOE_ERRCODE_NOTINBOOTSTRAP; }

  else
    { DataValue = 0x00; }

  nFileSize = 0;
  return 0;
}


UINT16 SPIslave_FoeWriteData(UINT16 MBXMEM * pData, UINT16 Size, BOOL bDataFollowing)
{
  if (bBootMode)
    {
      return BL_Data(pData, Size);
    }

  else if (bDataFollowing)
    {
      /* FoE-Data services will follow */
      nFileWriteOffset += Size;
      return 0;
    }

  else
    {
      /* last part of the file is written */
      nFileSize = nFileWriteOffset + Size;
      nFileWriteOffset = 0;

      return FOE_ACKFINISHED;
    }


}



UINT16 SPIslave_FoeReadData(UINT32 fileOffset, UINT16 maxBlockSize, UINT16 * pData)
{
  if (fileOffset < nFileSize)
    {
      /* send next part of the file */
      UINT32 size;
      UINT32 sendSize = nFileSize - fileOffset;

      if (sendSize >= maxBlockSize)
        {
          size = maxBlockSize;
        }

      else
        {
          size = sendSize;
        }

      MBXMEMSET(pData, DataValue, size);

      DataValue++;
      return ((UINT16) size);
    }

  else if (fileOffset == nFileSize)
    {
      /* file transfer is finished */
      return 0; // size = 0
    }

  else
    { return ECAT_FOE_ERRCODE_ILLEGAL; }

}



void SPIslave_FoeError(UINT32 errorCode)
{
  if (nFileWriteOffset)
    {
      nFileWriteOffset = 0;
      nFileSize = 0;
    }
}

