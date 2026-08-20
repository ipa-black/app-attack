package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdve {
    private final com.google.android.gms.ads.internal.zza zzb;
    private final zzcoa zzc;
    private final Context zzd;
    private final zzdzh zze;
    private final zzfnt zzf;
    private final Executor zzg;
    private final zzapj zzh;
    private final zzchu zzi;
    private final zzekc zzk;
    private final zzfpo zzl;
    private zzgfb zzm;
    private final zzduy zza = new zzduy(null);
    private final zzbqr zzj = new zzbqr();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdve(zzdvb zzdvbVar) {
        this.zzd = zzdvb.zza(zzdvbVar);
        this.zzg = zzdvb.zzj(zzdvbVar);
        this.zzh = zzdvb.zzb(zzdvbVar);
        this.zzi = zzdvb.zzd(zzdvbVar);
        this.zzb = zzdvb.zzc(zzdvbVar);
        this.zzc = zzdvb.zze(zzdvbVar);
        this.zzk = zzdvb.zzg(zzdvbVar);
        this.zzl = zzdvb.zzi(zzdvbVar);
        this.zze = zzdvb.zzf(zzdvbVar);
        this.zzf = zzdvb.zzh(zzdvbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzcno zza(zzcno zzcnoVar) {
        zzcnoVar.zzaf("/result", this.zzj);
        zzcpb zzP = zzcnoVar.zzP();
        zzduy zzduyVar = this.zza;
        zzP.zzM(null, zzduyVar, zzduyVar, zzduyVar, zzduyVar, false, null, new com.google.android.gms.ads.internal.zzb(this.zzd, null, null), null, null, this.zzk, this.zzl, this.zze, this.zzf, null, null, null, null);
        return zzcnoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(String str, JSONObject jSONObject, zzcno zzcnoVar) throws Exception {
        return this.zzj.zzb(zzcnoVar, str, jSONObject);
    }

    public final synchronized zzgfb zzd(final String str, final JSONObject jSONObject) {
        zzgfb zzgfbVar = this.zzm;
        if (zzgfbVar == null) {
            return zzger.zzi(null);
        }
        return zzger.zzn(zzgfbVar, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzduq
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzdve.this.zzc(str, jSONObject, (zzcno) obj);
            }
        }, this.zzg);
    }

    public final synchronized void zze(zzfil zzfilVar, zzfio zzfioVar) {
        zzgfb zzgfbVar = this.zzm;
        if (zzgfbVar == null) {
            return;
        }
        zzger.zzr(zzgfbVar, new zzduw(this, zzfilVar, zzfioVar), this.zzg);
    }

    public final synchronized void zzf() {
        zzgfb zzgfbVar = this.zzm;
        if (zzgfbVar == null) {
            return;
        }
        zzger.zzr(zzgfbVar, new zzdus(this), this.zzg);
        this.zzm = null;
    }

    public final synchronized void zzg(String str, Map map) {
        zzgfb zzgfbVar = this.zzm;
        if (zzgfbVar == null) {
            return;
        }
        zzger.zzr(zzgfbVar, new zzduv(this, "sendMessageToNativeJs", map), this.zzg);
    }

    public final synchronized void zzh() {
        final Context context = this.zzd;
        final zzchu zzchuVar = this.zzi;
        final String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdi);
        final zzapj zzapjVar = this.zzh;
        final com.google.android.gms.ads.internal.zza zzaVar = this.zzb;
        zzgfb zzm = zzger.zzm(zzger.zzl(new zzgdx() { // from class: com.google.android.gms.internal.ads.zzcnx
            @Override // com.google.android.gms.internal.ads.zzgdx
            public final zzgfb zza() {
                Context context2 = context;
                zzapj zzapjVar2 = zzapjVar;
                zzchu zzchuVar2 = zzchuVar;
                com.google.android.gms.ads.internal.zza zzaVar2 = zzaVar;
                String str2 = str;
                com.google.android.gms.ads.internal.zzt.zzz();
                zzcno zza = zzcoa.zza(context2, zzcpd.zza(), "", false, false, zzapjVar2, null, zzchuVar2, null, null, zzaVar2, zzbew.zza(), null, null);
                final zzcif zza2 = zzcif.zza(zza);
                zza.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzcny
                    @Override // com.google.android.gms.internal.ads.zzcoz
                    public final void zza(boolean z) {
                        zzcif.this.zzb();
                    }
                });
                zza.loadUrl(str2);
                return zza2;
            }
        }, zzcib.zze), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdur
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                zzcno zzcnoVar = (zzcno) obj;
                zzdve.this.zza(zzcnoVar);
                return zzcnoVar;
            }
        }, this.zzg);
        this.zzm = zzm;
        zzcie.zza(zzm, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void zzi(String str, zzbqd zzbqdVar) {
        zzgfb zzgfbVar = this.zzm;
        if (zzgfbVar == null) {
            return;
        }
        zzger.zzr(zzgfbVar, new zzdut(this, str, zzbqdVar), this.zzg);
    }

    public final void zzj(WeakReference weakReference, String str, zzbqd zzbqdVar) {
        zzi(str, new zzdvd(this, weakReference, str, zzbqdVar, null));
    }

    public final synchronized void zzk(String str, zzbqd zzbqdVar) {
        zzgfb zzgfbVar = this.zzm;
        if (zzgfbVar == null) {
            return;
        }
        zzger.zzr(zzgfbVar, new zzduu(this, str, zzbqdVar), this.zzg);
    }
}
