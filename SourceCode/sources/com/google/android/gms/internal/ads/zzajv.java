package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzajv {
    private final Executor zza;

    public zzajv(Handler handler) {
        this.zza = new zzajt(this, handler);
    }

    public final void zza(zzake zzakeVar, zzakn zzaknVar) {
        zzakeVar.zzm("post-error");
        zzakk zza = zzakk.zza(zzaknVar);
        Executor executor = this.zza;
        ((zzajt) executor).zza.post(new zzaju(zzakeVar, zza, null));
    }

    public final void zzb(zzake zzakeVar, zzakk zzakkVar, Runnable runnable) {
        zzakeVar.zzq();
        zzakeVar.zzm("post-response");
        Executor executor = this.zza;
        ((zzajt) executor).zza.post(new zzaju(zzakeVar, zzakkVar, runnable));
    }
}
