 --
-- FD-ONU-MIB.my
-- MIB generated by MG-SOFT Visual MIB Builder Version 3.0 Build 253
-- Tuesday, January 08, 2013 at 20:37:51
--
--  FD-ONU-MIB.my
-- MIB generated by MG-SOFT Visual MIB Builder Version 3.0 Build 253
-- Thursday, December 27, 2012 at 19:17:08
-- 
--  FD-ONU-MIB.my
-- MIB generated by MG-SOFT Visual MIB Builder Version 3.0 Build 253
-- Thursday, July 19, 2012 at 17:36:42
-- 
--  FD-ONU-MIB.mib
-- MIB generated by MG-SOFT Visual MIB Builder Version 3.0 Build 253
-- Thursday, May 27, 2010 at 18:35:03
-- 
                                                         "ONU mib module" "  "       -- May 27, 2010 at 10:56 GMT
       " "                       " "                       �"Serial No allocated for each ONU which register on each
				PON port for identify them conveniencly. The ID allocated
				for each ONU will stay until the ONU is deleted."                       " "                       "Description."                       " "                       " "                       " "                       " "                       " "                       " "                       " "                       " "                       " "                       "Description."                       Q"Only off line ONUs can be delete by seting the value of this object to 'delete'"                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                           " "                       " "                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       "Description."                       t"This table contain the information which is not normally
				used but may be usefull in some special circumstance"                       >"Each entry in this table contain the information for one ONU"                      �"Description. Reserved.
				Additional Ethernet type to identify vlan frames.
				
				 0     1          2                3
				---------------------------------------------
				vlan EthType| tag upstream | tag downstream |
				---------------------------------------------
				   2byte         1byte            1byte
				
				vlan EthType: default 0x8100
				tag upstream: 1->use this type to tag upstream, 0->untag
				tag downstream: 1->use this type to tag downstream, 0->untag"                       "Description."                       "Description."                       "Description."                       " "                       " "                       " "                       " "                       " "                       " "                       " "                       " "                       " "                       " "                       " aging timeout, unit is 1s"                       " "                       " "                       ("onu port rstp state:normal or blocking"                       " "                       " "                      �"				contain all queue config information for one ONU.
				the value format is:
				Get/SET:
				--------------------------------------------------------------
				| value length | number of links | link0 queues |queue0 size |...
				--------------------------------------------------------------
				       1	             1               1            1
				                                                |<-repeat queues->			
				                                 |<---repeat link's numbers--->
				 ---------------------------------------------------------------------------------------------
				 ...| port numbers | port0 queues |   queue0 size  |...|flooding queues | flooding queue size |
				 ---------------------------------------------------------------------------------------------
				            1             1               1                     1                    1
				                                  |<-repeat queues->|				                                  
				                   |<-----repeat port number times-->|
				 para comment:
				 value length: dont include itself's size
				 port numbers: for FD104B, fixed value, 1 
				 flooding queues: for now, fixed 1
				 flooding queue id: 
				"                       " "                       " "                       " "                      �"				onu ACL rule data format.
				when read or write, the data format is:
				-------------------------------------------------------------------------------
				| data length | global flags | rule numbers | rule flag | precedence | action |
				-------------------------------------------------------------------------------
				       2             1               1            1           1          1
				                                            |<----repeat rule number times-----
				----------------------------------------------------------------
				| action para | clause number | field | match value | operator |
				----------------------------------------------------------------
				      2              1            1          8            1
				                              |<---repeat clause number times-->|
				---------------------------------------------------------------->  
				
				 
				para comment:  
				data length: don't include the length area itself.
				"                       " "                       " "                       "Description."                      "				Self defines data strucure for onu port vlan information.
				Data format:  
				size(unit:byte)|    1             2             1               2         2       ...
				  --------------------------------------------------------------------------
				para		  | data length |option bit| forwarding policy |  pvid | vlan number |...
				           --------------------------------------------------------------------------  
				       2               1                 1              2                 1                 1
				  ---------------------------------------------     ----------------------------------------------
				  | vlan tag |egress tag modification| reserved|...|vlan tag | egress tag modification | reserved |    
				  ---------------------------------------------     ----------------------------------------------
				  |<.................vlan 1...................>|...|<...............vlan n.......................>|
				  
				  So, the total data length should be: 8+4*(vlan nun).
				"                           " "                       " "                       " "                       " "                       "Description."                       " "                       " "                       " "                       " "                       "Description."                           " "                       " "                      �"				IGMP SNOOPING paras value. format:
				--------------------------------------------------------------
				| robustness count | last member query count | port number |...
				---------------------------------------------------------------
				         1                      1                   1     
				------------------------------------------------------------------------
				| groups num 1 | relative queue 1 |...|groups num n | relative queue n |
				------------------------------------------------------------------------
				        1                1                    1               1 
				--------------------------------------
				| qualifier bitmatp | option bit map |
				--------------------------------------
				         2                   1
				                  
				para explain: 
				para               value range          comment
				robust count:          0~12               
				last member count:     0~12 
				port number:                            for FD104B, port number is 4
				groups number :        0~64             this two paras repeast port number times
				relative queue:
				qualifier bit:         0                reserved   
				option bit map:        0                reserved   
				"                       " "                       " "                      \"				igmp group data. this variable is used to add, delete or get igmp groups.
				the data contained in this variable is different for get and add/delete.
				when get, the data format is:
				-------------------------------------------------------------
				| group numbers | group ip address | port bit map |.... repeat group number times
				-------------------------------------------------------------
				       1                 4                 1
				
				when add or delete, the data format is:
				-----------------------------------------------------------------
				| operate code | group numbers | group pvid | port bit map | 
				------------------------------------------------------------------
				       1               1                 2                4
				
				para comment:
				operate code:    1->add, 2->delete
				"                       " "                       " "                      ="				 test cmd data, format:
				---------------------------------------------------------------
				| location | frame number | frame length | reserved | vlan tag |
				---------------------------------------------------------------  
				     1            2              2             1          2 
				para comment:
				               value range         comment
				location:         1,2
				frame number:   1~10000
				frame length:   46~1500
				reserved:          0               this area is not used for now, must be 0
				vlan tag:       0~4094 
				"                      %"				 loopback test results.
				Data Format:
				-----------------------------------------------------------------------------------------
				|status|frames sent|frames received ok|corrupted frames|min delay|max delay|average delay|
				-----------------------------------------------------------------------------------------
				   1         2               2                   2           2         2            2
				
				para comment:
				status:
				1->finished ok
				2->testing
				3->time out 
				4->test command error
				"                           " "                       " "                       " "                       " "                       " "                       -"Administratorly assigned entry index object"                       " "                           " IAD Info"                       " IAD Info"                       "IAD MAC address"                       4"ProtocolSupported 
				0x00: H.248
				0x01: SIP"                       "Iad Software Version"                       A"Iad software time
				Version time format uses: YYYYMMDDHHMMSS"                       7"VoipUserCount
				Indicate POTS number of IAD module"                       &"ONU IAD  Global Parameter Co nfigure"                       &"ONU IAD  Global Parameter Co nfigure"                       ]"IP address configuration mode:
				0x00: Static IP
				0x01: DHCP
				0x02: PPPoE/PPPOE+"                       �"When Voice IP Mode= 0x00, indicate the device 
				static configured IP address, otherwise, this field 
				is invalid, and the value is 0x00."                       �"When Voice IP Mode = 0x00, indicate the device 
				static configured IP address mask, otherwise, 
				this field is invalid, and the value is 0x00."                       �"When Voice IP Mode = 0x00, indicate the device 
				static configured IAD default GW, otherwise, the 
				field is invalid, and the value is 0x00"                       �"PPPOE mode:
				0x00: AUTO (default)
				0x01: Challenge Handshake Authentication Protocol (CHAP)
				0x02: Password Authentication Protocol (PAP)"                       "PPPOE username"                       "PPPOE password"                       �"Tagged flag 
				Indicate whether Voice data uses tag, and the default is 0x01:
				0x00: Pass through
				0x01: Tag
				0x02: VLAN stacking"                       "Voice CVlan"                       D"Voice SVLAN
				If it is single layer of VLAN, the value is 0x00."                       "Voice Priority"                           "Description."                       "Description."                       $"MGPortNo
				The default is 2944."                       :"MGCIP 
				Active softswitch platform IP address.
				"                       <"MgcComPortNo 
				Active softswitch platform port number."                       r"Backup MgcIp 
				Backup softswitch platform IP address. If it is 
				0x00000000, dual homing is not enabled."                       H"Backup MgcComPortNo 
				If it is 0x0000, dual homing is not enabled."                       �"Active MGC 
				0x00: Backup softswitch platform
				0x01: Active softswitch platform
				When SET, ONU ignores this field.
				When GET, ONU returns registered MGC."                       N"RegMode 
				0x00: IP address
				0x01: domain name
				0x02: device name"                       �"MID 
				If RegMode=0x00, the field is empty.
				If the registration mode is device name or 
				domain name, the corresponding strings are 
				padded."                       O"Heartbeat Mode 
				0x00: Close
				0x01: H.248-CTC standard Notify command"                       *"HeartbeatCycle 
				The default is 60s."                       ("HeartbeatCount 
				The default is 3."                       "Description."                       "Description."                       "Description."                       "User TID Name"                       "Description."                       "Description."                       "Number of RTP TID"                       "RTP TID Prefix"                       >"RTP TID Digit Begin
				RTP TID digital portion start value"                       G"RTP TID Mode 
				0x00: alignment mode
				0x01: non-alignment mode"                       "RTP TID Digit Length"                       " H248 RTP TID Info"                       " H248 RTP TID Info"                       "Number of RTP TID"                       "First RTP TID Name"                           " SIP Parameter Configure"                       " SIP Parameter Configure"                       %"MGPortNo 
				The default is 5060."                       9"SipProxyServIp 
				Active SIP agent server IP address"                       A"SipProxyServComPortNo 
				Active SIP agent server port number"                       �"BackupSipProxyServIp 
				Backup SIP agent server IP address, if this field is 
				0x00000000, do not enable dual homing function."                       �"BackupSipProxyServComPortNo 
				Backup SIP agent server port number. If this field 
				is 0x00000000, do not enable dual homing function."                       t"ActiveSipProxyServer 
				When SET, ONU ignores to process this field.
				When GET, ONU returns registered MGC."                       >"SipRegServIP 
				Active SIP registration server IP address"                       F"SipRegServComPortNo 
				Active SIP registration server port number"                       �"BackupSipRegServIp 
				Backup SIP registration server IP address. If this 
				field is 0x00000000, do not enable dual homing."                       �"BackupSipRegServComPortNo 
				Active SIP registration server port number. If this 
				field is 0x00000000, do not enable dual homing."                       "OutBoundServIP"                       "OutBoundServPortNo"                       k"SipRegIntervalSIP 
				Registration refresh cycle, unit is second, and the 
				default value is 3600s."                       Y"HeartbeatSwitch 
				0x00: enable heartbeat switch
				0x01: disable heartbeat switch"                       /"HeartbeatCycle 
				the default value is 60s"                       -"HeartbeatCount 
				the default value is 3"                       " SIP User Parameter Configure"                       " SIP User Parameter Configure"                       B"User Account 
				User phone number, and should user ASCII code"                       ?"User name 
				SIP port username, and should use ASCII code."                       C"User Password 
				SIP port password, and should use ASCII code."                       "Description."                       "Description."                       "Map length"                       @"SIP DigitalMap 
				SIP protocol digital map, ASCII code type"                       " Fax/Modem Configure"                       "Description."                       M"VoiceT38Enable 
				0x00: voice passthrough mode (T30)
				0x01: T38 mode"                       o"VoiceFax/ModemControl 
				At default, use negotiation mode.
				0x00: negotiation mode
				0x01: Auto VBD"                       " IAD Operation Status "                       " IAD Operation Status "                       �"iadOperation 
				0x00000000: Reregister for softswitch platform
				0x00000001: Logout from softswitch platform
				0x00000002: Reset, only for voice module"                       �"iadOperStatus 
				0x00000000: Registering
				0x00000001: Registration successful
				0x00000002: IAD fault
				0x00000003: logout
				0x00000004: IAD is restarting"                       "POTS Status"                       "POTS Status"                      h"IADPortStauts 
				0x00000000: port is registering
				0x00000001: port is idle
				0x00000002: pick up
				0x00000003: dialing
				0x00000004: ringing
				0x00000005: ring back
				0x00000006: connecting
				0x00000007: connected
				0x00000008: releasing connection
				0x00000009: port registration failure
				0x0000000A: port is not activated"                      >"iadPortServiceState 
				0x00000000: endLocal, local end terminates service, caused by user disable port
				0x00000001: endRemote, remote end terminates service, caused by MGC sends down command
				0x00000002: endAuto, automatically terminate service, caused by MGC fault.
				0x00000003: normal service normal"                       �"iadPortCodecMode 0x00000000: G.711 A
				0x00000001: G.729
				0x00000002: G.711U
				0x00000003: G.723
				0x00000004: G.726
				0x00000005: T.38"                       " "                       "POTS Enable"                       "POTS Enable"                       "Pots Id
				"                       4"IADPortEnable
				1: disable
				2: enable
				"                               @"A collection of objects providing basic fd ONU
				management"                 H"A collection of objects providing advanced ONU feature
				management"                 B"A collection of objects providing ONU port parameters management"                 I"A collection of objects providing igmp snooping feature
				management"                 M"A collection of objects providing onu loopback test feature
				management"                 "Description."                     "The compliance statement"   *"This group may or may not be implemented"            