package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.collection.ArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdof implements zzdgb, com.google.android.gms.ads.internal.overlay.zzo, zzdfh {
    IObjectWrapper zza;
    private final Context zzb;
    private final zzcno zzc;
    private final zzfil zzd;
    private final zzchu zze;
    private final zzbfg zzf;

    public zzdof(Context context, zzcno zzcnoVar, zzfil zzfilVar, zzchu zzchuVar, zzbfg zzbfgVar) {
        this.zzb = context;
        this.zzc = zzcnoVar;
        this.zzd = zzfilVar;
        this.zze = zzchuVar;
        this.zzf = zzbfgVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        if (this.zza == null || this.zzc == null) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeD)).booleanValue()) {
            return;
        }
        this.zzc.zzd("onSdkImpression", new ArrayMap());
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbE() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        if (this.zza == null || this.zzc == null) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeD)).booleanValue()) {
            this.zzc.zzd("onSdkImpression", new ArrayMap());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        zzekp zzekpVar;
        zzekp zzekpVar2;
        zzeko zzekoVar;
        zzbfg zzbfgVar;
        if ((this.zzf == zzbfg.REWARD_BASED_VIDEO_AD || (zzbfgVar = this.zzf) == zzbfg.INTERSTITIAL || zzbfgVar == zzbfg.APP_OPEN) && this.zzd.zzU && this.zzc != null && com.google.android.gms.ads.internal.zzt.zzA().zze(this.zzb)) {
            zzchu zzchuVar = this.zze;
            String str = zzchuVar.zzb + "." + zzchuVar.zzc;
            String zza = this.zzd.zzW.zza();
            if (this.zzd.zzW.zzb() == 1) {
                zzekoVar = zzeko.VIDEO;
                zzekpVar2 = zzekp.DEFINED_BY_JAVASCRIPT;
            } else {
                if (this.zzd.zzZ == 2) {
                    zzekpVar = zzekp.UNSPECIFIED;
                } else {
                    zzekpVar = zzekp.BEGIN_TO_RENDER;
                }
                zzekpVar2 = zzekpVar;
                zzekoVar = zzeko.HTML_DISPLAY;
            }
            IObjectWrapper zza2 = com.google.android.gms.ads.internal.zzt.zzA().zza(str, this.zzc.zzI(), "", "javascript", zza, zzekpVar2, zzekoVar, this.zzd.zzan);
            this.zza = zza2;
            if (zza2 != null) {
                com.google.android.gms.ads.internal.zzt.zzA().zzc(this.zza, (View) this.zzc);
                this.zzc.zzar(this.zza);
                com.google.android.gms.ads.internal.zzt.zzA().zzd(this.zza);
                this.zzc.zzd("onSdkLoaded", new ArrayMap());
            }
        }
    }
}
