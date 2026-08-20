package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeli implements zzekq {
    private final zzcxn zza;
    private final Context zzb;
    private final zzdwp zzc;
    private final Executor zzd;

    public zzeli(zzcxn zzcxnVar, Context context, Executor executor, zzdwp zzdwpVar) {
        this.zzb = context;
        this.zza = zzcxnVar;
        this.zzd = executor;
        this.zzc = zzdwpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        return zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzelf
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzeli.this.zzc(zzfixVar, zzfilVar, obj);
            }
        }, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        zzfiq zzfiqVar = zzfilVar.zzt;
        return (zzfiqVar == null || zzfiqVar.zza == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(zzfix zzfixVar, zzfil zzfilVar, Object obj) throws Exception {
        com.google.android.gms.ads.internal.client.zzq zza = zzfjk.zza(this.zzb, zzfilVar.zzv);
        final zzcno zza2 = this.zzc.zza(zza, zzfilVar, zzfixVar.zzb.zzb);
        final zzcxf zza3 = this.zza.zza(new zzdbc(zzfixVar, zzfilVar, null), new zzcxg((View) zza2, zza2, zzfjk.zzc(zza), zzfilVar.zzab, zzfilVar.zzaf, zzfilVar.zzP));
        zza3.zzg().zzi(zza2, false, null);
        zza3.zzc().zzj(new zzdfh() { // from class: com.google.android.gms.internal.ads.zzelg
            @Override // com.google.android.gms.internal.ads.zzdfh
            public final void zzl() {
                zzcno zzcnoVar = zzcno.this;
                if (zzcnoVar.zzP() != null) {
                    zzcnoVar.zzP().zzp();
                }
            }
        }, zzcib.zzf);
        zza3.zzg();
        zzfiq zzfiqVar = zzfilVar.zzt;
        return zzger.zzm(zzdwo.zzj(zza2, zzfiqVar.zzb, zzfiqVar.zza), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzelh
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj2) {
                return zzcxf.this.zza();
            }
        }, zzcib.zzf);
    }
}
