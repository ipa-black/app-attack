package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcls extends com.google.android.gms.ads.internal.util.zzb {
    final zzcjx zza;
    final zzcma zzb;
    private final String zzc;
    private final String[] zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcls(zzcjx zzcjxVar, zzcma zzcmaVar, String str, String[] strArr) {
        this.zza = zzcjxVar;
        this.zzb = zzcmaVar;
        this.zzc = str;
        this.zzd = strArr;
        com.google.android.gms.ads.internal.zzt.zzy().zzb(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        try {
            this.zzb.zzr(this.zzc, this.zzd);
        } finally {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzclr(this));
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final zzgfb zzb() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbM)).booleanValue() || !(this.zzb instanceof zzcmj)) {
            return super.zzb();
        }
        return zzcib.zze.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzclq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcls.this.zzd();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean zzd() throws Exception {
        return Boolean.valueOf(this.zzb.zzs(this.zzc, this.zzd, this));
    }

    public final String zze() {
        return this.zzc;
    }
}
