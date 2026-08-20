package org.apache.commons.lang;
/* loaded from: classes5.dex */
public class NullArgumentException extends IllegalArgumentException {
    public NullArgumentException(String str) {
        super(new StringBuffer().append(str).append(" must not be null.").toString());
    }
}
