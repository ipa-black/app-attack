package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzepy extends zzbvy {
    private final zzdel zza;
    private final zzdma zzb;
    private final zzdff zzc;
    private final zzdfu zzd;
    private final zzdfz zze;
    private final zzdjh zzf;
    private final zzdgt zzg;
    private final zzdms zzh;
    private final zzdjd zzi;
    private final zzdfa zzj;

    public zzepy(zzdel zzdelVar, zzdma zzdmaVar, zzdff zzdffVar, zzdfu zzdfuVar, zzdfz zzdfzVar, zzdjh zzdjhVar, zzdgt zzdgtVar, zzdms zzdmsVar, zzdjd zzdjdVar, zzdfa zzdfaVar) {
        this.zza = zzdelVar;
        this.zzb = zzdmaVar;
        this.zzc = zzdffVar;
        this.zzd = zzdfuVar;
        this.zze = zzdfzVar;
        this.zzf = zzdjhVar;
        this.zzg = zzdgtVar;
        this.zzh = zzdmsVar;
        this.zzi = zzdjdVar;
        this.zzj = zzdfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zze() {
        this.zza.onAdClicked();
        this.zzb.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzf() {
        this.zzg.zzf(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzg(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzh(com.google.android.gms.ads.internal.client.zze zzeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzi(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    @Deprecated
    public final void zzj(int i) throws RemoteException {
        zzk(new com.google.android.gms.ads.internal.client.zze(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zzj.zza(zzfkg.zzc(8, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzl(String str) {
        zzk(new com.google.android.gms.ads.internal.client.zze(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    public void zzm() {
        this.zzc.zza();
        this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzn() {
        this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzo() {
        this.zze.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzp() {
        this.zzg.zzb();
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzq(String str, String str2) {
        this.zzf.zzbF(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzr(zzbnf zzbnfVar, String str) {
    }

    public void zzs(zzcdd zzcddVar) {
    }

    public void zzt(zzcdh zzcdhVar) throws RemoteException {
    }

    public void zzu() throws RemoteException {
    }

    public void zzv() {
        this.zzh.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzw() {
        this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbvz
    public final void zzx() throws RemoteException {
        this.zzh.zzc();
    }

    public void zzy() {
        this.zzh.zzd();
    }
}
