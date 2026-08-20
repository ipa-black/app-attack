package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbww extends zzbvy {
    private final Adapter zza;
    private final zzcdc zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbww(Adapter adapter, zzcdc zzcdcVar) {
        this.zza = adapter;
        this.zzb = zzcdcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zze() throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zze(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzf() throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zzf(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzg(int i) throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zzg(ObjectWrapper.wrap(this.zza), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzh(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzi(int i, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzj(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzm() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzn() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzo() throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zzi(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzp() throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zzj(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzq(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzr(zzbnf zzbnfVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzs(zzcdd zzcddVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzt(zzcdh zzcdhVar) throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zzm(ObjectWrapper.wrap(this.zza), new zzcdd(zzcdhVar.zzf(), zzcdhVar.zze()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzu() throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zzn(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzv() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzw() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzx() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzy() throws RemoteException {
        zzcdc zzcdcVar = this.zzb;
        if (zzcdcVar != null) {
            zzcdcVar.zzo(ObjectWrapper.wrap(this.zza));
        }
    }
}
