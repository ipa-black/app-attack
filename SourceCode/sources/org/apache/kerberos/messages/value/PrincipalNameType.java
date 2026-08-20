package org.apache.kerberos.messages.value;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class PrincipalNameType implements Comparable {
    public static final PrincipalNameType KRB_NT_PRINCIPAL;
    public static final PrincipalNameType KRB_NT_SRV_HST;
    public static final PrincipalNameType KRB_NT_SRV_INST;
    public static final PrincipalNameType KRB_NT_SRV_XHST;
    public static final PrincipalNameType KRB_NT_UID;
    public static final PrincipalNameType KRB_NT_UNKNOWN;
    public static final PrincipalNameType KRB_NT_X500_PRINCIPAL;
    public static final List VALUES;
    private static final PrincipalNameType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        PrincipalNameType principalNameType = new PrincipalNameType(0, "unknown name type");
        KRB_NT_UNKNOWN = principalNameType;
        PrincipalNameType principalNameType2 = new PrincipalNameType(1, "user principal name type");
        KRB_NT_PRINCIPAL = principalNameType2;
        PrincipalNameType principalNameType3 = new PrincipalNameType(2, "service and other unique instance (krbtgt) name type");
        KRB_NT_SRV_INST = principalNameType3;
        PrincipalNameType principalNameType4 = new PrincipalNameType(3, "service with host name as instance (telnet, rcommands)");
        KRB_NT_SRV_HST = principalNameType4;
        PrincipalNameType principalNameType5 = new PrincipalNameType(4, "service with host name as instance (telnet, rcommands) name type");
        KRB_NT_SRV_XHST = principalNameType5;
        PrincipalNameType principalNameType6 = new PrincipalNameType(5, "unique ID name type");
        KRB_NT_UID = principalNameType6;
        PrincipalNameType principalNameType7 = new PrincipalNameType(6, "nt x500 principal; encoded X.509 Distinguished name [RFC 2253]");
        KRB_NT_X500_PRINCIPAL = principalNameType7;
        PrincipalNameType[] principalNameTypeArr = {principalNameType, principalNameType2, principalNameType3, principalNameType4, principalNameType5, principalNameType6, principalNameType7};
        fValues = principalNameTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(principalNameTypeArr));
    }

    public String toString() {
        return new StringBuffer().append(this._fName).append(" (").append(this._fOrdinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((PrincipalNameType) obj)._fOrdinal;
    }

    public static PrincipalNameType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            PrincipalNameType[] principalNameTypeArr = fValues;
            if (i2 < principalNameTypeArr.length) {
                PrincipalNameType principalNameType = principalNameTypeArr[i2];
                if (principalNameType._fOrdinal == i) {
                    return principalNameType;
                }
                i2++;
            } else {
                return KRB_NT_UNKNOWN;
            }
        }
    }

    public int getOrdinal() {
        return this._fOrdinal;
    }

    private PrincipalNameType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
