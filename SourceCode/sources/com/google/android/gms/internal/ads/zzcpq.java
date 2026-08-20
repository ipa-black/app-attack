package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcpq implements zzhep {
    private final zzcpm zza;

    public zzcpq(zzcpm zzcpmVar) {
        this.zza = zzcpmVar;
    }

    public final WeakReference zza() {
        WeakReference zzf = this.zza.zzf();
        zzhex.zzb(zzf);
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        WeakReference zzf = this.zza.zzf();
        zzhex.zzb(zzf);
        return zzf;
    }
}
