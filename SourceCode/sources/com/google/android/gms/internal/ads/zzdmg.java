package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdmg {
    private final List zza;
    private final zzfpo zzb;
    private boolean zzc;

    public zzdmg(zzfil zzfilVar, zzfpo zzfpoVar) {
        this.zza = zzfilVar.zzq;
        this.zzb = zzfpoVar;
    }

    public final void zza() {
        if (this.zzc) {
            return;
        }
        this.zzb.zzd(this.zza);
        this.zzc = true;
    }
}
