package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.collection.ArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdaa implements zzdgb, zzdfh {
    private final Context zza;
    private final zzcno zzb;
    private final zzfil zzc;
    private final zzchu zzd;
    private IObjectWrapper zze;
    private boolean zzf;

    public zzdaa(Context context, zzcno zzcnoVar, zzfil zzfilVar, zzchu zzchuVar) {
        this.zza = context;
        this.zzb = zzcnoVar;
        this.zzc = zzfilVar;
        this.zzd = zzchuVar;
    }

    private final synchronized void zza() {
        zzeko zzekoVar;
        zzekp zzekpVar;
        if (this.zzc.zzU) {
            if (this.zzb == null) {
                return;
            }
            if (com.google.android.gms.ads.internal.zzt.zzA().zze(this.zza)) {
                zzchu zzchuVar = this.zzd;
                String str = zzchuVar.zzb + "." + zzchuVar.zzc;
                String zza = this.zzc.zzW.zza();
                if (this.zzc.zzW.zzb() == 1) {
                    zzekoVar = zzeko.VIDEO;
                    zzekpVar = zzekp.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzekoVar = zzeko.HTML_DISPLAY;
                    if (this.zzc.zzf == 1) {
                        zzekpVar = zzekp.ONE_PIXEL;
                    } else {
                        zzekpVar = zzekp.BEGIN_TO_RENDER;
                    }
                }
                IObjectWrapper zza2 = com.google.android.gms.ads.internal.zzt.zzA().zza(str, this.zzb.zzI(), "", "javascript", zza, zzekpVar, zzekoVar, this.zzc.zzan);
                this.zze = zza2;
                zzcno zzcnoVar = this.zzb;
                if (zza2 != null) {
                    com.google.android.gms.ads.internal.zzt.zzA().zzc(this.zze, (View) zzcnoVar);
                    this.zzb.zzar(this.zze);
                    com.google.android.gms.ads.internal.zzt.zzA().zzd(this.zze);
                    this.zzf = true;
                    this.zzb.zzd("onSdkLoaded", new ArrayMap());
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final synchronized void zzl() {
        zzcno zzcnoVar;
        if (!this.zzf) {
            zza();
        }
        if (!this.zzc.zzU || this.zze == null || (zzcnoVar = this.zzb) == null) {
            return;
        }
        zzcnoVar.zzd("onSdkImpression", new ArrayMap());
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final synchronized void zzn() {
        if (this.zzf) {
            return;
        }
        zza();
    }
}
