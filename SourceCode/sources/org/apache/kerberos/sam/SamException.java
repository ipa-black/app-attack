package org.apache.kerberos.sam;

import org.apache.kerberos.messages.value.SamType;
/* loaded from: classes5.dex */
public class SamException extends Exception {
    private final SamType type;

    public SamException(SamType samType) {
        this.type = samType;
    }

    public SamException(SamType samType, String str) {
        super(str);
        this.type = samType;
    }

    public SamException(SamType samType, Throwable th) {
        super(th);
        this.type = samType;
    }

    public SamException(SamType samType, String str, Throwable th) {
        super(str, th);
        this.type = samType;
    }

    public SamType getSamType() {
        return this.type;
    }
}
