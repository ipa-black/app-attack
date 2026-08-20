package com.google.android.gms.internal.ads;

import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzedi {
    private final zzgfc zza;
    private final zzgfc zzb;
    private final zzeep zzc;
    private final zzhej zzd;

    public zzedi(zzgfc zzgfcVar, zzgfc zzgfcVar2, zzeep zzeepVar, zzhej zzhejVar) {
        this.zza = zzgfcVar;
        this.zzb = zzgfcVar2;
        this.zzc = zzeepVar;
        this.zzd = zzhejVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zza(zzccb zzccbVar, int i, zzefg zzefgVar) throws Exception {
        return ((zzehm) this.zzd.zzb()).zzc(zzccbVar, i);
    }

    public final zzgfb zzb(final zzccb zzccbVar) {
        zzgfb zzg;
        String str = zzccbVar.zzd;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzs.zzy(str)) {
            zzg = zzger.zzh(new zzefg(1));
        } else {
            zzg = zzger.zzg(this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzedf
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzedi.this.zzc(zzccbVar);
                }
            }), ExecutionException.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzedg
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    return zzger.zzh(((ExecutionException) obj).getCause());
                }
            }, this.zzb);
        }
        final int callingUid = Binder.getCallingUid();
        return zzger.zzg(zzg, zzefg.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzedh
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzedi.this.zza(zzccbVar, callingUid, (zzefg) obj);
            }
        }, this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ InputStream zzc(zzccb zzccbVar) throws Exception {
        zzcig zzcigVar;
        final zzeep zzeepVar = this.zzc;
        synchronized (zzeepVar.zzb) {
            if (zzeepVar.zzc) {
                zzcigVar = zzeepVar.zza;
            } else {
                zzeepVar.zzc = true;
                zzeepVar.zze = zzccbVar;
                zzeepVar.zzf.checkAvailabilityAndConnect();
                zzeepVar.zza.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeeo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeep.this.zza();
                    }
                }, zzcib.zzf);
                zzcigVar = zzeepVar.zza;
            }
        }
        return (InputStream) zzcigVar.get(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeW)).intValue(), TimeUnit.SECONDS);
    }
}
