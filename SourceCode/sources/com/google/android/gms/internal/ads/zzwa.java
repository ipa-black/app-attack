package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzwa {
    public final int zza;
    public final zzka[] zzb;
    public final zzvt[] zzc;
    public final zzcy zzd;
    public final Object zze;

    public zzwa(zzka[] zzkaVarArr, zzvt[] zzvtVarArr, zzcy zzcyVar, Object obj) {
        this.zzb = zzkaVarArr;
        this.zzc = (zzvt[]) zzvtVarArr.clone();
        this.zzd = zzcyVar;
        this.zze = obj;
        this.zza = zzkaVarArr.length;
    }

    public final boolean zza(zzwa zzwaVar, int i) {
        return zzwaVar != null && zzen.zzT(this.zzb[i], zzwaVar.zzb[i]) && zzen.zzT(this.zzc[i], zzwaVar.zzc[i]);
    }

    public final boolean zzb(int i) {
        return this.zzb[i] != null;
    }
}
