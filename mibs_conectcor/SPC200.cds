 -- File Name   : SPC200.txt
-- Date        : Wed Aug 23 14:03:00 CEST 2006
-- Author      : Gilles Marceau
-- Date        : Tue Jul 06 18:48:54 CEST 2004
-- Author      : Luc Capanaccia
-- Date        : Tue Jul 22 12:00:00 CEST 2004
-- Reviewed by : Gilles Dupont
-- Date        : Mon Sep 13 12:00:00 CEST 2004
-- Reviewed by : Gilles Dupont
-- Date        : Mon Sep 21 12:00:00 CEST 2004
-- Reviewed by : Gilles Dupont
-- Date        : Tue Nov 16 12:30:00 CEST 2004
-- Reviewed by : Luc Capanaccia
-- Date        : Fri Dec 17 12:30:00 CEST 2004
-- Reviewed by : Luc Capanaccia
-- Date        : Thu Sep 15 14:00:00 CEST 2005
-- Reviewed by : Philippe Rimauro (Tag PR01)
-- Date        : Thu Feb 08 14:03:00 CEST 2007
-- Author      : Gilles Marceau
  "The type of Channel estimation process. Two are available:
                          - automatic, the equipment negociates the best configuration
                            with the remote equipment,
                          - manual, the operator defines the configuration."               "The software index."               #"A channel is composed of 7 bands."               �"The pilot carrier wave can be chosen between 
                        the carrier 1 up to carrier 128 inside a band carrier range."               %"Type of software management action."               $"A group is composed of 8 carriers."                "The adapt level integer value."               %"Type of software management action."               *"Result value of software action process."                "Result value of input vectors."               &"The channel bandwidth integer value."               �"The different type of plc channels:
                          rx for the current reception channel,
                          rx last for the last reception channel,
                          tx for the current transmission channel."               ""A band is composed of 16 groups."               3"Modulation amplitude used by a group of carriers."                                                                                 "Description" "Contact-info" "200412171230Z" "200411161230Z" "200409211200Z" "200409131200Z" "200407221200Z" "200407011757Z" "Add software upgrade features" 2"Add adapt level table , commit and reset command" 3"Add quick access to channel modulation and pilots" "Add quick access to notches" "Corrected compilation errors" "Initial revision"       -- December 17, 2004
               }"This table gathers all statistic data specific 
                                to SPC200 chip relative to plc connection."                       w"This row contains statistic data specific to 
                                SPC200 chip  relative to a connection."                       o"The band number on which the signal, 
                                        noise, ber data are collected."                       o"The group number on which the signal, 
                                        noise, ber data are collected"                       o"The group number on which the signal, 
                                        noise, ber data are collected"                       n"The DB value of the signal associated 
                                        with the carrier wave entry."                       m"The DB value of the noise associated 
                                        with the carrier wave entry."                      �"This table gathers all statistic data specific to 
                                SPC200 chip relative to plc channels. This table has 
                                the same information as the portChannelStatsTable 
                                but in a more compact way. This table has been added 
                                to deal with possible slow performances."                       w"This row contains statistic data specific to 
                                SPC200 chip  relative to a connection."                      t"The values of the signal for all the carrier waves. 
                                        The expected format is VALUE VALUE VALUE ... VALUE. 
                                        Each value is coded on two bytes. 
                                        There is one value for each 128 carriers of the 
                                        considered band."                      r"The values of the noise for all the carrier waves. 
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is coded on two bytes. 
                                        There is one value for each 128 carriers of the 
                                        considered band."                       $"Average attenuation per band (dB)."                       "Average SNR per band (dB)."                      �"This table gathers all statistic data specific to 
                                SPC200 chip relative to plc channels. This table has 
                                the same information as the portChannelStatsTable 
                                but in a more compact way. This table has been added 
                                to deal with possible slow performances."                       w"This row contains statistic data specific to 
                                SPC200 chip  relative to a connection."                       '"Average attenuation on the link (dB)."                       "Average SNR on the link (dB)."                       "boot statistics"               "Boot"                       "Manual reset"                       "Failure reset"                           
