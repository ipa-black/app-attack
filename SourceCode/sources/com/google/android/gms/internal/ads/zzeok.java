package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeok {
    private final zzfjv zza;
    private final zzdwz zzb;
    private final zzdzh zzc;
    private final zzfnt zzd;

    public zzeok(zzfjv zzfjvVar, zzdwz zzdwzVar, zzdzh zzdzhVar, zzfnt zzfntVar) {
        this.zza = zzfjvVar;
        this.zzb = zzdwzVar;
        this.zzc = zzdzhVar;
        this.zzd = zzfntVar;
    }

    public final void zza(zzfio zzfioVar, zzfil zzfilVar, int i, @Nullable zzeku zzekuVar, long j) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhK)).booleanValue()) {
            zzdzg zza = this.zzc.zza();
            zza.zze(zzfioVar);
            zza.zzd(zzfilVar);
            zza.zzb("action", "adapter_status");
            zza.zzb("adapter_l", String.valueOf(j));
            zza.zzb("sc", Integer.toString(i));
            if (zzekuVar != null) {
                zza.zzb("arec", Integer.toString(zzekuVar.zzb().zza));
                String zza2 = this.zza.zza(zzekuVar.getMessage());
                if (zza2 != null) {
                    zza.zzb("areec", zza2);
                }
            }
            zzdwy zzb = this.zzb.zzb(zzfilVar.zzu);
            if (zzb != null) {
                zza.zzb("ancn", zzb.zza);
                zzbye zzbyeVar = zzb.zzb;
                if (zzbyeVar != null) {
                    zza.zzb("adapter_v", zzbyeVar.toString());
                }
                zzbye zzbyeVar2 = zzb.zzc;
                if (zzbyeVar2 != null) {
                    zza.zzb("adapter_sv", zzbyeVar2.toString());
                }
            }
            zza.zzg();
            return;
        }
        zzfns zzb2 = zzfns.zzb("adapter_status");
        zzb2.zzg(zzfioVar);
        zzb2.zzf(zzfilVar);
        zzb2.zza("adapter_l", String.valueOf(j));
        zzb2.zza("sc", Integer.toString(i));
        if (zzekuVar != null) {
            zzb2.zza("arec", Integer.toString(zzekuVar.zzb().zza));
            String zza3 = this.zza.zza(zzekuVar.getMessage());
            if (zza3 != null) {
                zzb2.zza("areec", zza3);
            }
        }
        zzdwy zzb3 = this.zzb.zzb(zzfilVar.zzu);
        if (zzb3 != null) {
            zzb2.zza("ancn", zzb3.zza);
            zzbye zzbyeVar3 = zzb3.zzb;
            if (zzbyeVar3 != null) {
                zzb2.zza("adapter_v", zzbyeVar3.toString());
            }
            zzbye zzbyeVar4 = zzb3.zzc;
            if (zzbyeVar4 != null) {
                zzb2.zza("adapter_sv", zzbyeVar4.toString());
            }
        }
        this.zzd.zzb(zzb2);
    }
}
