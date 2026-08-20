package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.util.concurrent.Future;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbes {
    private zzbeh zza;
    private boolean zzb;
    private final Context zzc;
    private final Object zzd = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbes(Context context) {
        this.zzc = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Future zzc(zzbei zzbeiVar) {
        zzbem zzbemVar = new zzbem(this);
        zzbeq zzbeqVar = new zzbeq(this, zzbeiVar, zzbemVar);
        zzber zzberVar = new zzber(this, zzbemVar);
        synchronized (this.zzd) {
            zzbeh zzbehVar = new zzbeh(this.zzc, com.google.android.gms.ads.internal.zzt.zzt().zzb(), zzbeqVar, zzberVar);
            this.zza = zzbehVar;
            zzbehVar.checkAvailabilityAndConnect();
        }
        return zzbemVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zze(zzbes zzbesVar) {
        synchronized (zzbesVar.zzd) {
            zzbeh zzbehVar = zzbesVar.zza;
            if (zzbehVar == null) {
                return;
            }
            zzbehVar.disconnect();
            zzbesVar.zza = null;
            Binder.flushPendingCommands();
        }
    }
}
