package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeae implements zzdhi, com.google.android.gms.ads.internal.client.zza, zzden, zzdfh, zzdfi, zzdgb, zzdeq, zzasm, zzfnk {
    private final List zza;
    private final zzdzs zzb;
    private long zzc;

    public zzeae(zzdzs zzdzsVar, zzcpj zzcpjVar) {
        this.zzb = zzdzsVar;
        this.zza = Collections.singletonList(zzcpjVar);
    }

    private final void zze(Class cls, String str, Object... objArr) {
        this.zzb.zza(this.zza, "Event-".concat(String.valueOf(cls.getSimpleName())), str, objArr);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zze(com.google.android.gms.ads.internal.client.zza.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zze(zzdeq.class, "onAdFailedToLoad", Integer.valueOf(zzeVar.zza), zzeVar.zzb, zzeVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
        this.zzc = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        zze(zzdhi.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbH(zzfnd zzfndVar, String str) {
        zze(zzfnc.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbI(zzfnd zzfndVar, String str, Throwable th) {
        zze(zzfnc.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbr(Context context) {
        zze(zzdfi.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbt(Context context) {
        zze(zzdfi.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbu(Context context) {
        zze(zzdfi.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    public final void zzbv(String str, String str2) {
        zze(zzasm.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
        zze(zzden.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
        zze(zzden.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzc(zzfnd zzfndVar, String str) {
        zze(zzfnc.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzd(zzfnd zzfndVar, String str) {
        zze(zzfnc.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
        zze(zzden.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        zze(zzdfh.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
        zze(zzden.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        long j = this.zzc;
        com.google.android.gms.ads.internal.util.zze.zza("Ad Request Latency : " + (elapsedRealtime - j));
        zze(zzdgb.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
        zze(zzden.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    @ParametersAreNonnullByDefault
    public final void zzp(zzccr zzccrVar, String str, String str2) {
        zze(zzden.class, "onRewarded", zzccrVar, str, str2);
    }
}
