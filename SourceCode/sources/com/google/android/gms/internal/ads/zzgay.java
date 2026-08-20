package com.google.android.gms.internal.ads;

import java.util.Arrays;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgay extends zzgan {
    @CheckForNull
    Object[] zzd;
    private int zze;

    public zzgay() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzgan, com.google.android.gms.internal.ads.zzgao
    public final /* bridge */ /* synthetic */ zzgao zzb(Object obj) {
        zze(obj);
        return this;
    }

    public final zzgay zzf(Iterable iterable) {
        if (this.zzd != null) {
            for (Object obj : iterable) {
                zze(obj);
            }
        } else {
            super.zzc(iterable);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgay(int i) {
        super(i);
        this.zzd = new Object[zzgaz.zzh(i)];
    }

    public final zzgaz zzg() {
        zzgaz zzr;
        boolean zzs;
        int i = this.zzb;
        if (i != 0) {
            if (i == 1) {
                Object obj = this.zza[0];
                obj.getClass();
                return new zzgcq(obj);
            }
            if (this.zzd == null || zzgaz.zzh(i) != this.zzd.length) {
                zzr = zzgaz.zzr(this.zzb, this.zza);
                this.zzb = zzr.size();
            } else {
                int i2 = this.zzb;
                Object[] objArr = this.zza;
                zzs = zzgaz.zzs(i2, objArr.length);
                if (zzs) {
                    objArr = Arrays.copyOf(objArr, i2);
                }
                int i3 = this.zze;
                Object[] objArr2 = this.zzd;
                zzr = new zzgcj(objArr, i3, objArr2, objArr2.length - 1, this.zzb);
            }
            this.zzc = true;
            this.zzd = null;
            return zzr;
        }
        return zzgcj.zza;
    }

    public final zzgay zze(Object obj) {
        obj.getClass();
        if (this.zzd != null) {
            int zzh = zzgaz.zzh(this.zzb);
            Object[] objArr = this.zzd;
            int length = objArr.length;
            if (zzh <= length) {
                objArr.getClass();
                int i = length - 1;
                int hashCode = obj.hashCode();
                int zza = zzgam.zza(hashCode);
                while (true) {
                    int i2 = zza & i;
                    Object[] objArr2 = this.zzd;
                    Object obj2 = objArr2[i2];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        zza = i2 + 1;
                    } else {
                        objArr2[i2] = obj;
                        this.zze += hashCode;
                        super.zza(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzd = null;
        super.zza(obj);
        return this;
    }
}
