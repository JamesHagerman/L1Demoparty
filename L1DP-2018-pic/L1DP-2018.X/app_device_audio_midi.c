/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/

/** INCLUDES *******************************************************/
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

#include "system.h"

#include "usb.h"
#include "usb_device_midi.h"

#include "music.h"


/** VARIABLES ******************************************************/
/* Some processors have a limited range of RAM addresses where the USB module
 * is able to access.  The following section is for those devices.  This section
 * assigns the buffers that need to be used by the USB module into those
 * specific areas.
 */
#if defined(FIXED_ADDRESS_MEMORY)
    #if defined(COMPILER_MPLAB_C18)
        #pragma udata DEVICE_AUDIO_MIDI_RX_DATA_BUFFER=DEVCE_AUDIO_MIDI_RX_DATA_BUFFER_ADDRESS
            static uint8_t ReceivedDataBuffer[64];
        #pragma udata DEVICE_AUDIO_MIDI_EVENT_DATA_BUFFER=DEVCE_AUDIO_MIDI_EVENT_DATA_BUFFER_ADDRESS
            static USB_AUDIO_MIDI_EVENT_PACKET midiData;
        #pragma udata
    #elif defined(__XC8)
        static uint8_t ReceivedDataBuffer[64] @ DEVCE_AUDIO_MIDI_RX_DATA_BUFFER_ADDRESS;
        static USB_AUDIO_MIDI_EVENT_PACKET midiData @ DEVCE_AUDIO_MIDI_EVENT_DATA_BUFFER_ADDRESS;
    #endif
#else
    static uint8_t ReceivedDataBuffer[64];
    static USB_AUDIO_MIDI_EVENT_PACKET midiData;
#endif

static USB_HANDLE USBTxHandle;
static USB_HANDLE USBRxHandle;

static uint8_t pitch;
static bool sentNoteOff;

static USB_VOLATILE uint8_t msCounter;

/*********************************************************************
* Function: void APP_DeviceAudioMIDIInitialize(void);
*
* Overview: Initializes the demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceAudioMIDIInitialize()
{
    USBTxHandle = NULL;
    USBRxHandle = NULL;

    pitch = 0x3C;
    sentNoteOff = true;

    msCounter = 0;

    //enable the HID endpoint
    USBEnableEndpoint(USB_DEVICE_AUDIO_MIDI_ENDPOINT,USB_OUT_ENABLED|USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);

    //Re-arm the OUT endpoint for the next packet
    USBRxHandle = USBRxOnePacket(USB_DEVICE_AUDIO_MIDI_ENDPOINT,(uint8_t*)&ReceivedDataBuffer,64);
}

/*********************************************************************
* Function: void APP_DeviceAudioMIDIInitialize(void);
*
* Overview: Initializes the demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceAudioMIDISOFHandler()
{
    if(msCounter != 0)
    {
        msCounter--;
    }
}


/*********************************************************************
* Function: void APP_DeviceAudioMIDITasks(void);
*
* Overview: Keeps the Custom HID demo running.
*
* PreCondition: The demo should have been initialized and started via
*   the APP_DeviceAudioMIDIInitialize() and APP_DeviceAudioMIDIStart() demos
*   respectively.
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceAudioMIDITasks()
{
    if(!USBHandleBusy(USBRxHandle))
    {
        //We have received a MIDI packet from the host, process it and then
        //  prepare to receive the next packet

        //INSERT MIDI PROCESSING CODE HERE
        // Jamis is doing just that. Chill out!
        
//        printf("Midi packet arrived: '%i'-'%i'-'%i'\r\n", ReceivedDataBuffer[0], ReceivedDataBuffer[1], ReceivedDataBuffer[2]);
//        printf("  expect garbage: '%i' '%i' '%i'\r\n", ReceivedDataBuffer[3], ReceivedDataBuffer[4], ReceivedDataBuffer[5]);
        
        midiData.DATA_0 = ReceivedDataBuffer[0]; // note on or off
        midiData.DATA_1 = ReceivedDataBuffer[2]; // pitch
        midiData.DATA_2 = ReceivedDataBuffer[3]; // velocity
        
        // Handle CC on modulation channel
        if (midiData.DATA_0 == 11 && ReceivedDataBuffer[2] == 1) {
            if (midiData.DATA_2 >=0 && midiData.DATA_2 <20) {
                setWavetable(&chan1Osc, 0);
                setWavetable(&chan2Osc, 0);
                setWavetable(&chan3Osc, 0);
                setWavetable(&chan4Osc, 0);
            } else if (midiData.DATA_2 >=20 && midiData.DATA_2 <40) {
                setWavetable(&chan1Osc, 1);
                setWavetable(&chan2Osc, 1);
                setWavetable(&chan3Osc, 1);
                setWavetable(&chan4Osc, 1);
            } else if (midiData.DATA_2 >=40 && midiData.DATA_2 <50) {
                setWavetable(&chan1Osc, 2);
                setWavetable(&chan2Osc, 2);
                setWavetable(&chan3Osc, 2);
                setWavetable(&chan4Osc, 2);
            } else if (midiData.DATA_2 >=50 && midiData.DATA_2 <60) {
                setWavetable(&chan1Osc, 3);
                setWavetable(&chan2Osc, 3);
                setWavetable(&chan3Osc, 3);
                setWavetable(&chan4Osc, 3);
            } else if (midiData.DATA_2 >=60 && midiData.DATA_2 <70) {
                setWavetable(&chan1Osc, 4);
                setWavetable(&chan2Osc, 4);
                setWavetable(&chan3Osc, 4);
                setWavetable(&chan4Osc, 4);
            } else if (midiData.DATA_2 >=70 && midiData.DATA_2 <80) {
                setWavetable(&chan1Osc, 5);
                setWavetable(&chan2Osc, 5);
                setWavetable(&chan3Osc, 5);
                setWavetable(&chan4Osc, 5);
            } else if (midiData.DATA_2 >=80 && midiData.DATA_2 <=127) {
                setWavetable(&chan1Osc, 6);
                setWavetable(&chan2Osc, 6);
                setWavetable(&chan3Osc, 6);
                setWavetable(&chan4Osc, 6);
            }
        }
        
        // TODO: Handle pitch bend!!!
        
        // Try to parse the midi packet:
        if (midiData.DATA_0 == 0x09) {
            // Note On
            noteOn(midiData.DATA_1);
        } else if (midiData.DATA_0 == 0x08) {
            // Note Off
            noteOff(midiData.DATA_1);
        } // todo: Manage other midi message types

        //Get ready for next packet (this will overwrite the old data)
        USBRxHandle = USBRxOnePacket(USB_DEVICE_AUDIO_MIDI_ENDPOINT,(uint8_t*)&ReceivedDataBuffer,64);
    }

    /* If the user button is pressed... */
