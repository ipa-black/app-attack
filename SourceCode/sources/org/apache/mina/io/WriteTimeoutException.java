package org.apache.mina.io;

import java.io.IOException;
/* loaded from: classes4.dex */
public class WriteTimeoutException extends IOException {
    private static final long serialVersionUID = 3906931157944579121L;

    public WriteTimeoutException() {
    }

    public WriteTimeoutException(String str) {
        super(str);
    }
}
