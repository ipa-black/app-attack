package com.ironsource.sdk.k;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ironsource.environment.a;
import com.ironsource.sdk.g.e;
import com.ironsource.sdk.utils.Logger;
/* loaded from: classes3.dex */
public final class a extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public c f12079a;

    public a(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f12079a == null) {
            Logger.i("DownloadHandler", "OnPreCacheCompletion listener is null, msg: " + message.toString());
            return;
        }
        try {
            if (message.what == 1016) {
                this.f12079a.a((com.ironsource.sdk.h.c) message.obj);
                return;
            }
            this.f12079a.a((com.ironsource.sdk.h.c) message.obj, new e(message.what, a.AnonymousClass1.a(message.what)));
        } catch (Throwable th) {
            Logger.i("DownloadHandler", "handleMessage | Got exception: " + th.getMessage());
            th.printStackTrace();
        }
    }
}
