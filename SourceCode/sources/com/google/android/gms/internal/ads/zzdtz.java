package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdtz {
    private final zzfjg zza;
    private final Executor zzb;
    private final zzdwp zzc;
    private final zzdvk zzd;
    private final Context zze;
    private final zzdzh zzf;
    private final zzfnt zzg;
    private final zzfpo zzh;
    private final zzekc zzi;

    public zzdtz(zzfjg zzfjgVar, Executor executor, zzdwp zzdwpVar, Context context, zzdzh zzdzhVar, zzfnt zzfntVar, zzfpo zzfpoVar, zzekc zzekcVar, zzdvk zzdvkVar) {
        this.zza = zzfjgVar;
        this.zzb = executor;
        this.zzc = zzdwpVar;
        this.zze = context;
        this.zzf = zzdzhVar;
        this.zzg = zzfntVar;
        this.zzh = zzfpoVar;
        this.zzi = zzekcVar;
        this.zzd = zzdvkVar;
    }

    private final void zzh(zzcno zzcnoVar) {
        zzi(zzcnoVar);
        zzcnoVar.zzaf("/video", zzbqc.zzl);
        zzcnoVar.zzaf("/videoMeta", zzbqc.zzm);
        zzcnoVar.zzaf("/precache", new zzcmb());
        zzcnoVar.zzaf("/delayPageLoaded", zzbqc.zzp);
        zzcnoVar.zzaf("/instrument", zzbqc.zzn);
        zzcnoVar.zzaf("/log", zzbqc.zzg);
        zzcnoVar.zzaf("/click", zzbqc.zza(null));
        if (this.zza.zzb != null) {
            zzcnoVar.zzP().zzD(true);
            zzcnoVar.zzaf("/open", new zzbqn(null, null, null, null, null));
        } else {
            zzcnoVar.zzP().zzD(false);
        }
        if (com.google.android.gms.ads.internal.zzt.zzn().zzu(zzcnoVar.getContext())) {
            zzcnoVar.zzaf("/logScionEvent", new zzbqi(zzcnoVar.getContext()));
        }
    }

    private static final void zzi(zzcno zzcnoVar) {
        zzcnoVar.zzaf("/videoClicked", zzbqc.zzh);
        zzcnoVar.zzP().zzF(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdk)).booleanValue()) {
            zzcnoVar.zzaf("/getNativeAdViewSignals", zzbqc.zzs);
        }
        zzcnoVar.zzaf("/getNativeClickMeta", zzbqc.zzt);
    }

    public final zzgfb zza(final JSONObject jSONObject) {
        return zzger.zzn(zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdtp
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzdtz.this.zze(obj);
            }
        }, this.zzb), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdtq
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzdtz.this.zzc(jSONObject, (zzcno) obj);
            }
        }, this.zzb);
    }

    public final zzgfb zzb(final String str, final String str2, final zzfil zzfilVar, final zzfio zzfioVar, final com.google.android.gms.ads.internal.client.zzq zzqVar) {
        return zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdts
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzdtz.this.zzd(zzqVar, zzfilVar, zzfioVar, str, str2, obj);
            }
        }, this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(JSONObject jSONObject, final zzcno zzcnoVar) throws Exception {
        final zzcif zza = zzcif.zza(zzcnoVar);
        if (this.zza.zzb != null) {
            zzcnoVar.zzai(zzcpd.zzd());
        } else {
            zzcnoVar.zzai(zzcpd.zze());
        }
        zzcnoVar.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzdto
            @Override // com.google.android.gms.internal.ads.zzcoz
            public final void zza(boolean z) {
                zzdtz.this.zzf(zzcnoVar, zza, z);
            }
        });
        zzcnoVar.zzl("google.afma.nativeAds.renderVideo", jSONObject);
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzd(com.google.android.gms.ads.internal.client.zzq zzqVar, zzfil zzfilVar, zzfio zzfioVar, String str, String str2, Object obj) throws Exception {
        final zzcno zza = this.zzc.zza(zzqVar, zzfilVar, zzfioVar);
        final zzcif zza2 = zzcif.zza(zza);
        if (this.zza.zzb != null) {
            zzh(zza);
            zza.zzai(zzcpd.zzd());
        } else {
            zzdvh zzb = this.zzd.zzb();
            zza.zzP().zzM(zzb, zzb, zzb, zzb, zzb, false, null, new com.google.android.gms.ads.internal.zzb(this.zze, null, null), null, null, this.zzi, this.zzh, this.zzf, this.zzg, null, zzb, null, null);
            zzi(zza);
        }
        zza.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzdtt
            @Override // com.google.android.gms.internal.ads.zzcoz
            public final void zza(boolean z) {
                zzdtz.this.zzg(zza, zza2, z);
            }
        });
        zza.zzad(str, str2, null);
        return zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zze(Object obj) throws Exception {
        zzcno zza = this.zzc.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        final zzcif zza2 = zzcif.zza(zza);
        zzh(zza);
        zza.zzP().zzG(new zzcpa() { // from class: com.google.android.gms.internal.ads.zzdtr
            @Override // com.google.android.gms.internal.ads.zzcpa
            public final void zza() {
                zzcif.this.zzb();
            }
        });
        zza.loadUrl((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdj));
        return zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(zzcno zzcnoVar, zzcif zzcifVar, boolean z) {
        if (this.zza.zza != null && zzcnoVar.zzs() != null) {
            zzcnoVar.zzs().zzs(this.zza.zza);
        }
        zzcifVar.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzg(zzcno zzcnoVar, zzcif zzcifVar, boolean z) {
        if (z) {
            if (this.zza.zza != null && zzcnoVar.zzs() != null) {
                zzcnoVar.zzs().zzs(this.zza.zza);
            }
            zzcifVar.zzb();
            return;
        }
        zzcifVar.zze(new zzeom(1, "Html video Web View failed to load."));
    }
}
