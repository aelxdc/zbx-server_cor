 �-- file: IANAifType-MIB.my
-- http://www.iana.org/assignments/ianaiftype-mib
-- Changes:
--      No changes needed.
-- http://www.mg-soft.com/
  )"This data type is used as the syntax of the ifType
               object in the (updated) definition of MIB-II's
               ifTable.

               The definition of this textual convention with the
               addition of newly assigned values is published
               periodically by the IANA, in either the Assigned
               Numbers RFC, or some derivative of it specific to
               Internet Network Management number assignments.  (The
               latest arrangements can be obtained by contacting the
               IANA.)

               Requests for new values should be made to IANA via
               email (iana@iana.org).

               The relationship between the assignment of ifType
               values and of OIDs to particular media-specific MIBs
               is solely the purview of IANA and is subject to change
               without notice.  Quite often, a media-specific MIB's
               OID-subtree assignment within MIB-II's 'transmission'
               subtree will be the same as its ifType value.
               However, in some circumstances this will not be the
               case, and implementors must not pre-assume any
               specific relationship between ifType values and
               transmission subtree OIDs."                                         �"This MIB module defines the IANAifType Textual
                     Convention, and thus the enumerated values of
                     the ifType object defined in MIB-II's ifTable."""        Internet Assigned Numbers Authority

                     Postal: ICANN
                             4676 Admiralty Way, Suite 330
                             Marina del Rey, CA 90292

                     Tel:    +1 310 823 9358
                     E-Mail: iana@iana.org" "200308250000Z" "200308180000Z" "200308070000Z" "200303180000Z" "200301130000Z" "200210170000Z" "200207160000Z" "200207100000Z" "200206190000Z" "200201040000Z" "200112200000Z" "200111150000Z" "200111060000Z" "200111020000Z" "200110160000Z" "200109190000Z" "200105110000Z" "200101120000Z" "200012190000Z" "200012070000Z" "200012040000Z" "200010170000Z" "200010020000Z" "200009010000Z" "200008240000Z" "200008230000Z" "200008220000Z" "200004250000Z" "200003060000Z" "199910081430Z" "199401310000Z" �"Deprecated IANAifTypes 7 and 11. Obsoleted
                    IANAifTypes 62, 69, and 117.  ethernetCsmacd (6)
                    should be used instead of these values" :"Registration of new IANAifType
                    224." C"Registration of new IANAifTypes
                    222 and 223." :"Registration of new IANAifType
                    221." :"Registration of new IANAifType
                    220." :"Registration of new IANAifType
                    219." C"Registration of new IANAifTypes
                    217 and 218." C"Registration of new IANAifTypes
                    215 and 216." :"Registration of new IANAifType
                    214." H"Registration of new IANAifTypes
                    211, 212 and 213." C"Registration of new IANAifTypes
                    209 and 210." C"Registration of new IANAifTypes
                    207 and 208." :"Registration of new IANAifType
                    206." :"Registration of new IANAifType
                    205." X"Registration of new IANAifTypes
                    199, 200, 201, 202, 203, and 204." :"Registration of new IANAifType
                    198." :"Registration of new IANAifType
                    197." C"Registration of new IANAifTypes
                    195 and 196." C"Registration of new IANAifTypes
                    193 and 194." C"Registration of new IANAifTypes
                    191 and 192." :"Registration of new IANAifType
                    190." C"Registration of new IANAifTypes
                    188 and 189." %"Registration of new IANAifType 187." J"Registration of new IANAifTypes
                     184, 185, and 186." %"Registration of new IANAifType 183." @"Registration of new IANAifTypes
                     174-182." N"Registration of new IANAifTypes 170,
                     171, 172 and 173." ."Registration of new IANAifTypes 168 and 169.""Fixed a missing semi-colon in the IMPORT.
                     Also cleaned up the REVISION log a bit.
                     It is not complete, but from now on it will
                     be maintained and kept up to date with each
                     change to this MIB module." �"Include new name assignments up to cnr(85).
                     This is the first version available via the WWW
                     at: ftp://ftp.isi.edu/mib/ianaiftype.mib" M"Initial version of this MIB as published in
                     RFC 1573."       -- Aug 25, 2003
          