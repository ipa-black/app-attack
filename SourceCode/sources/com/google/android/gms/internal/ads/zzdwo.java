package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdwo {
    private final zzdel zza;
    private final zzdma zzb;
    private final zzdfu zzc;
    private final zzdgh zzd;
    private final zzdgt zze;
    private final zzdjh zzf;
    private final Executor zzg;
    private final zzdlw zzh;
    private final zzcws zzi;
    private final com.google.android.gms.ads.internal.zzb zzj;
    private final zzcep zzk;
    private final zzapj zzl;
    private final zzdiy zzm;
    private final zzekc zzn;
    private final zzfpo zzo;
    private final zzdzh zzp;
    private final zzfnt zzq;

    public zzdwo(zzdel zzdelVar, zzdfu zzdfuVar, zzdgh zzdghVar, zzdgt zzdgtVar, zzdjh zzdjhVar, Executor executor, zzdlw zzdlwVar, zzcws zzcwsVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcep zzcepVar, zzapj zzapjVar, zzdiy zzdiyVar, zzekc zzekcVar, zzfpo zzfpoVar, zzdzh zzdzhVar, zzfnt zzfntVar, zzdma zzdmaVar) {
        this.zza = zzdelVar;
        this.zzc = zzdfuVar;
        this.zzd = zzdghVar;
        this.zze = zzdgtVar;
        this.zzf = zzdjhVar;
        this.zzg = executor;
        this.zzh = zzdlwVar;
        this.zzi = zzcwsVar;
        this.zzj = zzbVar;
        this.zzk = zzcepVar;
        this.zzl = zzapjVar;
        this.zzm = zzdiyVar;
        this.zzn = zzekcVar;
        this.zzo = zzfpoVar;
        this.zzp = zzdzhVar;
        this.zzq = zzfntVar;
        this.zzb = zzdmaVar;
    }

    public static final zzgfb zzj(zzcno zzcnoVar, String str, String str2) {
        final zzcig zzcigVar = new zzcig();
        zzcnoVar.zzP().zzA(new zzcoz() { // from class: com.google.android.gms.internal.ads.zzdwm
            @Override // com.google.android.gms.internal.ads.zzcoz
            public final void zza(boolean z) {
                zzcig zzcigVar2 = zzcig.this;
                if (z) {
                    zzcigVar2.zzd(null);
                } else {
                    zzcigVar2.zze(new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzcnoVar.zzad(str, str2, null);
        return zzcigVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc() {
        this.zza.onAdClicked();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(String str, String str2) {
        this.zzf.zzbF(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zze() {
        this.zzc.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(View view) {
        this.zzj.zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzg(zzcno zzcnoVar, zzcno zzcnoVar2, Map map) {
        this.zzi.zzh(zzcnoVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ boolean zzh(View view, MotionEvent motionEvent) {
        this.zzj.zza();
        if (view != null) {
            view.performClick();
            return false;
        }
        return false;
    }

    public final void zzi(final zzcno zzcnoVar, boolean z, zzbqf zzbqfVar) {
        zzapf zzc;
        zzcnoVar.zzP().zzM(new com.google.android.gms.ads.internal.client.zza() { // from class: com.google.android.gms.internal.ads.zzdwf
            @Override // com.google.android.gms.ads.internal.client.zza
            public final void onAdClicked() {
                zzdwo.this.zzc();
            }
        }, this.zzd, this.zze, new zzboy() { // from class: com.google.android.gms.internal.ads.zzdwg
            @Override // com.google.android.gms.internal.ads.zzboy
            public final void zzbF(String str, String str2) {
                zzdwo.this.zzd(str, str2);
            }
        }, new com.google.android.gms.ads.internal.overlay.zzz() { // from class: com.google.android.gms.internal.ads.zzdwh
            @Override // com.google.android.gms.ads.internal.overlay.zzz
            public final void zzg() {
                zzdwo.this.zze();
            }
        }, z, zzbqfVar, this.zzj, new zzdwn(this), this.zzk, this.zzn, this.zzo, this.zzp, this.zzq, null, this.zzb, null, null);
        zzcnoVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.zzdwi
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                zzdwo.this.zzh(view, motionEvent);
                return false;
            }
        });
        zzcnoVar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzdwj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                zzdwo.this.zzf(view);
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcj)).booleanValue() && (zzc = this.zzl.zzc()) != null) {
            zzc.zzn((View) zzcnoVar);
        }
        this.zzh.zzj(zzcnoVar, this.zzg);
        this.zzh.zzj(new zzbbx() { // from class: com.google.android.gms.internal.ads.zzdwk
            @Override // com.google.android.gms.internal.ads.zzbbx
            public final void zzc(zzbbw zzbbwVar) {
                zzcno.this.zzP().zzo(zzbbwVar.zzd.left, zzbbwVar.zzd.top, false);
            }
        }, this.zzg);
        this.zzh.zza((View) zzcnoVar);
        zzcnoVar.zzaf("/trackActiveViewUnit", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdwl
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdwo.this.zzg(zzcnoVar, (zzcno) obj, map);
            }
        });
        this.zzi.zzi(zzcnoVar);
    }
}
