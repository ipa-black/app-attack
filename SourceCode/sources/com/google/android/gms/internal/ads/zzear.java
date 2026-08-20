package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzear extends com.google.android.gms.ads.internal.client.zzbg {
    final /* synthetic */ zzeal zza;
    final /* synthetic */ zzeas zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzear(zzeas zzeasVar, zzeal zzealVar) {
        this.zzb = zzeasVar;
        this.zza = zzealVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzc() throws RemoteException {
        long j;
        zzeal zzealVar = this.zza;
        j = this.zzb.zza;
        zzealVar.zzb(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzd() throws RemoteException {
        long j;
        zzeal zzealVar = this.zza;
        j = this.zzb.zza;
        zzealVar.zzc(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zze(int i) throws RemoteException {
        long j;
        zzeal zzealVar = this.zza;
        j = this.zzb.zza;
        zzealVar.zzd(j, i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        long j;
        zzeal zzealVar = this.zza;
        j = this.zzb.zza;
        zzealVar.zzd(j, zzeVar.zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzg() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzh() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzi() throws RemoteException {
        long j;
        zzeal zzealVar = this.zza;
        j = this.zzb.zza;
        zzealVar.zze(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzj() throws RemoteException {
        long j;
        zzeal zzealVar = this.zza;
        j = this.zzb.zza;
        zzealVar.zzg(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void zzk() {
    }
}
