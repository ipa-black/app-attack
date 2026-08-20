package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdui extends zzbnb {
    private final String zza;
    private final zzdqb zzb;
    private final zzdqg zzc;

    public zzdui(String str, zzdqb zzdqbVar, zzdqg zzdqgVar) {
        this.zza = str;
        this.zzb = zzdqbVar;
        this.zzc = zzdqgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final Bundle zzb() throws RemoteException {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final com.google.android.gms.ads.internal.client.zzdq zzc() throws RemoteException {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final zzbmd zzd() throws RemoteException {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final zzbml zze() throws RemoteException {
        return this.zzc.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final IObjectWrapper zzf() throws RemoteException {
        return this.zzc.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final IObjectWrapper zzg() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final String zzh() throws RemoteException {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final String zzi() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final String zzj() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final String zzk() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final String zzl() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final List zzm() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final void zzn() throws RemoteException {
        this.zzb.zzaa();
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final void zzo(Bundle bundle) throws RemoteException {
        this.zzb.zzC(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final void zzp(Bundle bundle) throws RemoteException {
        this.zzb.zzH(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbnc
    public final boolean zzq(Bundle bundle) throws RemoteException {
        return this.zzb.zzU(bundle);
    }
}
