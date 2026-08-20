package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfkt implements zzfks {
    private final ConcurrentHashMap zza;
    private final zzfkz zzb;
    private final zzfkv zzc = new zzfkv();

    public zzfkt(zzfkz zzfkzVar) {
        this.zza = new ConcurrentHashMap(zzfkzVar.zzd);
        this.zzb = zzfkzVar;
    }

    private final void zzf() {
        Parcelable.Creator<zzfkz> creator = zzfkz.CREATOR;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfN)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.zzb.zzb);
            sb.append(" PoolCollection");
            sb.append(this.zzc.zzb());
            int i = 0;
            for (Map.Entry entry : this.zza.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((zzflc) entry.getKey()).hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < ((zzfkr) entry.getValue()).zzb(); i2++) {
                    sb.append("[O]");
                }
                for (int zzb = ((zzfkr) entry.getValue()).zzb(); zzb < this.zzb.zzd; zzb++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(((zzfkr) entry.getValue()).zzg());
                sb.append("\n");
            }
            while (i < this.zzb.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            com.google.android.gms.ads.internal.util.zze.zze(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfks
    public final zzfkz zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfks
    public final synchronized zzflb zzb(zzflc zzflcVar) {
        zzflb zzflbVar;
        zzfkr zzfkrVar = (zzfkr) this.zza.get(zzflcVar);
        if (zzfkrVar != null) {
            zzflbVar = zzfkrVar.zze();
            if (zzflbVar == null) {
                this.zzc.zze();
            }
            zzflp zzf = zzfkrVar.zzf();
            if (zzflbVar != null) {
                zzbfl zza = zzbfr.zza();
                zzbfj zza2 = zzbfk.zza();
                zza2.zzd(2);
                zzbfn zza3 = zzbfo.zza();
                zza3.zza(zzf.zza);
                zza3.zzb(zzf.zzb);
                zza2.zza(zza3);
                zza.zza(zza2);
                zzflbVar.zza.zzb().zzc().zze((zzbfr) zza.zzak());
            }
            zzf();
        } else {
            this.zzc.zzf();
            zzf();
            zzflbVar = null;
        }
        return zzflbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfks
    @Deprecated
    public final zzflc zzc(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, com.google.android.gms.ads.internal.client.zzw zzwVar) {
        return new zzfld(zzlVar, str, new zzccf(this.zzb.zza).zza().zzk, this.zzb.zzf, zzwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfks
    public final synchronized boolean zzd(zzflc zzflcVar, zzflb zzflbVar) {
        boolean zzh;
        zzfkr zzfkrVar = (zzfkr) this.zza.get(zzflcVar);
        zzflbVar.zzd = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        if (zzfkrVar == null) {
            zzfkz zzfkzVar = this.zzb;
            zzfkrVar = new zzfkr(zzfkzVar.zzd, zzfkzVar.zze * 1000);
            int size = this.zza.size();
            zzfkz zzfkzVar2 = this.zzb;
            if (size == zzfkzVar2.zzc) {
                int i = zzfkzVar2.zzg;
                int i2 = i - 1;
                zzflc zzflcVar2 = null;
                if (i == 0) {
                    throw null;
                }
                long j = Long.MAX_VALUE;
                if (i2 == 0) {
                    for (Map.Entry entry : this.zza.entrySet()) {
                        if (((zzfkr) entry.getValue()).zzc() < j) {
                            j = ((zzfkr) entry.getValue()).zzc();
                            zzflcVar2 = (zzflc) entry.getKey();
                        }
                    }
                    if (zzflcVar2 != null) {
                        this.zza.remove(zzflcVar2);
                    }
                } else if (i2 == 1) {
                    for (Map.Entry entry2 : this.zza.entrySet()) {
                        if (((zzfkr) entry2.getValue()).zzd() < j) {
                            j = ((zzfkr) entry2.getValue()).zzd();
                            zzflcVar2 = (zzflc) entry2.getKey();
                        }
                    }
                    if (zzflcVar2 != null) {
                        this.zza.remove(zzflcVar2);
                    }
                } else if (i2 == 2) {
                    int i3 = Integer.MAX_VALUE;
                    for (Map.Entry entry3 : this.zza.entrySet()) {
                        if (((zzfkr) entry3.getValue()).zza() < i3) {
                            i3 = ((zzfkr) entry3.getValue()).zza();
                            zzflcVar2 = (zzflc) entry3.getKey();
                        }
                    }
                    if (zzflcVar2 != null) {
                        this.zza.remove(zzflcVar2);
                    }
                }
                this.zzc.zzg();
            }
            this.zza.put(zzflcVar, zzfkrVar);
            this.zzc.zzd();
        }
        zzh = zzfkrVar.zzh(zzflbVar);
        this.zzc.zzc();
        zzfku zza = this.zzc.zza();
        zzflp zzf = zzfkrVar.zzf();
        if (zzflbVar != null) {
            zzbfl zza2 = zzbfr.zza();
            zzbfj zza3 = zzbfk.zza();
            zza3.zzd(2);
            zzbfp zza4 = zzbfq.zza();
            zza4.zza(zza.zza);
            zza4.zzb(zza.zzb);
            zza4.zzc(zzf.zzb);
            zza3.zzc(zza4);
            zza2.zza(zza3);
            zzflbVar.zza.zzb().zzc().zzf((zzbfr) zza2.zzak());
        }
        zzf();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzfks
    public final synchronized boolean zze(zzflc zzflcVar) {
        zzfkr zzfkrVar = (zzfkr) this.zza.get(zzflcVar);
        if (zzfkrVar != null) {
            return zzfkrVar.zzb() < this.zzb.zzd;
        }
        return true;
    }
}
