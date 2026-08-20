package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class HostAddresses {
    private HostAddress[] _addresses;

    public HostAddresses(HostAddress[] hostAddressArr) {
        this._addresses = hostAddressArr;
    }

    public HostAddresses() {
        this._addresses = r0;
        HostAddress[] hostAddressArr = {new HostAddress()};
    }

    public boolean contains(HostAddress hostAddress) {
        if (this._addresses != null) {
            int i = 0;
            while (true) {
                HostAddress[] hostAddressArr = this._addresses;
                if (i >= hostAddressArr.length) {
                    break;
                } else if (hostAddressArr[i].equals(hostAddress)) {
                    return true;
                } else {
                    i++;
                }
            }
        }
        return false;
    }

    public boolean equals(HostAddresses hostAddresses) {
        HostAddress[] hostAddressArr;
        HostAddress[] hostAddressArr2 = this._addresses;
        if ((hostAddressArr2 == null && hostAddresses._addresses != null) || (hostAddressArr2 != null && hostAddresses._addresses == null)) {
            return false;
        }
        if (hostAddressArr2 == null || (hostAddressArr = hostAddresses._addresses) == null) {
            return true;
        }
        if (hostAddressArr2.length != hostAddressArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            HostAddress[] hostAddressArr3 = this._addresses;
            if (i >= hostAddressArr3.length) {
                return true;
            }
            if (!hostAddressArr3[i].equals(hostAddresses._addresses[i])) {
                return false;
            }
            i++;
        }
    }

    public HostAddress[] getAddresses() {
        return this._addresses;
    }
}
