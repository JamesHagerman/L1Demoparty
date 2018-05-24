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

/********************************************************************
-usb_descriptors.c-
-------------------------------------------------------------------
Filling in the descriptor values in the usb_descriptors.c file:
-------------------------------------------------------------------

[Device Descriptors]
The device descriptor is defined as a USB_DEVICE_DESCRIPTOR type.
This type is defined in usb_ch9.h  Each entry into this structure
needs to be the correct length for the data type of the entry.

[Configuration Descriptors]
The configuration descriptor was changed in v2.x from a structure
to a uint8_t array.  Given that the configuration is now a byte array
each byte of multi-byte fields must be listed individually.  This
means that for fields like the total size of the configuration where
the field is a 16-bit value "64,0," is the correct entry for a
configuration that is only 64 bytes long and not "64," which is one
too few bytes.

The configuration attribute must always have the _DEFAULT
definition at the minimum. Additional options can be ORed
to the _DEFAULT attribute. Available options are _SELF and _RWU.
These definitions are defined in the usb_device.h file. The
_SELF tells the USB host that this device is self-powered. The
_RWU tells the USB host that this device supports Remote Wakeup.

[Endpoint Descriptors]
Like the configuration descriptor, the endpoint descriptors were
changed in v2.x of the stack from a structure to a uint8_t array.  As
endpoint descriptors also has a field that are multi-byte entities,
please be sure to specify both bytes of the field.  For example, for
the endpoint size an endpoint that is 64 bytes needs to have the size
defined as "64,0," instead of "64,"

Take the following example:
    // Endpoint Descriptor //
    0x07,                       //the size of this descriptor //
    USB_DESCRIPTOR_ENDPOINT,    //Endpoint Descriptor
    _EP02_IN,                   //EndpointAddress
    _INT,                       //Attributes
    0x08,0x00,                  //size (note: 2 bytes)
    0x02,                       //Interval

The first two parameters are self-explanatory. They specify the
length of this endpoint descriptor (7) and the descriptor type.
The next parameter identifies the endpoint, the definitions are
defined in usb_device.h and has the following naming
convention:
_EP<##>_<dir>
where ## is the endpoint number and dir is the direction of
transfer. The dir has the value of either 'OUT' or 'IN'.
The next parameter identifies the type of the endpoint. Available
options are _BULK, _INT, _ISO, and _CTRL. The _CTRL is not
typically used because the default control transfer endpoint is
not defined in the USB descriptors. When _ISO option is used,
addition options can be ORed to _ISO. Example:
_ISO|_AD|_FE
This describes the endpoint as an isochronous pipe with adaptive
and feedback attributes. See usb_device.h and the USB
specification for details. The next parameter defines the size of
the endpoint. The last parameter in the polling interval.

-------------------------------------------------------------------
Adding a USB String
-------------------------------------------------------------------
A string descriptor array should have the following format:

rom struct{byte bLength;byte bDscType;word string[size];}sdxxx={
sizeof(sdxxx),DSC_STR,<text>};

The above structure provides a means for the C compiler to
calculate the length of string descriptor sdxxx, where xxx is the
index number. The first two bytes of the descriptor are descriptor
length and type. The rest <text> are string texts which must be
in the unicode format. The unicode format is achieved by declaring
each character as a word type. The whole text string is declared
as a word array with the number of characters equals to <size>.
<size> has to be manually counted and entered into the array
declaration. Let's study this through an example:
if the string is "USB" , then the string descriptor should be:
(Using index 02)
rom struct{byte bLength;byte bDscType;word string[3];}sd002={
sizeof(sd002),DSC_STR,'U','S','B'};

A USB project may have multiple strings and the firmware supports
the management of multiple strings through a look-up table.
The look-up table is defined as:
rom const unsigned char *rom USB_SD_Ptr[]={&sd000,&sd001,&sd002};

The above declaration has 3 strings, sd000, sd001, and sd002.
Strings can be removed or added. sd000 is a specialized string
descriptor. It defines the language code, usually this is
US English (0x0409). The index of the string must match the index
position of the USB_SD_Ptr array, &sd000 must be in position
USB_SD_Ptr[0], &sd001 must be in position USB_SD_Ptr[1] and so on.
The look-up table USB_SD_Ptr is used by the get string handler
function.

-------------------------------------------------------------------

The look-up table scheme also applies to the configuration
descriptor. A USB device may have multiple configuration
descriptors, i.e. CFG01, CFG02, etc. To add a configuration
descriptor, user must implement a structure similar to CFG01.
The next step is to add the configuration descriptor name, i.e.
cfg01, cfg02,.., to the look-up table USB_CD_Ptr. USB_CD_Ptr[0]
is a dummy place holder since configuration 0 is the un-configured
state according to the definition in the USB specification.

********************************************************************/

