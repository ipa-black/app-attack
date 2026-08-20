package org.apache.kerberos.messages.value;

import java.util.Date;
/* loaded from: classes5.dex */
public class KerberosTime implements Comparable {
    public static final KerberosTime INFINITY = new KerberosTime(Long.MAX_VALUE);
    private long _localTime;

    public KerberosTime() {
        this._localTime = new Date().getTime();
    }

    public KerberosTime(long j) {
        this._localTime = j;
    }

    public KerberosTime(Date date) {
        this._localTime = date.getTime();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (this == obj) {
            return 0;
        }
        long j = this._localTime;
        long j2 = ((KerberosTime) obj)._localTime;
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    public long getTime() {
        return this._localTime;
    }

    public Date toDate() {
        return new Date(this._localTime);
    }

    public boolean isInClockSkew(long j) {
        return Math.abs(this._localTime - new KerberosTime()._localTime) < j;
    }

    public boolean greaterThan(KerberosTime kerberosTime) {
        return this._localTime > kerberosTime._localTime;
    }

    public boolean lessThan(KerberosTime kerberosTime) {
        return this._localTime < kerberosTime._localTime;
    }

    public boolean equals(KerberosTime kerberosTime) {
        return this._localTime == kerberosTime._localTime;
    }

    public boolean isZero() {
        return this._localTime == 0;
    }
}
