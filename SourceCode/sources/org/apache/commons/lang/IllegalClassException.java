package org.apache.commons.lang;
/* loaded from: classes5.dex */
public class IllegalClassException extends IllegalArgumentException {
    public IllegalClassException(Class cls, Class cls2) {
        super(new StringBuffer("Expected: ").append(safeGetClassName(cls)).append(", actual: ").append(safeGetClassName(cls2)).toString());
    }

    public IllegalClassException(String str) {
        super(str);
    }

    private static final String safeGetClassName(Class cls) {
        if (cls == null) {
            return null;
        }
        return cls.getName();
    }
}