"Plc Mode"       	-- PR01
   --PR01
              �"The total number of topology changes detected 
                                        by this plc bridge since the management entity 
                                        was last reset or initialized. Such changes 
                                        concerns only 
                                        - the plcBasePortTable rows 
                                        - the plcBasePortTable columns 
                                        except for plcBasePortChannelEstimation"                       7"This table contains the list of plc remote connection"                       5"This row contains plc remote connection information"                       �"The MAC address of the MAC layer above 
                                        the plc interface of the remote PLC equipment."                       �"The MAC address of the MAC layer above 
                                        the plc interface of the remote PLC equipment."                       i"Enable or disable the automatic channel 
                                        estimation processus."                       "Link attenuation (dB)."                       �"This table contains string values for a quick access to
                                        the modulation amplitude configurations of all active
                                        channels."                      +"This row contains string values for a quick access to 
                                        the modulation amplitude configuration
                                        of each active channel of the remote 
                                        connection referenced by plcBasePortIndex."                      �"The modulation amplitude values for the Rx channel of 
                                        a given remote connection entry.
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is an octet representing two modulation values.
                                        Each modulation is coded on 4 bits.
                                        There are ( 16 groups * 7 bands ) / 2 = 66 values."                      "The modulation amplitude values for the Rx Last channel of 
                                        a given remote connection entry.
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is an octet representing two modulation values.
                                        Each modulation is coded on 4 bits representing ModulationValue - 1.
                                        There are ( 16 groups * 7 bands ) / 2 = 66 values."                      �"The modulation amplitude values for the Tx channel of 
                                        a given remote connection entry.
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is an octet representing two modulation values.
                                        Each modulation is coded on 4 bits.
                                        There are ( 16 groups * 7 bands ) / 2 = 66 values."                       ~"This table contains the modulation amplitude 
                                        configuration of all active channels."                      #"This row contains modulation amplitude configuration
                                        of the channel, referenced by the plcPortChannelIndex, 
                                        of the remote connection referenced by 
                                        plcBasePortIndex."                       6"The band number of which the modulations are defined"                       �"The modulation amplitude of the first group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the second group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the third group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the fourth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the fifth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the sixth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the seventh group 
                                         of the band entry of the channel entry 
                                         for a given remote connection entry."                       �"The modulation amplitude of the eighth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the nineth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the tenth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the eleventh group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the twelveth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the thirteenth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the fourteenth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the fifteenth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                       �"The modulation amplitude of the sixteenth group 
                                        of the band entry of the channel entry 
                                        for a given remote connection entry."                          