/*********************************************************************
 * Descriptor specific type definitions are defined in:
 * usb_device.h
 *
 * Configuration options are defined in:
 * usb_config.h
 ********************************************************************/
#ifndef __USB_DESCRIPTORS_C
#define __USB_DESCRIPTORS_C

/** INCLUDES *******************************************************/
#include "usb.h"

/** CONSTANTS ******************************************************/
#if defined(COMPILER_MPLAB_C18)
#pragma romdata
#endif

/* Device Descriptor */
const USB_DEVICE_DESCRIPTOR device_dsc=
{
    0x12,    // Size of this descriptor in bytes
    USB_DESCRIPTOR_DEVICE,                // DEVICE descriptor type
    0x0200,                 // USB Spec Release Number in BCD format
    0x00,                   // Class Code
    0x00,                   // Subclass code
    0x00,                   // Protocol code
    USB_EP0_BUFF_SIZE,          // Max packet size for EP0, see usb_config.h
    0x04D8,                 // Vendor ID
    0x0059,                 // Product ID: Audio MIDI example
    0x0002,                 // Device release number in BCD format
    0x01,                   // Manufacturer string index
    0x02,                   // Product string index
    0x00,                   // Device serial number string index
    0x01                    // Number of possible configurations
};

/* Configuration 1 Descriptor */
/* copied from the midi10.pdf USB Device Class Specification for MIDI Devices */
const uint8_t configDescriptor1[]={
    /* Configuration Descriptor */
    0x09,//sizeof(USB_CFG_DSC),    // Size of this descriptor in bytes
    USB_DESCRIPTOR_CONFIGURATION,                // CONFIGURATION descriptor type
    101,0x00,            // Total length of data for this cfg
    2,                      // Number of interfaces in this cfg
    1,                      // Index value of this configuration
    0,                      // Configuration string index
    _DEFAULT | _SELF,               // Attributes, see usb_device.h
    50,                     // Max power consumption (2X mA)

    /* Interface Descriptor */
    0x09,//sizeof(USB_INTF_DSC),   // Size of this descriptor in bytes
    USB_DESCRIPTOR_INTERFACE,               // INTERFACE descriptor type
    0,                      // Interface Number
    0,                      // Alternate Setting Number
    0,                      // Number of endpoints in this intf
    1,               // Class code
    1,     // Subclass code
    0,     // Protocol code
    0,                      // Interface string index

    /* MIDI Adapter Class-specific AC Interface Descriptor */
    0x09,       //bLength
    0x24,       //bDescriptorType - CS_INTERFACE
    0x01,       //bDescriptorSubtype - HEADER
    0x00,0x01,  //bcdADC
    0x09,0x00,  //wTotalLength
    0x01,       //bInCollection
    0x01,       //baInterfaceNr(1)

    /* MIDI Adapter Standard MS Interface Descriptor */
    0x09,       //bLength
    0x04,       //bDescriptorType
    0x01,       //bInterfaceNumber
    0x00,       //bAlternateSetting
    0x02,       //bNumEndpoints
    0x01,       //bInterfaceClass
    0x03,       //bInterfaceSubclass
    0x00,       //bInterfaceProtocol
    0x00,       //iInterface

    /* MIDI Adapter Class-specific MS Interface Descriptor */
    0x07,       //bLength
    0x24,       //bDescriptorType - CS_INTERFACE
    0x01,       //bDescriptorSubtype - MS_HEADER
    0x00,0x01,  //BcdADC
    0x41,0x00,  //wTotalLength

    /* MIDI Adapter MIDI IN Jack Descriptor (Embedded) */
    0x06,       //bLength
    0x24,       //bDescriptorType - CS_INTERFACE
    0x02,       //bDescriptorSubtype - MIDI_IN_JACK
    0x01,       //bJackType - EMBEDDED
    0x01,       //bJackID
    0x00,       //iJack

    /* MIDI Adapter MIDI IN Jack Descriptor (External) */
    0x06,       //bLength
    0x24,       //bDescriptorType - CS_INTERFACE
    0x02,       //bDescriptorSubtype - MIDI_IN_JACK
    0x02,       //bJackType - EXTERNAL
    0x02,       //bJackID
    0x00,       //iJack

    /* MIDI Adapter MIDI OUT Jack Descriptor (Embedded) */
    0x09,       //bLength
    0x24,       //bDescriptorType - CS_INTERFACE
    0x03,       //bDescriptorSubtype - MIDI_OUT_JACK
    0x01,       //bJackType - EMBEDDED
    0x03,       //bJackID
    0x01,       //bNrInputPins
    0x02,       //BaSourceID(1)
    0x01,       //BaSourcePin(1)
    0x00,       //iJack

    /* MIDI Adapter MIDI OUT Jack Descriptor (External) */
    0x09,       //bLength
    0x24,       //bDescriptorType - CS_INTERFACE
    0x03,       //bDescriptorSubtype - MIDI_OUT_JACK
    0x02,       //bJackType - EXTERNAL
    0x04,       //bJackID
    0x01,       //bNrInputPins
    0x01,       //BaSourceID(1)
    0x01,       //BaSourcePin(1)
    0x00,       //iJack

    /* MIDI Adapter Standard Bulk OUT Endpoint Descriptor */
    0x09,       //bLength
    0x05,       //bDescriptorType - ENDPOINT
    USB_DEVICE_AUDIO_MIDI_ENDPOINT | _EP_OUT,       //bEndpointAddress - OUT
    0x02,       //bmAttributes
    0x40,0x00,  //wMaxPacketSize
    0x00,       //bInterval
    0x00,       //bRefresh
    0x00,       //bSynchAddress

    /* MIDI Adapter Class-specific Bulk OUT Endpoint Descriptor */
    0x05,       //bLength
    0x25,       //bDescriptorType - CS_ENDPOINT
    0x01,       //bDescriptorSubtype - MS_GENERAL
    0x01,       //bNumEmbMIDIJack
    0x01,       //BaAssocJackID(1)

    /* MIDI Adapter Standard Bulk IN Endpoint Descriptor */
    0x09,       //bLength
    0x05,       //bDescriptorType
    USB_DEVICE_AUDIO_MIDI_ENDPOINT | _EP_IN,       //bEndpointAddress
    0x02,       //bmAttributes
    0x40,0x00,  //wMaxPacketSize
    0x00,       //bInterval
    0x00,       //bRefresh
    0x00,       //bSynchAddress

    /* MIDI Adapter Class-specific Bulk IN Endpoint Descriptor */
    0x05,       //bLength
    0x25,       //bDescriptorType - CS_ENDPOINT
    0x01,       //bDescriptorSubtype - MS_GENERAL
    0x01,       //bNumEmbMIDIJack
    0x03        //BaAssocJackID(1)
};


//Language code string descriptor
const struct{uint8_t bLength;uint8_t bDscType;uint16_t string[1];}sd000={
sizeof(sd000),USB_DESCRIPTOR_STRING,{0x0409
}};

//Manufacturer string descriptor
const struct{uint8_t bLength;uint8_t bDscType;uint16_t string[25];}sd001={
sizeof(sd001),USB_DESCRIPTOR_STRING,
{'M','i','c','r','o','c','h','i','p',' ',
'T','e','c','h','n','o','l','o','g','y',' ','I','n','c','.'
}};

//Product string descriptor
const struct{uint8_t bLength;uint8_t bDscType;uint16_t string[12];}sd002={
sizeof(sd002),USB_DESCRIPTOR_STRING,
{'M','I','D','I',' ','E','x','a','m','p','l','e'}};

//Array of configuration descriptors
const uint8_t *const USB_CD_Ptr[]=
{
    (const uint8_t *const)&configDescriptor1
};

//Array of string descriptors
const uint8_t *const USB_SD_Ptr[]=
{
    (const uint8_t *const)&sd000,
    (const uint8_t *const)&sd001,
    (const uint8_t *const)&sd002
};

/** EOF usb_descriptors.c ***************************************************/

#endif

