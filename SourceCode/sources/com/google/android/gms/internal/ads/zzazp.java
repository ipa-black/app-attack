package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzazp {
    public final zzaza zza;
    public final zzazm zzb;
    public final Object zzc;
    public final zzatk[] zzd;

    public zzazp(zzaza zzazaVar, zzazm zzazmVar, Object obj, zzatk[] zzatkVarArr) {
        this.zza = zzazaVar;
        this.zzb = zzazmVar;
        this.zzc = obj;
        this.zzd = zzatkVarArr;
    }

    public final boolean zza(zzazp zzazpVar, int i) {
        return zzazpVar != null && zzbay.zzo(this.zzb.zza(i), zzazpVar.zzb.zza(i)) && zzbay.zzo(this.zzd[i], zzazpVar.zzd[i]);
    }
}
