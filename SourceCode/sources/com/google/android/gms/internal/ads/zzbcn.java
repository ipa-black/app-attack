package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbcn {
    int zza;
    private final Object zzb = new Object();
    private final List zzc = new LinkedList();

    public final zzbcm zza(boolean z) {
        synchronized (this.zzb) {
            zzbcm zzbcmVar = null;
            if (this.zzc.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zze("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzc.size() >= 2) {
                int i2 = Integer.MIN_VALUE;
                int i3 = 0;
                for (zzbcm zzbcmVar2 : this.zzc) {
                    int zzb = zzbcmVar2.zzb();
                    if (zzb > i2) {
                        i = i3;
                    }
                    int i4 = zzb > i2 ? zzb : i2;
                    if (zzb > i2) {
                        zzbcmVar = zzbcmVar2;
                    }
                    i3++;
                    i2 = i4;
                }
                this.zzc.remove(i);
                return zzbcmVar;
            }
            zzbcm zzbcmVar3 = (zzbcm) this.zzc.get(0);
            if (z) {
                this.zzc.remove(0);
            } else {
                zzbcmVar3.zzi();
            }
            return zzbcmVar3;
        }
    }

    public final void zzb(zzbcm zzbcmVar) {
        synchronized (this.zzb) {
            if (this.zzc.size() >= 10) {
                int size = this.zzc.size();
                com.google.android.gms.ads.internal.util.zze.zze("Queue is full, current size = " + size);
                this.zzc.remove(0);
            }
            int i = this.zza;
            this.zza = i + 1;
            zzbcmVar.zzj(i);
            zzbcmVar.zzn();
            this.zzc.add(zzbcmVar);
        }
    }

    public final boolean zzc(zzbcm zzbcmVar) {
        synchronized (this.zzb) {
            Iterator it = this.zzc.iterator();
            while (it.hasNext()) {
                zzbcm zzbcmVar2 = (zzbcm) it.next();
                if (!com.google.android.gms.ads.internal.zzt.zzo().zzh().zzM()) {
                    if (!zzbcmVar.equals(zzbcmVar2) && zzbcmVar2.zzd().equals(zzbcmVar.zzd())) {
                        it.remove();
                        return true;
                    }
                } else if (!com.google.android.gms.ads.internal.zzt.zzo().zzh().zzN() && !zzbcmVar.equals(zzbcmVar2) && zzbcmVar2.zzf().equals(zzbcmVar.zzf())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final boolean zzd(zzbcm zzbcmVar) {
        synchronized (this.zzb) {
            return this.zzc.contains(zzbcmVar);
        }
    }
}