"The MAC address of the MAC layer above 
                                        the plc interface of the remote 
                                        PLC equipment for which the modulation 
                                        value changes are requested."                       �"The channel type of the remote PLC equipment
                                        for which the modulation value changes 
                                        are requested."                       p"The band number of which the modulation value 
                                        changes are requested."                       �"The new requested modulation amplitude of the 
                                        first group of the considered band and 
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        second group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        third group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        fourth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        fifth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        sixth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        seventh group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        eighth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        nineth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        tenth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        eleventh group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        twelveth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        thirteenth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        fourteenth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        fifteenth group of the considered band and
                                        channel input values."                       �"The new requested modulation amplitude of the 
                                        sixteenth group of the considered band and
                                        channel input values."                       �"True to request a modification of all the modulations
                                        associated to a band and a channel of a remote
                                        PLC equipment."                       9"Result value of the requested modulation value changes."                       ."This table contains the list of plc channels"                       +"This row contains plc channel information"                      �"The channel number belongs to the remote connection 
                                        with plc equipment associated with the 
                                        plcBasePortIndex        value. 
                                        Only three channels are expected.
                                        Index 1 for RX channel
                                        Index 2 for RXLast channel
                                        index 3 for TX channel"                       "The channel type."                       '"The gain associated with the channel."                       )"The bandwidth of the channel in Kbit/s."                       1"The maximum bandwidth of the channel in Kbit/s."                       1"The synchronization band used for this channel."                       �"This table contains the string values representing
                                        of pilot values of all active channels."                       �"This row contains a quick access for pilot values , 
                                        of the remote connection referenced by 
                                        plcBasePortIndex."                      �"The carrier wave numbers which support  
                                        the pilot waves for the Rx Channel.
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is a pair of octets representing the pilot 
                                        values. There is one pair (pilot1 pilot2) for each
                                        of the 7 bands."                      �"The carrier wave numbers which support  
                                        the pilot waves for the Rx Last Channel.
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is a pair of octets representing the pilot 
                                        values. There is one pair (pilot1 pilot2) for each
                                        of the 7 bands."                      �"The carrier wave numbers which support  
                                        the pilot waves for the Tx Channel.
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is a pair of octets representing the pilot 
                                        values. There is one pair (pilot1 pilot2) for each
                                        of the 7 bands."                       k"This tabel contains pilots configuration 
                                         for each plc channel."                       �"This row contains the pilots 1 and 2 configuration 
                                         for a channel defined by the 
                                         couple (plcBasePortIndex, plcPortChannelIndex)"                       2"The band number on which the pilots are defined."                       �"The carrier wave number which supports  
                                        the first pilot wave for the channel
                                        associated with this entry."                       �"The carrier wave number which supports 
                                        the second pilot wave for the channel
                                        associated with this entry."                          "The MAC address of the MAC layer above 
                                        the plc interface of the remote 
                                        PLC equipment for which the pilot 
                                        value changes are requested."                       �"The channel type of the remote PLC equipment
                                        for which the pilot value changes 
                                        are requested."                       l"The band number of which the pilots value 
                                        changes are requested."                       �"The carrier wave number which supports  
                                        the first pilot wave for the considered band and
                                        channel input values."                       �"The carrier wave number which supports  
                                        the second pilot wave for the considered band and
                                        channel input values."                       �"True to request a modification of the first and second pilot
                                        associated to a band and a channel of a remote
                                        PLC equipment."                       5"Result value of the requested pilot values changes."                          O"The values of the notches for all the node bands. 
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is an octet representing the 8 notches of 
                                        each group. There is one value for each 7 * 16 bands."                       j"This table contains Notches configuration 
                                        for the SPC200 chip."                       �"This row contains Notches configuration for a group. 
                                        The group is defined by the couple 
                                        (plcNodeNotchesGroupIndex, plcNodeNotchesBandIndex)."                       3"The band number on which the notches are defined."                       4"The group number on which the notches are defined."                       �"Tell if the first carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"Tell if the second carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"Tell if the third carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"Tell if the fourth carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"Tell if the fifth carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"Tell if the sixth carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"Tell if the seventh carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"Tell if the eighth carrier of the group entry 
                                        of the band entry is a notch carrier. 
                                        The true value means the current carrier is a notch."                           m"The band number on which the notches value 
                                        changes are requested."                       n"The group number on which the notches value 
                                        changes are requested."                       �"The first carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"The second carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"The third carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"The fourth carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"The eighth carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"The eighth carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"The seventh carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"The eighth carrier of the considered group and 
                                        band is a notch carrier. 
                                        The true value means the current carrier is a notch."                       �"True to request a modification of the carrier notches
                                        associated to the considered group and 
                                        band."                       C"Result value of the requested node carrier notches value changes."                      �"The values of the pilot for all the node bands. 
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is a pair of octets representing the pilot 
                                        values. There is one pair (pilot1 pilot2) for each
                                        of the 7 bands."                       m"This table contains pilot values 
                                        used by default on all channels."                       �"This row contains pilot values 
                                        used by default on a band. 
                                        The band is defined by the index 
                                        plcNodePilotsBandIndex."                       8"The band number on which the pilot values are defined."                       p"The default carrier wave number 
                                        which supports the first pilot wave."                       q"The default carrier wave number 
                                        which supports the second pilot wave."                           l"The band number on which the pilot values 
                                        changes are requested."                       �"The default carrier wave number 
                                        which supports the first pilot wave of 
                                        the considered band."                       �"The default carrier wave number 
                                        which supports the second pilot wave of 
                                        the considered band."                       �"True to request a modification of the pilot values
                                        associated to the considered band."                       :"Result value of the requested node pilot values changes."                       �"This table contains string values for a 
                                        quick access to the adapt configurations 
                                        of all the carriers."                       �"This row contains string values for a quick access to 
                                        the adapt configuration
                                        of each carrier of a band."                       8"The band number on which the adapt values are defined."                      |"The adapt values of the 128 carriers of a band.
                                        The expected format is VALUE VALUE VALUE ... VALUE.
                                        Each value is two octets representing one adapt carrier 
                                        level.
                                        There are ( 16 groups * 8 carriers)  = 128 values."                       w"This table contains adapt level configuration 
                                        for each carrier of the node."                      "This row contains adapt level values 
                                        for a group of carriers. 
                                        The group is defined by the couple
                                        (plcNodeAdaptsBandIndex,plcNodeAdaptsGroupIndex)."                       8"The band number on which the adapt values are defined."                       9"The group number on which the adapt values are defined."                       4"The adapt level of the first carrier of the group."                       5"The adapt level of the second carrier of the group."                       4"The adapt level of the third carrier of the group."                       5"The adapt level of the fourth carrier of the group."                       4"The adapt level of the fifth carrier of the group."                       4"The adapt level of the sixth carrier of the group."                       6"The adapt level of the seventh carrier of the group."                       5"The adapt level of the eighth carrier of the group."                           q"The band number on which the adapt level value 
                                        changes are requested."                       s"The group number on which the adapt level value 
                                         changes are requested."                       |"The adapt level of the first carrier of the 
                                        considered group of the chosen band."                       }"The adapt level of the second carrier of the 
                                        considered group of the chosen band."                       |"The adapt level of the third carrier of the 
                                        considered group of the chosen band."                       }"The adapt level of the fourth carrier of the 
                                        considered group of the chosen band."                       |"The adapt level of the fifth carrier of the 
                                        considered group of the chosen band."                       |"The adapt level of the sixth carrier of the 
                                        considered group of the chosen band."                       ~"The adapt level of the seventh carrier of the 
                                        considered group of the chosen band."                       }"The adapt level of the eighth carrier of the 
                                        considered group of the chosen band."                       �"True to request a modification of the carrier 
                                        adapt level associated to the considered group and 
                                        band."                       i"Result value of the requested node adapt level 
                                        value changes."                       a"This table contains ip and mac 
                                        addresses of the node."                       e"This row contains ip and mac address
                                        used by an interface."                       5"The IP address of the IP layer above the interface."                       9"The IP Subnet mask of the IP layer above the interface."                       7"The MAC address of the MAC layer above the interface."                       :"The Gateway address of the IP layer above the interface."                               y"True to request the commit of the configuration 
                                        changes into the flash memory"                       7"Result value of the requested flash commit operation."                           �"True to request the reset of the node.
                                        This operation will terminate the communication 
                                        between the manager and the node"                           2"True to request the equipment to flat the signal"                          �"true if the modem should turn to spectrum analyser mode.
                                        In this mode the modem enters a receive only mode,
                                        and captures periodic samples of the signal on the powerline.
                                        The spectrum analyser mode shall be disabled for normal
                                        powerline modem operation."                       �"This table gathers all statistic data specific to 
                                        SPC200 chip relative to plc analyser."                       x"This row contains statistic data specific to 
                                        SPC200 chip relative to a band."                      S"Minimum signal measured over several samples for the
                                        associated carrier wave entry. The value is expressed
                                        in Glomer© which can be converted in dBm/Hz using the
                                        following formula: dBm/Hz = 19*log10(Glomer©) - 113"                      Q"Maximum signal measured on several samples for the
                                        associated carrier wave entry. The value is expressed
                                        in Glomer© which can be converted in dBm/Hz using the
                                        following formula: dBm/Hz = 19*log10(Glomer©) - 113"                      Q"Average signal measured on several samples for the
                                        associated carrier wave entry. The value is expressed
                                        in Glomer© which can be converted in dBm/Hz using the
                                        following formula: dBm/Hz = 19*log10(Glomer©) - 113"                      E"Signal measured for last sample on the associated
                                        carrier wave entry. The value is expressed
                                        in Glomer© which can be converted in dBm/Hz using the
                                        following formula: dBm/Hz = 19*log10(Glomer©) - 113"                       -"FFT division factor on the associated band."                       o"Gain factor in dB, as used by the
                                        Automatic Gain Control last sample"                           " "                       " "                       " "                            "The value of the master Bss Id"                       "The value of the slave Bss Id"                           ""True to set the spy dynamic mode"                       :"The synchronization band number used for static spy mode"                           +"The name of the current software release."                       1"The name of the current software board release."                       ="The name of the current software Analog Front End  release."                       n"This table contains the current and reserve 
                                        softwares of the node."                       )"This row contains software information."                       #"The index number of the software."                       #"The name of the software release."                           $"The IP address of the TFTP serveur"                       #"The user login on the TFTP server"                       �"The user password on the TFTP server. 
                                        Warning: This field is displayed using 6 * characters"                       ""The software file name to upload"                       ("True to request the uploading to start"                       )"Result value of the requested uploading"                       %"The service port of the TFTP server"       	-- PR01
                   #"The index of the reserve software"                       `"Type of the software action software:
                                        switch, remove "                       }"True to request the switch between the current 
                                        and the reserver software to start"                       &"Result value of the requested action"                               +"The compliance statement for SPC200 chip."   e"This group is mandatory for 
                                        channel performances analysis"                 m"A collection of objects providing 
                                        node configuration information."                 |"A collection of objects used to request  
                                        node configuration information changes."                 e"A collection of objects providing 
                                        topology configuration."                 t"A collection of objects used to request  
                                        topology configuration changes."                 "A collection of objects providing 
                                        statistic data on node and plc link performances."         --PR01
       a"A collection of objects providing 
                                        software management"                 d"A collection of objects providing 
                                        spectrum analyser data"                 )"The SPC200 chip SNMP agent capabilities"   ("Only one MAU. So the value is always 1" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip" *"Information not available on SPC200 chip"            �--OK                SUPPORTS                        BRIDGE-MIB
--OK                        INCLUDES        { dot1dBase }
--KO                        VARIATION       dot1dBasePortDelayExceededDiscards
--KO                                ACCESS                          not-implemented
--KO                                DESCRIPTION                     "Information not available on SPC200 chip"
--KO                        VARIATION       dot1dBasePortMtuExceededDiscards
--KO                                ACCESS                          not-implemented
--KO                                DESCRIPTION                     "Information not available on SPC200 chip"
 0"Extended ip needed for SPiDCOM functionalities"               '"True if Ip address is set dynamically"                       2"The fields needed by the SPiDCOM functionalities"                