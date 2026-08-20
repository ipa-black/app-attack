package org.apache.kerberos.messages.value;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes5.dex */
public class HostAddress {
    public static final int ADDR_LEN_APPLETALK = 3;
    public static final int ADDR_LEN_CHAOS = 2;
    public static final int ADDR_LEN_DECNET = 2;
    public static final int ADDR_LEN_INET = 4;
    public static final int ADDR_LEN_OSI = 0;
    public static final int ADDR_LEN_XNS = 6;
    private static byte[] localInetAddress;
    private byte[] _address;
    private HostAddressType _addressType;

    public HostAddress() {
        try {
            this._addressType = HostAddressType.ADDRTYPE_INET;
            this._address = getLocalInetAddress();
        } catch (UnknownHostException e2) {
            e2.printStackTrace();
        }
    }

    public HostAddress(HostAddressType hostAddressType, byte[] bArr) {
        this._addressType = hostAddressType;
        this._address = bArr;
    }

    public HostAddress(InetAddress inetAddress) {
        this._addressType = HostAddressType.ADDRTYPE_INET;
        byte[] address = inetAddress.getAddress();
        byte[] bArr = new byte[address.length];
        this._address = bArr;
        System.arraycopy(address, 0, bArr, 0, address.length);
    }

    public boolean equals(HostAddress hostAddress) {
        byte[] bArr;
        byte[] bArr2;
        if (this._addressType != hostAddress._addressType || (((bArr = this._address) != null && hostAddress._address == null) || (bArr == null && hostAddress._address != null))) {
            return false;
        }
        if (bArr == null || (bArr2 = hostAddress._address) == null) {
            return true;
        }
        if (bArr.length != bArr2.length) {
            return false;
        }
        int i = 0;
        while (true) {
            byte[] bArr3 = this._address;
            if (i >= bArr3.length) {
                return true;
            }
            if (bArr3[i] != hostAddress._address[i]) {
                return false;
            }
            i++;
        }
    }

    public static byte[] getLocalInetAddress() throws UnknownHostException {
        if (localInetAddress == null) {
            localInetAddress = InetAddress.getLocalHost().getAddress();
        }
        byte[] bArr = localInetAddress;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public byte[] getAddress() {
        return this._address;
    }

    public HostAddressType getAddressType() {
        return this._addressType;
    }
}
