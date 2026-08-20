package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcpj implements zzcvb {
    @Nullable
    private static zzcpj zza;

    private static synchronized zzcpj zzD(Context context, @Nullable zzbvt zzbvtVar, int i, boolean z, int i2, zzcqm zzcqmVar) {
        synchronized (zzcpj.class) {
            zzcpj zzcpjVar = zza;
            if (zzcpjVar != null) {
                return zzcpjVar;
            }
            zzbjj.zzc(context);
            zzfjz zzd = zzfjz.zzd(context);
            zzchu zzc = zzd.zzc(224400000, false, i2);
            zzd.zze(zzbvtVar);
            zzcsg zzcsgVar = new zzcsg(null);
            zzcpk zzcpkVar = new zzcpk();
            zzcpkVar.zzd(zzc);
            zzcpkVar.zzc(context);
            zzcsgVar.zzb(new zzcpm(zzcpkVar, null));
            zzcsgVar.zzc(new zzctt(zzcqmVar, null));
            zzcpj zza2 = zzcsgVar.zza();
            com.google.android.gms.ads.internal.zzt.zzo().zzs(context, zzc);
            com.google.android.gms.ads.internal.zzt.zzc().zzi(context);
            com.google.android.gms.ads.internal.zzt.zzp().zzj(context);
            com.google.android.gms.ads.internal.zzt.zzp().zzi(context);
            com.google.android.gms.ads.internal.util.zzd.zza(context);
            com.google.android.gms.ads.internal.zzt.zzb().zzd(context);
            com.google.android.gms.ads.internal.zzt.zzv().zzb(context);
            zzcfu.zzd(context);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfE)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzas)).booleanValue()) {
                    zzbew zzbewVar = new zzbew(new zzbfc(context));
                    zzeiy zzeiyVar = new zzeiy(new zzeiu(context), zza2.zzA());
                    com.google.android.gms.ads.internal.zzt.zzp();
                    new zzeju(context, zzc, zzbewVar, zzeiyVar, UUID.randomUUID().toString(), zza2.zzy()).zzb(com.google.android.gms.ads.internal.zzt.zzo().zzh().zzP());
                }
            }
            zza = zza2;
            return zza2;
        }
    }

    public static zzcpj zza(Context context, @Nullable zzbvt zzbvtVar, int i) {
        return zzD(context, zzbvtVar, 224400000, false, i, new zzcqm());
    }

    public abstract zzgfc zzA();

    public abstract Executor zzB();

    public abstract ScheduledExecutorService zzC();

    public abstract zzcue zzb();

    public abstract zzcxm zzc();

    public abstract zzcxx zzd();

    public abstract zzczh zze();

    public abstract zzdhc zzf();

    public abstract zzdnv zzg();

    public abstract zzdor zzh();

    public abstract zzdvx zzi();

    public abstract zzeap zzj();

    public abstract zzece zzk();

    public abstract zzecy zzl();

    public abstract zzekk zzm();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzc zzn();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzg zzo();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzac zzp();

    @Override // com.google.android.gms.internal.ads.zzcvb
    public final zzfae zzq(zzccb zzccbVar, int i) {
        return zzr(new zzfcg(zzccbVar, i));
    }

    protected abstract zzfae zzr(zzfcg zzfcgVar);

    public abstract zzfdj zzs();

    public abstract zzfex zzt();

    public abstract zzfgq zzu();

    public abstract zzfie zzv();

    public abstract zzfjs zzw();

    public abstract zzfkc zzx();

    public abstract zzfnt zzy();

    public abstract zzfoy zzz();
}
