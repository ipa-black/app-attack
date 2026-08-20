package org.apache.commons.lang;
/* loaded from: classes5.dex */
public class NotImplementedException extends UnsupportedOperationException {
    public NotImplementedException(Class cls) {
        super(new StringBuffer("Method is not implemented in class ").append(cls == null ? null : cls.getName()).toString());
    }

    public NotImplementedException(String str) {
        super(str);
    }
}
