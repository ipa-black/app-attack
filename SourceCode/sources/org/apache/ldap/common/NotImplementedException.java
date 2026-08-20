package org.apache.ldap.common;
/* loaded from: classes3.dex */
public class NotImplementedException extends RuntimeException {
    public NotImplementedException() {
        super("N O T   I M P L E M E N T E D   Y E T !");
    }

    public NotImplementedException(String str) {
        super(new StringBuffer("N O T   I M P L E M E N T E D   Y E T !\n").append(str).toString());
    }
}
