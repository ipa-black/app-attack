package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhai {
    private static final Class zza;
    private static final zzhax zzb;
    private static final zzhax zzc;
    private static final zzhax zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzab(false);
        zzc = zzab(true);
        zzd = new zzhaz();
    }

    public static zzhax zzA() {
        return zzc;
    }

    public static zzhax zzB() {
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzC(Object obj, int i, List list, zzgyh zzgyhVar, Object obj2, zzhax zzhaxVar) {
        if (zzgyhVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = ((Integer) list.get(i3)).intValue();
                if (zzgyhVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    obj2 = zzD(obj, i, intValue, obj2, zzhaxVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!zzgyhVar.zza(intValue2)) {
                    obj2 = zzD(obj, i, intValue2, obj2, zzhaxVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzD(Object obj, int i, int i2, Object obj2, zzhax zzhaxVar) {
        if (obj2 == null) {
            obj2 = zzhaxVar.zzc(obj);
        }
        zzhaxVar.zzl(obj2, i, i2);
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzE(zzgxq zzgxqVar, Object obj, Object obj2) {
        zzgxqVar.zza(obj2);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzF(zzhax zzhaxVar, Object obj, Object obj2) {
        zzhaxVar.zzo(obj, zzhaxVar.zze(zzhaxVar.zzd(obj), zzhaxVar.zzd(obj2)));
    }

    public static void zzG(Class cls) {
        Class cls2;
        if (!zzgyd.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzH(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzI(zzgzi zzgziVar, Object obj, Object obj2, long j) {
        zzhbh.zzv(obj, j, zzgzi.zzc(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j)));
    }

    public static void zzJ(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzc(i, list, z);
    }

    public static void zzK(int i, List list, zzgxl zzgxlVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zze(i, list);
    }

    public static void zzL(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzg(i, list, z);
    }

    public static void zzM(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzj(i, list, z);
    }

    public static void zzN(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzl(i, list, z);
    }

    public static void zzO(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzn(i, list, z);
    }

    public static void zzP(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzp(i, list, z);
    }

    public static void zzQ(int i, List list, zzgxl zzgxlVar, zzhag zzhagVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgxlVar.zzq(i, list.get(i2), zzhagVar);
        }
    }

    public static void zzR(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzs(i, list, z);
    }

    public static void zzS(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzu(i, list, z);
    }

    public static void zzT(int i, List list, zzgxl zzgxlVar, zzhag zzhagVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgxlVar.zzv(i, list.get(i2), zzhagVar);
        }
    }

    public static void zzU(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzx(i, list, z);
    }

    public static void zzV(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzz(i, list, z);
    }

    public static void zzW(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzB(i, list, z);
    }

    public static void zzX(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzD(i, list, z);
    }

    public static void zzY(int i, List list, zzgxl zzgxlVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzG(i, list);
    }

    public static void zzZ(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzI(i, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgxk.zzE(i << 3) + 1);
    }

    public static void zzaa(int i, List list, zzgxl zzgxlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgxlVar.zzK(i, list, z);
    }

    private static zzhax zzab(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzhax) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(List list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzD = size * zzgxk.zzD(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzD += zzgxk.zzw((zzgwv) list.get(i2));
        }
        return zzD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzgxk.zzD(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgye) {
            zzgye zzgyeVar = (zzgye) list;
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzy(zzgyeVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzy(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgxk.zzE(i << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgxk.zzE(i << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i, List list, zzhag zzhagVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzgxk.zzx(i, (zzgzn) list.get(i3), zzhagVar);
            }
            return i2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzgxk.zzD(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgye) {
            zzgye zzgyeVar = (zzgye) list;
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzy(zzgyeVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzy(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzn(list) + (list.size() * zzgxk.zzD(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzn(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzc) {
            zzgzc zzgzcVar = (zzgzc) list;
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzF(zzgzcVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzF(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(int i, Object obj, zzhag zzhagVar) {
        if (obj instanceof zzgyt) {
            int zzE = zzgxk.zzE(i << 3);
            int zza2 = ((zzgyt) obj).zza();
            return zzE + zzgxk.zzE(zza2) + zza2;
        }
        return zzgxk.zzE(i << 3) + zzgxk.zzA((zzgzn) obj, zzhagVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(int i, List list, zzhag zzhagVar) {
        int zzA;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzD = zzgxk.zzD(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzgyt) {
                zzA = zzgxk.zzz((zzgyt) obj);
            } else {
                zzA = zzgxk.zzA((zzgzn) obj, zzhagVar);
            }
            zzD += zzA;
        }
        return zzD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzr(list) + (size * zzgxk.zzD(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgye) {
            zzgye zzgyeVar = (zzgye) list;
            i = 0;
            while (i2 < size) {
                int zze = zzgyeVar.zze(i2);
                i += zzgxk.zzE((zze >> 31) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = ((Integer) list.get(i2)).intValue();
                i += zzgxk.zzE((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzt(list) + (size * zzgxk.zzD(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzc) {
            zzgzc zzgzcVar = (zzgzc) list;
            i = 0;
            while (i2 < size) {
                long zze = zzgzcVar.zze(i2);
                i += zzgxk.zzF((zze >> 63) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = ((Long) list.get(i2)).longValue();
                i += zzgxk.zzF((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(int i, List list) {
        int zzC;
        int zzC2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int zzD = zzgxk.zzD(i) * size;
        if (list instanceof zzgyv) {
            zzgyv zzgyvVar = (zzgyv) list;
            while (i2 < size) {
                Object zzf = zzgyvVar.zzf(i2);
                if (zzf instanceof zzgwv) {
                    zzC2 = zzgxk.zzw((zzgwv) zzf);
                } else {
                    zzC2 = zzgxk.zzC((String) zzf);
                }
                zzD += zzC2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzgwv) {
                    zzC = zzgxk.zzw((zzgwv) obj);
                } else {
                    zzC = zzgxk.zzC((String) obj);
                }
                zzD += zzC;
                i2++;
            }
        }
        return zzD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzv(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzgxk.zzD(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzw(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgye) {
            zzgye zzgyeVar = (zzgye) list;
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzE(zzgyeVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzE(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzgxk.zzD(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzy(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzc) {
            zzgzc zzgzcVar = (zzgzc) list;
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzF(zzgzcVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgxk.zzF(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static zzhax zzz() {
        return zzb;
    }
}
