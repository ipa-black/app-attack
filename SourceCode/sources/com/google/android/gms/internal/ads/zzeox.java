package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzeox extends zzepy {
    private final zzdml zza;

    public zzeox(zzdel zzdelVar, zzdma zzdmaVar, zzdff zzdffVar, zzdfu zzdfuVar, zzdfz zzdfzVar, zzdfa zzdfaVar, zzdjh zzdjhVar, zzdms zzdmsVar, zzdgt zzdgtVar, zzdml zzdmlVar, zzdjd zzdjdVar) {
        super(zzdelVar, zzdmaVar, zzdffVar, zzdfuVar, zzdfzVar, zzdjhVar, zzdgtVar, zzdmsVar, zzdjdVar, zzdfaVar);
        this.zza = zzdmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepy, com.google.android.gms.internal.ads.zzbvz
    public final void zzs(zzcdd zzcddVar) {
        this.zza.zza(zzcddVar);
    }

    @Override // com.google.android.gms.internal.ads.zzepy, com.google.android.gms.internal.ads.zzbvz
    public final void zzt(zzcdh zzcdhVar) throws RemoteException {
        this.zza.zza(new zzcdd(zzcdhVar.zzf(), zzcdhVar.zze()));
    }

    @Override // com.google.android.gms.internal.ads.zzepy, com.google.android.gms.internal.ads.zzbvz
    public final void zzu() throws RemoteException {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzepy, com.google.android.gms.internal.ads.zzbvz
    public final void zzv() {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzepy, com.google.android.gms.internal.ads.zzbvz
    public final void zzy() {
        this.zza.zzc();
    }
}
