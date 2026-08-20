package com.google.android.gms.internal.ads;

import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzwe {
    private final Handler zza;
    private final zzwg zzb;
    private boolean zzc;

    public zzwe(Handler handler, zzwg zzwgVar) {
        this.zza = handler;
        this.zzb = zzwgVar;
    }

    public final void zzc() {
        this.zzc = true;
    }
}
