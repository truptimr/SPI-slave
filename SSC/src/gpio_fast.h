/*
 *    Copyright (C) 2017 Matthieu Bec
 *
 *    This file is part of m1cs.
 *
 *    This program is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#include <plib.h>


#define LED_ON() {PORTSetBits(IOPORT_D, BIT_1); } // LED
#define LED_OFF() {PORTClearBits(IOPORT_D, BIT_1); }
// For the external WDT

#define WDT_Off() { PORTClearBits(IOPORT_A, BIT_5); }
#define WDT_On() { PORTSetBits(IOPORT_A, BIT_5); }
#define WDT_StateGet() { mPORTGReadLatchBits(BIT_5); }
#define WDT_Toggle() { PORTToggleBits(IOPORT_A, BIT_5); }

// for 