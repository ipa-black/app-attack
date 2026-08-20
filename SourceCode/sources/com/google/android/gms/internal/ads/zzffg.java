package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffg implements zzfga {
    private final zzfga zza;
    private final zzfga zzb;
    private final zzflo zzc;
    private final String zzd;
    private zzddw zze;
    private final Executor zzf;

    public zzffg(zzfga zzfgaVar, zzfga zzfgaVar2, zzflo zzfloVar, String str, Executor executor) {
        this.zza = zzfgaVar;
        this.zzb = zzfgaVar2;
        this.zzc = zzfloVar;
        this.zzd = str;
        this.zzf = executor;
    }

    private final zzgfb zzg(zzflb zzflbVar, zzfgb zzfgbVar) {
        zzddw zzddwVar = zzflbVar.zza;
        this.zze = zzddwVar;
        if (zzflbVar.zzc != null) {
            if (zzddwVar.zzf() != null) {
                zzflbVar.zzc.zzo().zzbN(zzflbVar.zza.zzf());
            }
            return zzger.zzi(zzflbVar.zzc);
        }
        zzddwVar.zzb().zzl(zzflbVar.zzb);
        return ((zzffq) this.zza).zzb(zzfgbVar, null, zzflbVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    /* renamed from: zza */
    public final synchronized zzddw zzd() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzb(zzfgb zzfgbVar, zzfff zzfffVar, zzffz zzffzVar, zzddw zzddwVar, zzffl zzfflVar) throws Exception {
        if (zzfflVar != null) {
            zzfff zzfffVar2 = new zzfff(zzfffVar.zza, zzfffVar.zzb, zzfffVar.zzc, zzfffVar.zzd, zzfffVar.zze, zzfffVar.zzf, zzfflVar.zza);
            if (zzfflVar.zzc != null) {
                this.zze = null;
                this.zzc.zze(zzfffVar2);
                return zzg(zzfflVar.zzc, zzfgbVar);
            }
            zzgfb zza = this.zzc.zza(zzfffVar2);
            if (zza != null) {
                this.zze = null;
                return zzger.zzn(zza, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzffc
                    @Override // com.google.android.gms.internal.ads.zzgdy
                    public final zzgfb zza(Object obj) {
                        return zzffg.this.zze((zzfll) obj);
                    }
                }, this.zzf);
            }
            this.zzc.zze(zzfffVar2);
            zzfgbVar = new zzfgb(zzfgbVar.zzb, zzfflVar.zzb);
        }
        zzgfb zzb = ((zzffq) this.zza).zzb(zzfgbVar, zzffzVar, zzddwVar);
        this.zze = zzddwVar;
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    public final /* bridge */ /* synthetic */ zzgfb zzc(zzfgb zzfgbVar, zzffz zzffzVar, Object obj) {
        return zzf(zzfgbVar, zzffzVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zze(zzfll zzfllVar) throws Exception {
        zzfln zzflnVar;
        if (zzfllVar == null || zzfllVar.zza == null || (zzflnVar = zzfllVar.zzb) == null) {
            throw new zzede(1, "Empty prefetch");
        }
        zzbfl zza = zzbfr.zza();
        zzbfj zza2 = zzbfk.zza();
        zza2.zzd(2);
        zza2.zzb(zzbfo.zzd());
        zza.zza(zza2);
        zzfllVar.zza.zza.zzb().zzc().zzi((zzbfr) zza.zzak());
        return zzg(zzfllVar.zza, ((zzfff) zzflnVar).zzb);
    }

    public final synchronized zzgfb zzf(final zzfgb zzfgbVar, final zzffz zzffzVar, zzddw zzddwVar) {
        zzddv zza = zzffzVar.zza(zzfgbVar.zzb);
        zza.zza(new zzffh(this.zzd));
        final zzddw zzddwVar2 = (zzddw) zza.zzh();
        zzddwVar2.zzg();
        zzddwVar2.zzg();
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzddwVar2.zzg().zzd;
        if (zzlVar.zzs == null && zzlVar.zzx == null) {
            zzfjg zzg = zzddwVar2.zzg();
            final zzfff zzfffVar = new zzfff(zzffzVar, zzfgbVar, zzg.zzd, zzg.zzf, this.zzf, zzg.zzj, null);
            return zzger.zzn(zzgei.zzv(((zzffm) this.zzb).zzb(zzfgbVar, zzffzVar, zzddwVar2)), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzffd
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    return zzffg.this.zzb(zzfgbVar, zzfffVar, zzffzVar, zzddwVar2, (zzffl) obj);
                }
            }, this.zzf);
        }
        this.zze = zzddwVar2;
        return ((zzffq) this.zza).zzb(zzfgbVar, zzffzVar, zzddwVar2);
    }
}
