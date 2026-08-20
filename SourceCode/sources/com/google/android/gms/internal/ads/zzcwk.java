package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwk implements zzbqd {
    final /* synthetic */ zzcwn zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcwk(zzcwn zzcwnVar) {
        this.zza = zzcwnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        Executor executor;
        if (zzcwn.zzg(this.zza, map)) {
            executor = this.zza.zzc;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwj
                @Override // java.lang.Runnable
                public final void run() {
                    zzcws zzcwsVar;
                    zzcwsVar = zzcwk.this.zza.zzd;
                    zzcwsVar.zzg();
                }
            });
        }
    }
}
