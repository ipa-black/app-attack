package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfoy implements Runnable {
    public static Boolean zza;
    private final Context zzb;
    private final zzchu zzc;
    private String zze;
    private int zzf;
    private final zzdwz zzg;
    private final zzeib zzi;
    private final zzccn zzj;
    private final zzfpd zzd = zzfpg.zzc();
    private boolean zzh = false;

    public zzfoy(Context context, zzchu zzchuVar, zzdwz zzdwzVar, zzeib zzeibVar, zzccn zzccnVar, byte[] bArr) {
        this.zzb = context;
        this.zzc = zzchuVar;
        this.zzg = zzdwzVar;
        this.zzi = zzeibVar;
        this.zzj = zzccnVar;
    }

    public static synchronized boolean zza() {
        boolean booleanValue;
        synchronized (zzfoy.class) {
            if (zza == null) {
                if (((Boolean) zzbks.zzb.zze()).booleanValue()) {
                    zza = Boolean.valueOf(Math.random() < ((Double) zzbks.zza.zze()).doubleValue());
                } else {
                    zza = false;
                }
            }
            booleanValue = zza.booleanValue();
        }
        return booleanValue;
    }

    private final synchronized void zzc() {
        if (this.zzh) {
            return;
        }
        this.zzh = true;
        if (zza()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            this.zze = com.google.android.gms.ads.internal.util.zzs.zzo(this.zzb);
            this.zzf = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzb);
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhP)).intValue();
            zzcib.zzd.scheduleAtFixedRate(this, intValue, intValue, TimeUnit.MILLISECONDS);
        }
    }

    private final synchronized void zzd() {
        try {
            new zzeia(this.zzb, this.zzc.zza, this.zzj, Binder.getCallingUid(), null).zza(new zzehy((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhO), 60000, new HashMap(), ((zzfpg) this.zzd.zzak()).zzaw(), "application/x-protobuf", false));
            this.zzd.zzc();
        } catch (Exception e2) {
            if (!(e2 instanceof zzede) || ((zzede) e2).zza() != 3) {
                com.google.android.gms.ads.internal.zzt.zzo().zzt(e2, "CuiMonitor.sendCuiPing");
            } else {
                this.zzd.zzc();
            }
        }
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        if (zza()) {
            if (this.zzd.zza() == 0) {
                return;
            }
            zzd();
        }
    }

    public final synchronized void zzb(zzfop zzfopVar) {
        if (!this.zzh) {
            zzc();
        }
        if (zza()) {
            if (zzfopVar == null) {
                return;
            }
            if (this.zzd.zza() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhQ)).intValue()) {
                return;
            }
            zzfpd zzfpdVar = this.zzd;
            zzfpe zza2 = zzfpf.zza();
            zzfpa zza3 = zzfpb.zza();
            zza3.zzr(zzfopVar.zzk());
            zza3.zzn(zzfopVar.zzj());
            zza3.zzf(zzfopVar.zzb());
            zza3.zzt(3);
            zza3.zzl(this.zzc.zza);
            zza3.zza(this.zze);
            zza3.zzj(Build.VERSION.RELEASE);
            zza3.zzo(Build.VERSION.SDK_INT);
            zza3.zzs(zzfopVar.zzm());
            zza3.zzi(zzfopVar.zza());
            zza3.zzd(this.zzf);
            zza3.zzq(zzfopVar.zzl());
            zza3.zzb(zzfopVar.zzc());
            zza3.zze(zzfopVar.zze());
            zza3.zzg(zzfopVar.zzf());
            zza3.zzh(this.zzg.zzc(zzfopVar.zzf()));
            zza3.zzk(zzfopVar.zzg());
            zza3.zzc(zzfopVar.zzd());
            zza3.zzp(zzfopVar.zzi());
            zza3.zzm(zzfopVar.zzh());
            zza2.zza(zza3);
            zzfpdVar.zzb(zza2);
        }
    }
}
