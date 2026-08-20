package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzelc implements zzekq {
    private final zzcxy zza;
    private final Context zzb;
    private final zzdwp zzc;
    private final zzfjg zzd;
    private final Executor zze;
    private final zzchu zzf;
    private final zzbqf zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhW)).booleanValue();

    public zzelc(zzcxy zzcxyVar, Context context, Executor executor, zzdwp zzdwpVar, zzfjg zzfjgVar, zzchu zzchuVar, zzbqf zzbqfVar) {
        this.zzb = context;
        this.zza = zzcxyVar;
        this.zze = executor;
        this.zzc = zzdwpVar;
        this.zzd = zzfjgVar;
        this.zzf = zzchuVar;
        this.zzg = zzbqfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        final zzdwt zzdwtVar = new zzdwt();
        zzgfb zzn = zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzela
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzelc.this.zzc(zzfilVar, zzfixVar, zzdwtVar, obj);
            }
        }, this.zze);
        zzn.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelb
            @Override // java.lang.Runnable
            public final void run() {
                zzdwt.this.zzb();
            }
        }, this.zze);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        zzfiq zzfiqVar = zzfilVar.zzt;
        return (zzfiqVar == null || zzfiqVar.zza == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(final zzfil zzfilVar, zzfix zzfixVar, zzdwt zzdwtVar, Object obj) throws Exception {
        final zzcno zza = this.zzc.zza(this.zzd.zze, zzfilVar, zzfixVar.zzb.zzb);
        zza.zzab(zzfilVar.zzX);
        zzdwtVar.zza(this.zzb, (View) zza);
        zzcig zzcigVar = new zzcig();
        final zzcxv zza2 = this.zza.zza(new zzdbc(zzfixVar, zzfilVar, null), new zzdmz(new zzele(this.zzf, zzcigVar, zzfilVar, zza, this.zzd, this.zzh, this.zzg), zza), new zzcxw(zzfilVar.zzab));
        zza2.zzj().zzi(zza, false, this.zzh ? this.zzg : null);
        zzcigVar.zzd(zza2);
        zza2.zzc().zzj(new zzdfh() { // from class: com.google.android.gms.internal.ads.zzeky
            @Override // com.google.android.gms.internal.ads.zzdfh
            public final void zzl() {
                zzcno zzcnoVar = zzcno.this;
                if (zzcnoVar.zzP() != null) {
                    zzcnoVar.zzP().zzp();
                }
            }
        }, zzcib.zzf);
        zza2.zzj();
        zzfiq zzfiqVar = zzfilVar.zzt;
        return zzger.zzm(zzdwo.zzj(zza, zzfiqVar.zzb, zzfiqVar.zza), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzekz
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj2) {
                zzcno zzcnoVar = zza;
                zzfil zzfilVar2 = zzfilVar;
                zzcxv zzcxvVar = zza2;
                if (zzfilVar2.zzN) {
                    zzcnoVar.zzag();
                }
                zzcnoVar.zzaa();
                zzcnoVar.onPause();
                return zzcxvVar.zza();
            }
        }, this.zze);
    }
}
