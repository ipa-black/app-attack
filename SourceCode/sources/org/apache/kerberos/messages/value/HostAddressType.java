package org.apache.kerberos.messages.value;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class HostAddressType implements Comparable {
    public static final HostAddressType ADDRTYPE_APPLETALK;
    public static final HostAddressType ADDRTYPE_ATM;
    public static final HostAddressType ADDRTYPE_BAN;
    public static final HostAddressType ADDRTYPE_CCITT;
    public static final HostAddressType ADDRTYPE_CHAOS;
    public static final HostAddressType ADDRTYPE_DATAKIT;
    public static final HostAddressType ADDRTYPE_DECNET;
    public static final HostAddressType ADDRTYPE_DLI;
    public static final HostAddressType ADDRTYPE_ECMA;
    public static final HostAddressType ADDRTYPE_FIREFOX;
    public static final HostAddressType ADDRTYPE_HYLINK;
    public static final HostAddressType ADDRTYPE_IMPLINK;
    public static final HostAddressType ADDRTYPE_INET;
    public static final HostAddressType ADDRTYPE_INET6;
    public static final HostAddressType ADDRTYPE_IPX;
    public static final HostAddressType ADDRTYPE_LAT;
    public static final HostAddressType ADDRTYPE_NETBIOS;
    public static final HostAddressType ADDRTYPE_OSI;
    public static final HostAddressType ADDRTYPE_PUP;
    public static final HostAddressType ADDRTYPE_SNA;
    public static final HostAddressType ADDRTYPE_UNIX;
    public static final HostAddressType ADDRTYPE_VOICEVIEW;
    public static final HostAddressType ADDRTYPE_XNS;
    public static final HostAddressType NULL;
    public static final List VALUES;
    private static final HostAddressType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        HostAddressType hostAddressType = new HostAddressType(0, "null");
        NULL = hostAddressType;
        HostAddressType hostAddressType2 = new HostAddressType(1, "Unix");
        ADDRTYPE_UNIX = hostAddressType2;
        HostAddressType hostAddressType3 = new HostAddressType(2, "Internet");
        ADDRTYPE_INET = hostAddressType3;
        HostAddressType hostAddressType4 = new HostAddressType(3, "Arpanet");
        ADDRTYPE_IMPLINK = hostAddressType4;
        HostAddressType hostAddressType5 = new HostAddressType(4, "PUP");
        ADDRTYPE_PUP = hostAddressType5;
        HostAddressType hostAddressType6 = new HostAddressType(5, "CHAOS");
        ADDRTYPE_CHAOS = hostAddressType6;
        HostAddressType hostAddressType7 = new HostAddressType(6, "XEROX Network Services");
        ADDRTYPE_XNS = hostAddressType7;
        HostAddressType hostAddressType8 = new HostAddressType(6, "IPX");
        ADDRTYPE_IPX = hostAddressType8;
        HostAddressType hostAddressType9 = new HostAddressType(7, "OSI");
        ADDRTYPE_OSI = hostAddressType9;
        HostAddressType hostAddressType10 = new HostAddressType(8, "European Computer Manufacturers");
        ADDRTYPE_ECMA = hostAddressType10;
        HostAddressType hostAddressType11 = new HostAddressType(9, "Datakit");
        ADDRTYPE_DATAKIT = hostAddressType11;
        HostAddressType hostAddressType12 = new HostAddressType(10, "CCITT");
        ADDRTYPE_CCITT = hostAddressType12;
        HostAddressType hostAddressType13 = new HostAddressType(11, "SNA");
        ADDRTYPE_SNA = hostAddressType13;
        HostAddressType hostAddressType14 = new HostAddressType(12, "DECnet");
        ADDRTYPE_DECNET = hostAddressType14;
        HostAddressType hostAddressType15 = new HostAddressType(13, "Direct Data Link Interface");
        ADDRTYPE_DLI = hostAddressType15;
        HostAddressType hostAddressType16 = new HostAddressType(14, "LAT");
        ADDRTYPE_LAT = hostAddressType16;
        HostAddressType hostAddressType17 = new HostAddressType(15, "NSC Hyperchannel");
        ADDRTYPE_HYLINK = hostAddressType17;
        HostAddressType hostAddressType18 = new HostAddressType(16, "AppleTalk");
        ADDRTYPE_APPLETALK = hostAddressType18;
        HostAddressType hostAddressType19 = new HostAddressType(17, "NetBios");
        ADDRTYPE_NETBIOS = hostAddressType19;
        HostAddressType hostAddressType20 = new HostAddressType(18, "VoiceView");
        ADDRTYPE_VOICEVIEW = hostAddressType20;
        HostAddressType hostAddressType21 = new HostAddressType(19, "Firefox");
        ADDRTYPE_FIREFOX = hostAddressType21;
        HostAddressType hostAddressType22 = new HostAddressType(21, "Banyan");
        ADDRTYPE_BAN = hostAddressType22;
        HostAddressType hostAddressType23 = new HostAddressType(22, "ATM");
        ADDRTYPE_ATM = hostAddressType23;
        HostAddressType hostAddressType24 = new HostAddressType(23, "Internet Protocol V6");
        ADDRTYPE_INET6 = hostAddressType24;
        HostAddressType[] hostAddressTypeArr = {hostAddressType, hostAddressType2, hostAddressType3, hostAddressType4, hostAddressType5, hostAddressType6, hostAddressType7, hostAddressType8, hostAddressType9, hostAddressType10, hostAddressType11, hostAddressType12, hostAddressType13, hostAddressType14, hostAddressType15, hostAddressType16, hostAddressType17, hostAddressType18, hostAddressType19, hostAddressType20, hostAddressType21, hostAddressType22, hostAddressType23, hostAddressType24};
        fValues = hostAddressTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(hostAddressTypeArr));
    }

    public String toString() {
        return new StringBuffer().append(this._fName).append(" (").append(this._fOrdinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((HostAddressType) obj)._fOrdinal;
    }

    public static HostAddressType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            HostAddressType[] hostAddressTypeArr = fValues;
            if (i2 < hostAddressTypeArr.length) {
                HostAddressType hostAddressType = hostAddressTypeArr[i2];
                if (hostAddressType._fOrdinal == i) {
                    return hostAddressType;
                }
                i2++;
            } else {
                return NULL;
            }
        }
    }

    public int getOrdinal() {
        return this._fOrdinal;
    }

    private HostAddressType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