//    if(BUTTON_IsPressed(BUTTON_DEVICE_AUDIO_MIDI) == true)
    if (false)
    {
        /* and we haven't sent a transmission in the past 100ms... */
        if(msCounter == 0)
        {
            /* and we have sent the NOTE_OFF for the last note... */
            if(sentNoteOff == true)
            {
                /* and we aren't currently trying to transmit data... */
                if(!USBHandleBusy(USBTxHandle))
                {
                    //Then reset the 100ms counter
                    msCounter = 100;

                    midiData.Val = 0;   //must set all unused values to 0 so go ahead
                                        //  and set them all to 0

                    midiData.CableNumber = 0;
                    midiData.CodeIndexNumber = MIDI_CIN_NOTE_ON;
                    midiData.DATA_0 = 0x90;         //Note on
                    midiData.DATA_1 = pitch;         //pitch
                    midiData.DATA_2 = 0x7F;  //velocity

                    USBTxHandle = USBTxOnePacket(USB_DEVICE_AUDIO_MIDI_ENDPOINT,(uint8_t*)&midiData,4);

                    /* we now need to send the NOTE_OFF for this note. */
                    sentNoteOff = false;
                }
            }
        }
    }
    else
    {
        if(msCounter == 0)
        {
            if(sentNoteOff == false)
            {
                if(!USBHandleBusy(USBTxHandle))
                {
                    //Debounce counter for 100ms
                    msCounter = 100;

                    midiData.Val = 0;   //must set all unused values to 0 so go ahead
                                        //  and set them all to 0

                    midiData.CableNumber = 0;
                    midiData.CodeIndexNumber = MIDI_CIN_NOTE_ON;
                    midiData.DATA_0 = 0x90;     //Note off
                    midiData.DATA_1 = pitch++;     //pitch
                    midiData.DATA_2 = 0x00;        //velocity

                    if(pitch == 0x49)
                    {
                        pitch = 0x3C;
                    }

                    USBTxHandle = USBTxOnePacket(USB_DEVICE_AUDIO_MIDI_ENDPOINT,(uint8_t*)&midiData,4);
                    sentNoteOff = true;
                }
            }
        }
    }
}
