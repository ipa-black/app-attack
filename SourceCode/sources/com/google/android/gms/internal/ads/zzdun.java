package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdun extends zzboh {
    private final String zza;
    private final zzdqb zzb;
    private final zzdqg zzc;

    public zzdun(String str, zzdqb zzdqbVar, zzdqg zzdqgVar) {
        this.zza = str;
        this.zzb = zzdqbVar;
        this.zzc = zzdqgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzA() {
        this.zzb.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzB(Bundle bundle) throws RemoteException {
        this.zzb.zzH(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzC() {
        this.zzb.zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzD(com.google.android.gms.ads.internal.client.zzcs zzcsVar) throws RemoteException {
        this.zzb.zzK(zzcsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzE(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        this.zzb.zzL(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzF(zzbof zzbofVar) throws RemoteException {
        this.zzb.zzM(zzbofVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final boolean zzG() {
        return this.zzb.zzR();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final boolean zzH() throws RemoteException {
        return (this.zzc.zzF().isEmpty() || this.zzc.zzk() == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final boolean zzI(Bundle bundle) throws RemoteException {
        return this.zzb.zzU(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final double zze() throws RemoteException {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final Bundle zzf() throws RemoteException {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final com.google.android.gms.ads.internal.client.zzdn zzg() throws RemoteException {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgi)).booleanValue()) {
            return this.zzb.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final com.google.android.gms.ads.internal.client.zzdq zzh() throws RemoteException {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final zzbmd zzi() throws RemoteException {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final zzbmi zzj() throws RemoteException {
        return this.zzb.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final zzbml zzk() throws RemoteException {
        return this.zzc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final IObjectWrapper zzl() throws RemoteException {
        return this.zzc.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final IObjectWrapper zzm() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzn() throws RemoteException {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzo() throws RemoteException {
        return this.zzc.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzp() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzq() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzr() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzs() throws RemoteException {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzt() throws RemoteException {
        return this.zzc.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final List zzu() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final List zzv() throws RemoteException {
        if (zzH()) {
            return this.zzc.zzF();
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzw() throws RemoteException {
        this.zzb.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzx() throws RemoteException {
        this.zzb.zzaa();
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzy(com.google.android.gms.ads.internal.client.zzcw zzcwVar) throws RemoteException {
        this.zzb.zzy(zzcwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzz(Bundle bundle) throws RemoteException {
        this.zzb.zzC(bundle);
    }
}
