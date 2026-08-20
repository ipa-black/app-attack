package com.yandex.metrica.impl.ob;

import java.io.IOException;
import java.net.ServerSocket;
/* loaded from: classes5.dex */
public interface Fh {

    /* loaded from: classes5.dex */
    public static class a extends Throwable {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    ServerSocket a(int i) throws IOException, a;
}
