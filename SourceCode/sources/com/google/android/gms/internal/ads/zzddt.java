package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzddt {
    private final zzfnj zza;
    private final zzchu zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List zze;
    private final PackageInfo zzf;
    private final zzhej zzg;
    private final String zzh;
    private final zzezp zzi;
    private final com.google.android.gms.ads.internal.util.zzg zzj;
    private final zzfjg zzk;

    public zzddt(zzfnj zzfnjVar, zzchu zzchuVar, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, zzhej zzhejVar, com.google.android.gms.ads.internal.util.zzg zzgVar, String str2, zzezp zzezpVar, zzfjg zzfjgVar) {
        this.zza = zzfnjVar;
        this.zzb = zzchuVar;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzhejVar;
        this.zzh = str2;
        this.zzi = zzezpVar;
        this.zzj = zzgVar;
        this.zzk = zzfjgVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzccb zza(zzgfb zzgfbVar) throws Exception {
        return new zzccb((Bundle) zzgfbVar.get(), this.zzb, this.zzc, this.zzd, this.zze, this.zzf, (String) ((zzgfb) this.zzg.zzb()).get(), this.zzh, null, null, ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgD)).booleanValue() && this.zzj.zzP(), this.zzk.zzb());
    }

    public final zzgfb zzb() {
        zzfnj zzfnjVar = this.zza;
        return zzfmt.zzc(this.zzi.zza(new Bundle()), zzfnd.SIGNALS, zzfnjVar).zza();
    }

    public final zzgfb zzc() {
        final zzgfb zzb = zzb();
        return this.zza.zza(zzfnd.REQUEST_PARCEL, zzb, (zzgfb) this.zzg.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdds
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzddt.this.zza(zzb);
            }
        }).zza();
    }
}
