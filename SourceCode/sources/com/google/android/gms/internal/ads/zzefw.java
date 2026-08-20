package com.google.android.gms.internal.ads;

import android.os.Binder;
import java.util.concurrent.ExecutionException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzefw {
    private final zzgfc zza;
    private final zzgfc zzb;
    private final zzegq zzc;
    private final zzhej zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzefw(zzgfc zzgfcVar, zzgfc zzgfcVar2, zzegq zzegqVar, zzhej zzhejVar) {
        this.zza = zzgfcVar;
        this.zzb = zzgfcVar2;
        this.zzc = zzegqVar;
        this.zzd = zzhejVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zza(zzcbj zzcbjVar) throws Exception {
        return this.zzc.zza(zzcbjVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjz)).longValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzb(zzcbj zzcbjVar, int i, zzefg zzefgVar) throws Exception {
        return ((zzehw) this.zzd.zzb()).zzb(zzcbjVar, i);
    }

    public final zzgfb zzc(final zzcbj zzcbjVar) {
        zzgfb zzg;
        String str = zzcbjVar.zzf;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzs.zzy(str)) {
            zzg = zzger.zzh(new zzefg(1, "Ads service proxy force local"));
        } else {
            zzg = zzger.zzg(zzger.zzl(new zzgdx() { // from class: com.google.android.gms.internal.ads.zzeft
                @Override // com.google.android.gms.internal.ads.zzgdx
                public final zzgfb zza() {
                    return zzefw.this.zza(zzcbjVar);
                }
            }, this.zza), ExecutionException.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefu
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    ExecutionException executionException = (ExecutionException) obj;
                    Throwable cause = executionException.getCause();
                    Throwable th = executionException;
                    if (cause != null) {
                        th = executionException.getCause();
                    }
                    return zzger.zzh(th);
                }
            }, this.zzb);
        }
        final int callingUid = Binder.getCallingUid();
        return zzger.zzg(zzg, zzefg.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefv
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzefw.this.zzb(zzcbjVar, callingUid, (zzefg) obj);
            }
        }, this.zzb);
    }
}
