#pragma once

#include "ecat_def.h"

UINT16 SPIslave_FoeRead(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password, UINT16 maxBlockSize, UINT16 * pData);
UINT16 SPIslave_FoeWrite(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password);
UINT16 SPIslave_FoeWriteData(UINT16 MBXMEM * pData, UINT16 Size, BOOL bDataFollowing);
UINT16 SPIslave_FoeReadData(UINT32 fileOffset, UINT16 maxBlockSize, UINT16 * pData);
void SPIslave_FoeError(UINT32 errorCode);

