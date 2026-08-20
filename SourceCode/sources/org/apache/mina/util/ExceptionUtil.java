package org.apache.mina.util;

import java.io.IOException;
/* loaded from: classes5.dex */
public class ExceptionUtil {
    public static void throwException(Throwable th) throws IOException {
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        throw new RuntimeException(th);
    }

    private ExceptionUtil() {
    }
}
