package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgaz extends zzgap implements Set {
    @CheckForNull
    private transient zzgau zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i) {
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.7d < max);
            return highestOneBit;
        }
        zzfye.zzf(max < 1073741824, "collection too large");
        return 1073741824;
    }

    public static zzgay zzj(int i) {
        return new zzgay(i);
    }

    public static zzgaz zzl(Collection collection) {
        Object[] array = collection.toArray();
        return zzr(array.length, array);
    }

    public static zzgaz zzm() {
        return zzgcj.zza;
    }

    public static zzgaz zzn(Object obj) {
        return new zzgcq(obj);
    }

    @SafeVarargs
    public static zzgaz zzo(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Object[] objArr2 = new Object[12];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, 6);
        return zzr(12, objArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzs(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzgaz) && zzq() && ((zzgaz) obj).zzq() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzgcp.zzc(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzgcp.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public zzgau zzd() {
        zzgau zzgauVar = this.zza;
        if (zzgauVar == null) {
            zzgau zzi = zzi();
            this.zza = zzi;
            return zzi;
        }
        return zzgauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgap, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zze */
    public abstract zzgct iterator();

    zzgau zzi() {
        return zzgau.zzj(toArray());
    }

    boolean zzq() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzgaz zzr(int i, Object... objArr) {
        if (i != 0) {
            if (i == 1) {
                Object obj = objArr[0];
                obj.getClass();
                return new zzgcq(obj);
            }
            int zzh = zzh(i);
            Object[] objArr2 = new Object[zzh];
            int i2 = zzh - 1;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Object obj2 = objArr[i5];
                zzgcb.zza(obj2, i5);
                int hashCode = obj2.hashCode();
                int zza = zzgam.zza(hashCode);
                while (true) {
                    int i6 = zza & i2;
                    Object obj3 = objArr2[i6];
                    if (obj3 != null) {
                        if (obj3.equals(obj2)) {
                            break;
                        }
                        zza++;
                    } else {
                        objArr[i4] = obj2;
                        objArr2[i6] = obj2;
                        i3 += hashCode;
                        i4++;
                        break;
                    }
                }
            }
            Arrays.fill(objArr, i4, i, (Object) null);
            if (i4 == 1) {
                Object obj4 = objArr[0];
                obj4.getClass();
                return new zzgcq(obj4);
            } else if (zzh(i4) < zzh / 2) {
                return zzr(i4, objArr);
            } else {
                if (zzs(i4, objArr.length)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new zzgcj(objArr, i3, objArr2, i2, i4);
            }
        }
        return zzgcj.zza;
    }
}
