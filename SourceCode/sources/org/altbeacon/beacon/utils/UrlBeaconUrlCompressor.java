package org.altbeacon.beacon.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class UrlBeaconUrlCompressor {
    private static final byte EDDYSTONE_URL_BIZ = 12;
    private static final byte EDDYSTONE_URL_BIZ_SLASH = 5;
    private static final byte EDDYSTONE_URL_COM = 7;
    private static final byte EDDYSTONE_URL_COM_SLASH = 0;
    private static final byte EDDYSTONE_URL_EDU = 9;
    private static final byte EDDYSTONE_URL_EDU_SLASH = 2;
    private static final int EDDYSTONE_URL_FQDN_GROUP = 3;
    private static final byte EDDYSTONE_URL_GOV = 13;
    private static final byte EDDYSTONE_URL_GOV_SLASH = 6;
    private static final byte EDDYSTONE_URL_INFO = 11;
    private static final byte EDDYSTONE_URL_INFO_SLASH = 4;
    private static final byte EDDYSTONE_URL_NET = 10;
    private static final byte EDDYSTONE_URL_NET_SLASH = 3;
    private static final byte EDDYSTONE_URL_ORG = 8;
    private static final byte EDDYSTONE_URL_ORG_SLASH = 1;
    private static final int EDDYSTONE_URL_PATH_GROUP = 5;
    private static final int EDDYSTONE_URL_PROTOCOL_GROUP = 1;
    private static final byte EDDYSTONE_URL_PROTOCOL_HTTP = 2;
    private static final byte EDDYSTONE_URL_PROTOCOL_HTTPS = 3;
    private static final byte EDDYSTONE_URL_PROTOCOL_HTTPS_WWW = 1;
    private static final byte EDDYSTONE_URL_PROTOCOL_HTTP_WWW = 0;
    private static final String EDDYSTONE_URL_REGEX = "^((?i)http|https):\\/\\/((?i)www\\.)?((?:[0-9a-zA-Z_-]+\\.?)+)(/?)([./0-9a-zA-Z_-]*)";
    private static final int EDDYSTONE_URL_SLASH_GROUP = 4;
    private static final int EDDYSTONE_URL_WWW_GROUP = 2;
    private static final byte TLD_NOT_ENCODABLE = -1;
    private static final String URL_HOST_WWW = "www.";
    private static final String URL_PROTOCOL_HTTP = "http";
    private static final String URL_PROTOCOL_HTTPS_COLON_SLASH_SLASH = "https://";
    private static final String URL_PROTOCOL_HTTPS_WWW_DOT = "https://www.";
    private static final String URL_PROTOCOL_HTTP_COLON_SLASH_SLASH = "http://";
    private static final String URL_PROTOCOL_HTTP_WWW_DOT = "http://www.";
    private static final String URL_TLD_DOT_BIZ = ".biz";
    private static final String URL_TLD_DOT_BIZ_SLASH = ".biz/";
    private static final String URL_TLD_DOT_COM = ".com";
    private static final String URL_TLD_DOT_COM_SLASH = ".com/";
    private static final String URL_TLD_DOT_EDU = ".edu";
    private static final String URL_TLD_DOT_EDU_SLASH = ".edu/";
    private static final String URL_TLD_DOT_GOV = ".gov";
    private static final String URL_TLD_DOT_GOV_SLASH = ".gov/";
    private static final String URL_TLD_DOT_INFO = ".info";
    private static final String URL_TLD_DOT_INFO_SLASH = ".info/";
    private static final String URL_TLD_DOT_NET = ".net";
    private static final String URL_TLD_DOT_NET_SLASH = ".net/";
    private static final String URL_TLD_DOT_ORG = ".org";
    private static final String URL_TLD_DOT_ORG_SLASH = ".org/";
    private static List<TLDMapEntry> tldMap;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TLDMapEntry {
        public final byte encodedByte;
        public final String tld;

        public TLDMapEntry(String str, byte b2) {
            this.tld = str;
            this.encodedByte = b2;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        tldMap = arrayList;
        arrayList.add(new TLDMapEntry(URL_TLD_DOT_COM_SLASH, (byte) 0));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_ORG_SLASH, (byte) 1));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_EDU_SLASH, (byte) 2));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_NET_SLASH, (byte) 3));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_INFO_SLASH, (byte) 4));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_BIZ_SLASH, (byte) 5));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_GOV_SLASH, (byte) 6));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_COM, (byte) 7));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_ORG, (byte) 8));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_EDU, (byte) 9));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_NET, (byte) 10));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_INFO, (byte) 11));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_BIZ, (byte) 12));
        tldMap.add(new TLDMapEntry(URL_TLD_DOT_GOV, (byte) 13));
    }

    private static byte encodedByteForTopLevelDomain(String str) {
        Iterator<TLDMapEntry> it = tldMap.iterator();
        byte b2 = -1;
        boolean z = false;
        while (!z && it.hasNext()) {
            TLDMapEntry next = it.next();
            boolean equalsIgnoreCase = next.tld.equalsIgnoreCase(str);
            if (equalsIgnoreCase) {
                b2 = next.encodedByte;
            }
            z = equalsIgnoreCase;
        }
        return b2;
    }

    private static String topLevelDomainForByte(Byte b2) {
        Iterator<TLDMapEntry> it = tldMap.iterator();
        String str = null;
        boolean z = false;
        while (!z && it.hasNext()) {
            TLDMapEntry next = it.next();
            boolean z2 = next.encodedByte == b2.byteValue();
            if (z2) {
                str = next.tld;
            }
            z = z2;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c1, code lost:
        if (r3 != null) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] compress(java.lang.String r12) throws java.net.MalformedURLException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.utils.UrlBeaconUrlCompressor.compress(java.lang.String):byte[]");
    }

    public static String uncompress(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = bArr[0] & 15;
        int i2 = 1;
        if (i == 0) {
            stringBuffer.append(URL_PROTOCOL_HTTP_WWW_DOT);
        } else if (i == 1) {
            stringBuffer.append(URL_PROTOCOL_HTTPS_WWW_DOT);
        } else if (i == 2) {
            stringBuffer.append(URL_PROTOCOL_HTTP_COLON_SLASH_SLASH);
        } else if (i == 3) {
            stringBuffer.append(URL_PROTOCOL_HTTPS_COLON_SLASH_SLASH);
        }
        byte b2 = -1;
        while (i2 < bArr.length) {
            byte b3 = bArr[i2];
            if (b2 == 0 && b3 == 0) {
                break;
            }
            String str = topLevelDomainForByte(Byte.valueOf(b3));
            if (str != null) {
                stringBuffer.append(str);
            } else {
                stringBuffer.append((char) b3);
            }
            i2++;
            b2 = b3;
        }
        return stringBuffer.toString();
    }
}
