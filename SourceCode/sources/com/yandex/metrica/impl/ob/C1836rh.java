package com.yandex.metrica.impl.ob;

import java.io.IOException;
import java.net.ServerSocket;
/* renamed from: com.yandex.metrica.impl.ob.rh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1836rh implements Fh {
    @Override // com.yandex.metrica.impl.ob.Fh
    public ServerSocket a(int i) throws IOException {
        return new ServerSocket(i);
    }
}
