package com.ironsource.sdk.h;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ironsource.environment.a;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public final class a extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentHashMap<String, com.ironsource.sdk.k.c> f12068a;

    public a(Looper looper) {
        super(looper);
        this.f12068a = new ConcurrentHashMap<>();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            c cVar = (c) message.obj;
            String path = cVar.getPath();
            com.ironsource.sdk.k.c cVar2 = this.f12068a.get(path);
            if (cVar2 == null) {
                return;
            }
            int i = message.what;
            if (i != 1016 && i != 1015) {
                cVar2.a(cVar, new com.ironsource.sdk.g.e(message.what, a.AnonymousClass1.a(message.what)));
                this.f12068a.remove(path);
            }
            cVar2.a(cVar);
            this.f12068a.remove(path);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
