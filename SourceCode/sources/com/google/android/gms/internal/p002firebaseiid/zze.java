package com.google.android.gms.internal.p002firebaseiid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* renamed from: com.google.android.gms.internal.firebase-iid.zze  reason: invalid package */
/* loaded from: classes4.dex */
public class zze extends Handler {
    private static zzg propagator;

    public zze() {
    }

    public zze(Looper looper) {
        super(looper);
    }

    public zze(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j) {
        prepare(message, j);
        return super.sendMessageAtTime(message, j);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        zzg zzgVar = propagator;
        if (zzgVar == null) {
            dispatchMessageTraced(message);
            return;
        }
        Object zza = zzgVar.zza(this, message);
        try {
            dispatchMessageTraced(message);
        } finally {
        }
    }

    protected void dispatchMessageTraced(Message message) {
        super.dispatchMessage(message);
    }

    private void prepare(Message message, long j) {
        zzg zzgVar = propagator;
        if (zzgVar != null) {
            zzgVar.zza(this, message, j);
        }
    }
}
