package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.util.Predicate;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbti implements zzbta, zzbsy {
    private final zzcno zza;

    public zzbti(Context context, zzchu zzchuVar, zzapj zzapjVar, com.google.android.gms.ads.internal.zza zzaVar) throws zzcnz {
        com.google.android.gms.ads.internal.zzt.zzz();
        zzcno zza = zzcoa.zza(context, zzcpd.zza(), "", false, false, null, null, zzchuVar, null, null, null, zzbew.zza(), null, null);
        this.zza = zza;
        ((View) zza).setWillNotDraw(true);
    }

    private static final void zzs(Runnable runnable) {
        com.google.android.gms.ads.internal.client.zzay.zzb();
        if (zzchh.zzv()) {
            runnable.run();
        } else {
            com.google.android.gms.ads.internal.util.zzs.zza.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void zza(final String str) {
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbtd
            @Override // java.lang.Runnable
            public final void run() {
                zzbti.this.zzm(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbsx.zzc(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbta
    public final void zzc() {
        this.zza.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbsx.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbsx.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbta
    public final void zzf(final String str) {
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbte
            @Override // java.lang.Runnable
            public final void run() {
                zzbti.this.zzn(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbta
    public final void zzg(final String str) {
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbtg
            @Override // java.lang.Runnable
            public final void run() {
                zzbti.this.zzo(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbta
    public final void zzh(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbtf
            @Override // java.lang.Runnable
            public final void run() {
                zzbti.this.zzp(format);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbta
    public final boolean zzi() {
        return this.zza.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzbta
    public final zzbuh zzj() {
        return new zzbuh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbta
    public final void zzk(final zzbto zzbtoVar) {
        this.zza.zzP().zzG(new zzcpa(null) { // from class: com.google.android.gms.internal.ads.zzbtb
            @Override // com.google.android.gms.internal.ads.zzcpa
            public final void zza() {
                zzbto zzbtoVar2 = zzbto.this;
                final zzbuf zzbufVar = zzbtoVar2.zza;
                final zzbue zzbueVar = zzbtoVar2.zzb;
                final zzbta zzbtaVar = zzbtoVar2.zzc;
                com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbtn
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbuf.this.zzi(zzbueVar, zzbtaVar);
                    }
                }, 10000L);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbsx.zzd(this, str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm(String str) {
        this.zza.zza(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(String str) {
        this.zza.loadData(str, "text/html", C.UTF8_NAME);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(String str) {
        this.zza.loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzp(String str) {
        this.zza.loadData(str, "text/html", C.UTF8_NAME);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzq(String str, zzbqd zzbqdVar) {
        this.zza.zzaf(str, new zzbth(this, zzbqdVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzr(String str, final zzbqd zzbqdVar) {
        this.zza.zzax(str, new Predicate() { // from class: com.google.android.gms.internal.ads.zzbtc
            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzbqd zzbqdVar2;
                zzbqd zzbqdVar3 = zzbqd.this;
                zzbqd zzbqdVar4 = (zzbqd) obj;
                if (zzbqdVar4 instanceof zzbth) {
                    zzbqdVar2 = ((zzbth) zzbqdVar4).zzb;
                    return zzbqdVar2.equals(zzbqdVar3);
                }
                return false;
            }
        });
    }
}
