package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeal {
    private final zzbra zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeal(zzbra zzbraVar) {
        this.zza = zzbraVar;
    }

    private final void zzs(zzeak zzeakVar) throws RemoteException {
        String zza = zzeak.zza(zzeakVar);
        com.google.android.gms.ads.internal.util.zze.zzi("Dispatching AFMA event on publisher webview: ".concat(zza));
        this.zza.zzb(zza);
    }

    public final void zza() throws RemoteException {
        zzs(new zzeak(MobileAdsBridgeBase.initializeMethodName, null));
    }

    public final void zzb(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("interstitial", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onAdClicked";
        this.zza.zzb(zzeak.zza(zzeakVar));
    }

    public final void zzc(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("interstitial", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onAdClosed";
        zzs(zzeakVar);
    }

    public final void zzd(long j, int i) throws RemoteException {
        zzeak zzeakVar = new zzeak("interstitial", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onAdFailedToLoad";
        zzeakVar.zzd = Integer.valueOf(i);
        zzs(zzeakVar);
    }

    public final void zze(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("interstitial", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onAdLoaded";
        zzs(zzeakVar);
    }

    public final void zzf(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("interstitial", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzeakVar);
    }

    public final void zzg(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("interstitial", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onAdOpened";
        zzs(zzeakVar);
    }

    public final void zzh(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("creation", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "nativeObjectCreated";
        zzs(zzeakVar);
    }

    public final void zzi(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("creation", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "nativeObjectNotCreated";
        zzs(zzeakVar);
    }

    public final void zzj(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onAdClicked";
        zzs(zzeakVar);
    }

    public final void zzk(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onRewardedAdClosed";
        zzs(zzeakVar);
    }

    public final void zzl(long j, zzcdh zzcdhVar) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onUserEarnedReward";
        zzeakVar.zze = zzcdhVar.zzf();
        zzeakVar.zzf = Integer.valueOf(zzcdhVar.zze());
        zzs(zzeakVar);
    }

    public final void zzm(long j, int i) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onRewardedAdFailedToLoad";
        zzeakVar.zzd = Integer.valueOf(i);
        zzs(zzeakVar);
    }

    public final void zzn(long j, int i) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onRewardedAdFailedToShow";
        zzeakVar.zzd = Integer.valueOf(i);
        zzs(zzeakVar);
    }

    public final void zzo(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onAdImpression";
        zzs(zzeakVar);
    }

    public final void zzp(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onRewardedAdLoaded";
        zzs(zzeakVar);
    }

    public final void zzq(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzeakVar);
    }

    public final void zzr(long j) throws RemoteException {
        zzeak zzeakVar = new zzeak("rewarded", null);
        zzeakVar.zza = Long.valueOf(j);
        zzeakVar.zzc = "onRewardedAdOpened";
        zzs(zzeakVar);
    }
}
