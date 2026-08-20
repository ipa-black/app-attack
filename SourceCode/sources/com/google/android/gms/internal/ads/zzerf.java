package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzerf extends com.google.android.gms.ads.internal.client.zzbm {
    private final zzesm zza;

    public zzerf(Context context, zzcpj zzcpjVar, zzfje zzfjeVar, zzdqr zzdqrVar, com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        zzeso zzesoVar = new zzeso(zzdqrVar, zzcpjVar.zzy());
        zzesoVar.zze(zzbhVar);
        this.zza = new zzesm(new zzesy(zzcpjVar, context, zzesoVar, zzfjeVar), zzfjeVar.zzI());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized String zze() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized String zzf() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar) throws RemoteException {
        this.zza.zzd(zzlVar, 1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized void zzh(com.google.android.gms.ads.internal.client.zzl zzlVar, int i) throws RemoteException {
        this.zza.zzd(zzlVar, i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized boolean zzi() throws RemoteException {
        return this.zza.zze();
    }
}
