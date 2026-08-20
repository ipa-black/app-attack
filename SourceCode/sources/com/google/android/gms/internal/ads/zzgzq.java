package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgzq<T> implements zzhag<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhbh.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgzn zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzgzb zzn;
    private final zzhax zzo;
    private final zzgxq zzp;
    private final zzgzs zzq;
    private final zzgzi zzr;

    private zzgzq(int[] iArr, Object[] objArr, int i, int i2, zzgzn zzgznVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzgzs zzgzsVar, zzgzb zzgzbVar, zzhax zzhaxVar, zzgxq zzgxqVar, zzgzi zzgziVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzgznVar instanceof zzgyd;
        this.zzj = z;
        boolean z3 = false;
        if (zzgxqVar != null && zzgxqVar.zzh(zzgznVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzk = iArr2;
        this.zzl = i3;
        this.zzm = i4;
        this.zzq = zzgzsVar;
        this.zzn = zzgzbVar;
        this.zzo = zzhaxVar;
        this.zzp = zzgxqVar;
        this.zzg = zzgznVar;
        this.zzr = zzgziVar;
    }

    private final int zzA(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzB(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzC(int i) {
        return this.zzc[i + 1];
    }

    private static long zzD(Object obj, long j) {
        return ((Long) zzhbh.zzh(obj, j)).longValue();
    }

    private final zzgyh zzE(int i) {
        int i2 = i / 3;
        return (zzgyh) this.zzd[i2 + i2 + 1];
    }

    private final zzhag zzF(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzhag zzhagVar = (zzhag) this.zzd[i3];
        if (zzhagVar != null) {
            return zzhagVar;
        }
        zzhag zzb2 = zzgzv.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzG(Object obj, int i, Object obj2, zzhax zzhaxVar, Object obj3) {
        int i2 = this.zzc[i];
        Object zzh = zzhbh.zzh(obj, zzC(i) & 1048575);
        if (zzh == null || zzE(i) == null) {
            return obj2;
        }
        zzgzh zzgzhVar = (zzgzh) zzh;
        zzgzg zzgzgVar = (zzgzg) zzH(i);
        throw null;
    }

    private final Object zzH(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzI(Object obj, int i) {
        zzhag zzF = zzF(i);
        long zzC = zzC(i) & 1048575;
        if (!zzV(obj, i)) {
            return zzF.zze();
        }
        Object object = zzb.getObject(obj, zzC);
        if (zzY(object)) {
            return object;
        }
        Object zze = zzF.zze();
        if (object != null) {
            zzF.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzJ(Object obj, int i, int i2) {
        zzhag zzF = zzF(i2);
        if (!zzZ(obj, i, i2)) {
            return zzF.zze();
        }
        Object object = zzb.getObject(obj, zzC(i2) & 1048575);
        if (zzY(object)) {
            return object;
        }
        Object zze = zzF.zze();
        if (object != null) {
            zzF.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzK(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void zzL(Object obj) {
        if (!zzY(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(String.valueOf(obj))));
        }
    }

    private final void zzM(Object obj, Object obj2, int i) {
        if (zzV(obj2, i)) {
            long zzC = zzC(i) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(obj2, zzC);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzhag zzF = zzF(i);
            if (!zzV(obj, i)) {
                if (!zzY(object)) {
                    unsafe.putObject(obj, zzC, object);
                } else {
                    Object zze = zzF.zze();
                    zzF.zzg(zze, object);
                    unsafe.putObject(obj, zzC, zze);
                }
                zzP(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzC);
            if (!zzY(object2)) {
                Object zze2 = zzF.zze();
                zzF.zzg(zze2, object2);
                unsafe.putObject(obj, zzC, zze2);
                object2 = zze2;
            }
            zzF.zzg(object2, object);
        }
    }

    private final void zzN(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzZ(obj2, i2, i)) {
            long zzC = zzC(i) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(obj2, zzC);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzhag zzF = zzF(i);
            if (!zzZ(obj, i2, i)) {
                if (!zzY(object)) {
                    unsafe.putObject(obj, zzC, object);
                } else {
                    Object zze = zzF.zze();
                    zzF.zzg(zze, object);
                    unsafe.putObject(obj, zzC, zze);
                }
                zzQ(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzC);
            if (!zzY(object2)) {
                Object zze2 = zzF.zze();
                zzF.zzg(zze2, object2);
                unsafe.putObject(obj, zzC, zze2);
                object2 = zze2;
            }
            zzF.zzg(object2, object);
        }
    }

    private final void zzO(Object obj, int i, zzgzy zzgzyVar) throws IOException {
        if (zzU(i)) {
            zzhbh.zzv(obj, i & 1048575, zzgzyVar.zzs());
        } else if (!this.zzi) {
            zzhbh.zzv(obj, i & 1048575, zzgzyVar.zzp());
        } else {
            zzhbh.zzv(obj, i & 1048575, zzgzyVar.zzr());
        }
    }

    private final void zzP(Object obj, int i) {
        int zzz = zzz(i);
        long j = 1048575 & zzz;
        if (j == 1048575) {
            return;
        }
        zzhbh.zzt(obj, j, (1 << (zzz >>> 20)) | zzhbh.zzd(obj, j));
    }

    private final void zzQ(Object obj, int i, int i2) {
        zzhbh.zzt(obj, zzz(i2) & 1048575, i);
    }

    private final void zzR(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzC(i) & 1048575, obj2);
        zzP(obj, i);
    }

    private final void zzS(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzC(i2) & 1048575, obj2);
        zzQ(obj, i, i2);
    }

    private final boolean zzT(Object obj, Object obj2, int i) {
        return zzV(obj, i) == zzV(obj2, i);
    }

    private static boolean zzU(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzV(Object obj, int i) {
        int zzz = zzz(i);
        long j = zzz & 1048575;
        if (j != 1048575) {
            return (zzhbh.zzd(obj, j) & (1 << (zzz >>> 20))) != 0;
        }
        int zzC = zzC(i);
        long j2 = zzC & 1048575;
        switch (zzB(zzC)) {
            case 0:
                return Double.doubleToRawLongBits(zzhbh.zzb(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhbh.zzc(obj, j2)) != 0;
            case 2:
                return zzhbh.zzf(obj, j2) != 0;
            case 3:
                return zzhbh.zzf(obj, j2) != 0;
            case 4:
                return zzhbh.zzd(obj, j2) != 0;
            case 5:
                return zzhbh.zzf(obj, j2) != 0;
            case 6:
                return zzhbh.zzd(obj, j2) != 0;
            case 7:
                return zzhbh.zzz(obj, j2);
            case 8:
                Object zzh = zzhbh.zzh(obj, j2);
                if (zzh instanceof String) {
                    return !((String) zzh).isEmpty();
                } else if (zzh instanceof zzgwv) {
                    return !zzgwv.zzb.equals(zzh);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return zzhbh.zzh(obj, j2) != null;
            case 10:
                return !zzgwv.zzb.equals(zzhbh.zzh(obj, j2));
            case 11:
                return zzhbh.zzd(obj, j2) != 0;
            case 12:
                return zzhbh.zzd(obj, j2) != 0;
            case 13:
                return zzhbh.zzd(obj, j2) != 0;
            case 14:
                return zzhbh.zzf(obj, j2) != 0;
            case 15:
                return zzhbh.zzd(obj, j2) != 0;
            case 16:
                return zzhbh.zzf(obj, j2) != 0;
            case 17:
                return zzhbh.zzh(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzW(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzV(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzX(Object obj, int i, zzhag zzhagVar) {
        return zzhagVar.zzk(zzhbh.zzh(obj, i & 1048575));
    }

    private static boolean zzY(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgyd) {
            return ((zzgyd) obj).zzaW();
        }
        return true;
    }

    private final boolean zzZ(Object obj, int i, int i2) {
        return zzhbh.zzd(obj, (long) (zzz(i2) & 1048575)) == i;
    }

    private static boolean zzaa(Object obj, long j) {
        return ((Boolean) zzhbh.zzh(obj, j)).booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void zzab(Object obj, zzgxl zzgxlVar) throws IOException {
        int i;
        boolean z;
        if (this.zzh) {
            this.zzp.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int zzC = zzC(i4);
            int[] iArr = this.zzc;
            int i6 = iArr[i4];
            int zzB = zzB(zzC);
            if (zzB <= 17) {
                int i7 = iArr[i4 + 2];
                int i8 = i7 & i2;
                if (i8 != i3) {
                    i5 = unsafe.getInt(obj, i8);
                    i3 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = zzC & i2;
            switch (zzB) {
                case 0:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzf(i6, zzhbh.zzb(obj, j));
                        break;
                    }
                case 1:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzo(i6, zzhbh.zzc(obj, j));
                        break;
                    }
                case 2:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzt(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 3:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzJ(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 4:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzr(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 5:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzm(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 6:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzk(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 7:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzb(i6, zzhbh.zzz(obj, j));
                        break;
                    }
                case 8:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzad(i6, unsafe.getObject(obj, j), zzgxlVar);
                        break;
                    }
                case 9:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzv(i6, unsafe.getObject(obj, j), zzF(i4));
                        break;
                    }
                case 10:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzd(i6, (zzgwv) unsafe.getObject(obj, j));
                        break;
                    }
                case 11:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzH(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 12:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzi(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 13:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzw(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 14:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzy(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 15:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzA(i6, unsafe.getInt(obj, j));
                        break;
                    }
                case 16:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzC(i6, unsafe.getLong(obj, j));
                        break;
                    }
                case 17:
                    if ((i5 & i) == 0) {
                        break;
                    } else {
                        zzgxlVar.zzq(i6, unsafe.getObject(obj, j), zzF(i4));
                        break;
                    }
                case 18:
                    zzhai.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 19:
                    zzhai.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 20:
                    zzhai.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 21:
                    zzhai.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 22:
                    zzhai.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 23:
                    zzhai.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 24:
                    zzhai.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 25:
                    zzhai.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 26:
                    zzhai.zzY(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar);
                    break;
                case 27:
                    zzhai.zzT(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, zzF(i4));
                    break;
                case 28:
                    zzhai.zzK(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar);
                    break;
                case 29:
                    z = false;
                    zzhai.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 30:
                    z = false;
                    zzhai.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 31:
                    z = false;
                    zzhai.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 32:
                    z = false;
                    zzhai.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 33:
                    z = false;
                    zzhai.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 34:
                    z = false;
                    zzhai.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, false);
                    break;
                case 35:
                    zzhai.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 36:
                    zzhai.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 37:
                    zzhai.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 38:
                    zzhai.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 39:
                    zzhai.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 40:
                    zzhai.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 41:
                    zzhai.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 42:
                    zzhai.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 43:
                    zzhai.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 44:
                    zzhai.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 45:
                    zzhai.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 46:
                    zzhai.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 47:
                    zzhai.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 48:
                    zzhai.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, true);
                    break;
                case 49:
                    zzhai.zzQ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzgxlVar, zzF(i4));
                    break;
                case 50:
                    zzac(zzgxlVar, i6, unsafe.getObject(obj, j), i4);
                    break;
                case 51:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzf(i6, zzo(obj, j));
                    }
                    break;
                case 52:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzo(i6, zzp(obj, j));
                    }
                    break;
                case 53:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzt(i6, zzD(obj, j));
                    }
                    break;
                case 54:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzJ(i6, zzD(obj, j));
                    }
                    break;
                case 55:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzr(i6, zzs(obj, j));
                    }
                    break;
                case 56:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzm(i6, zzD(obj, j));
                    }
                    break;
                case 57:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzk(i6, zzs(obj, j));
                    }
                    break;
                case 58:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzb(i6, zzaa(obj, j));
                    }
                    break;
                case 59:
                    if (zzZ(obj, i6, i4)) {
                        zzad(i6, unsafe.getObject(obj, j), zzgxlVar);
                    }
                    break;
                case 60:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzv(i6, unsafe.getObject(obj, j), zzF(i4));
                    }
                    break;
                case 61:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzd(i6, (zzgwv) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzH(i6, zzs(obj, j));
                    }
                    break;
                case 63:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzi(i6, zzs(obj, j));
                    }
                    break;
                case 64:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzw(i6, zzs(obj, j));
                    }
                    break;
                case 65:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzy(i6, zzD(obj, j));
                    }
                    break;
                case 66:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzA(i6, zzs(obj, j));
                    }
                    break;
                case 67:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzC(i6, zzD(obj, j));
                    }
                    break;
                case 68:
                    if (zzZ(obj, i6, i4)) {
                        zzgxlVar.zzq(i6, unsafe.getObject(obj, j), zzF(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
        }
        zzhax zzhaxVar = this.zzo;
        zzhaxVar.zzr(zzhaxVar.zzd(obj), zzgxlVar);
    }

    private final void zzac(zzgxl zzgxlVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzgzg zzgzgVar = (zzgzg) zzH(i2);
        throw null;
    }

    private static final void zzad(int i, Object obj, zzgxl zzgxlVar) throws IOException {
        if (obj instanceof String) {
            zzgxlVar.zzF(i, (String) obj);
        } else {
            zzgxlVar.zzd(i, (zzgwv) obj);
        }
    }

    static zzhay zzd(Object obj) {
        zzgyd zzgydVar = (zzgyd) obj;
        zzhay zzhayVar = zzgydVar.zzc;
        if (zzhayVar == zzhay.zzc()) {
            zzhay zzf = zzhay.zzf();
            zzgydVar.zzc = zzf;
            return zzf;
        }
        return zzhayVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgzq zzl(Class cls, zzgzk zzgzkVar, zzgzs zzgzsVar, zzgzb zzgzbVar, zzhax zzhaxVar, zzgxq zzgxqVar, zzgzi zzgziVar) {
        if (zzgzkVar instanceof zzgzx) {
            return zzm((zzgzx) zzgzkVar, zzgzsVar, zzgzbVar, zzhaxVar, zzgxqVar, zzgziVar);
        }
        zzhau zzhauVar = (zzhau) zzgzkVar;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0389  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.google.android.gms.internal.ads.zzgzq zzm(com.google.android.gms.internal.ads.zzgzx r34, com.google.android.gms.internal.ads.zzgzs r35, com.google.android.gms.internal.ads.zzgzb r36, com.google.android.gms.internal.ads.zzhax r37, com.google.android.gms.internal.ads.zzgxq r38, com.google.android.gms.internal.ads.zzgzi r39) {
        /*
            Method dump skipped, instructions count: 1020
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzq.zzm(com.google.android.gms.internal.ads.zzgzx, com.google.android.gms.internal.ads.zzgzs, com.google.android.gms.internal.ads.zzgzb, com.google.android.gms.internal.ads.zzhax, com.google.android.gms.internal.ads.zzgxq, com.google.android.gms.internal.ads.zzgzi):com.google.android.gms.internal.ads.zzgzq");
    }

    private static double zzo(Object obj, long j) {
        return ((Double) zzhbh.zzh(obj, j)).doubleValue();
    }

    private static float zzp(Object obj, long j) {
        return ((Float) zzhbh.zzh(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zzq(Object obj) {
        int i;
        int zzE;
        int zzE2;
        int zzE3;
        int zzF;
        int zzE4;
        int zzy;
        int zzE5;
        int zzE6;
        int zzd;
        int zzE7;
        int i2;
        int zzu;
        boolean z;
        int zzd2;
        int zzi;
        int zzD;
        int zzE8;
        int i3;
        int zzE9;
        int zzE10;
        int zzE11;
        int zzF2;
        int zzE12;
        int zzd3;
        int zzE13;
        int i4;
        Unsafe unsafe = zzb;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < this.zzc.length) {
            int zzC = zzC(i7);
            int[] iArr = this.zzc;
            int i10 = iArr[i7];
            int zzB = zzB(zzC);
            if (zzB <= 17) {
                int i11 = iArr[i7 + 2];
                int i12 = i11 & i5;
                i = 1 << (i11 >>> 20);
                if (i12 != i6) {
                    i9 = unsafe.getInt(obj, i12);
                    i6 = i12;
                }
            } else {
                i = 0;
            }
            long j = zzC & i5;
            switch (zzB) {
                case 0:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE = zzgxk.zzE(i10 << 3);
                        zzE5 = zzE + 8;
                        i8 += zzE5;
                        break;
                    }
                case 1:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE2 = zzgxk.zzE(i10 << 3);
                        zzE5 = zzE2 + 4;
                        i8 += zzE5;
                        break;
                    }
                case 2:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(obj, j);
                        zzE3 = zzgxk.zzE(i10 << 3);
                        zzF = zzgxk.zzF(j2);
                        i8 += zzE3 + zzF;
                        break;
                    }
                case 3:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(obj, j);
                        zzE3 = zzgxk.zzE(i10 << 3);
                        zzF = zzgxk.zzF(j3);
                        i8 += zzE3 + zzF;
                        break;
                    }
                case 4:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i13 = unsafe.getInt(obj, j);
                        zzE4 = zzgxk.zzE(i10 << 3);
                        zzy = zzgxk.zzy(i13);
                        i2 = zzE4 + zzy;
                        i8 += i2;
                        break;
                    }
                case 5:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE = zzgxk.zzE(i10 << 3);
                        zzE5 = zzE + 8;
                        i8 += zzE5;
                        break;
                    }
                case 6:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE2 = zzgxk.zzE(i10 << 3);
                        zzE5 = zzE2 + 4;
                        i8 += zzE5;
                        break;
                    }
                case 7:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE5 = zzgxk.zzE(i10 << 3) + 1;
                        i8 += zzE5;
                        break;
                    }
                case 8:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzgwv) {
                            zzE6 = zzgxk.zzE(i10 << 3);
                            zzd = ((zzgwv) object).zzd();
                            zzE7 = zzgxk.zzE(zzd);
                            i2 = zzE6 + zzE7 + zzd;
                            i8 += i2;
                            break;
                        } else {
                            zzE4 = zzgxk.zzE(i10 << 3);
                            zzy = zzgxk.zzC((String) object);
                            i2 = zzE4 + zzy;
                            i8 += i2;
                        }
                    }
                case 9:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE5 = zzhai.zzo(i10, unsafe.getObject(obj, j), zzF(i7));
                        i8 += zzE5;
                        break;
                    }
                case 10:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE6 = zzgxk.zzE(i10 << 3);
                        zzd = ((zzgwv) unsafe.getObject(obj, j)).zzd();
                        zzE7 = zzgxk.zzE(zzd);
                        i2 = zzE6 + zzE7 + zzd;
                        i8 += i2;
                        break;
                    }
                case 11:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i14 = unsafe.getInt(obj, j);
                        zzE4 = zzgxk.zzE(i10 << 3);
                        zzy = zzgxk.zzE(i14);
                        i2 = zzE4 + zzy;
                        i8 += i2;
                        break;
                    }
                case 12:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i15 = unsafe.getInt(obj, j);
                        zzE4 = zzgxk.zzE(i10 << 3);
                        zzy = zzgxk.zzy(i15);
                        i2 = zzE4 + zzy;
                        i8 += i2;
                        break;
                    }
                case 13:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE2 = zzgxk.zzE(i10 << 3);
                        zzE5 = zzE2 + 4;
                        i8 += zzE5;
                        break;
                    }
                case 14:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE = zzgxk.zzE(i10 << 3);
                        zzE5 = zzE + 8;
                        i8 += zzE5;
                        break;
                    }
                case 15:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        int i16 = unsafe.getInt(obj, j);
                        zzE4 = zzgxk.zzE(i10 << 3);
                        zzy = zzgxk.zzE((i16 >> 31) ^ (i16 + i16));
                        i2 = zzE4 + zzy;
                        i8 += i2;
                        break;
                    }
                case 16:
                    if ((i & i9) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(obj, j);
                        i8 += zzgxk.zzE(i10 << 3) + zzgxk.zzF((j4 >> 63) ^ (j4 + j4));
                        break;
                    }
                case 17:
                    if ((i9 & i) == 0) {
                        break;
                    } else {
                        zzE5 = zzgxk.zzx(i10, (zzgzn) unsafe.getObject(obj, j), zzF(i7));
                        i8 += zzE5;
                        break;
                    }
                case 18:
                    zzE5 = zzhai.zzh(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 19:
                    zzE5 = zzhai.zzf(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 20:
                    zzE5 = zzhai.zzm(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 21:
                    zzE5 = zzhai.zzx(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 22:
                    zzE5 = zzhai.zzk(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 23:
                    zzE5 = zzhai.zzh(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 24:
                    zzE5 = zzhai.zzf(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 25:
                    zzE5 = zzhai.zza(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzE5;
                    break;
                case 26:
                    zzu = zzhai.zzu(i10, (List) unsafe.getObject(obj, j));
                    i8 += zzu;
                    break;
                case 27:
                    zzu = zzhai.zzp(i10, (List) unsafe.getObject(obj, j), zzF(i7));
                    i8 += zzu;
                    break;
                case 28:
                    zzu = zzhai.zzc(i10, (List) unsafe.getObject(obj, j));
                    i8 += zzu;
                    break;
                case 29:
                    zzu = zzhai.zzv(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzu;
                    break;
                case 30:
                    z = false;
                    zzd2 = zzhai.zzd(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 31:
                    z = false;
                    zzd2 = zzhai.zzf(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 32:
                    z = false;
                    zzd2 = zzhai.zzh(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 33:
                    z = false;
                    zzd2 = zzhai.zzq(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 34:
                    z = false;
                    zzd2 = zzhai.zzs(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += zzd2;
                    break;
                case 35:
                    zzi = zzhai.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 36:
                    zzi = zzhai.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 37:
                    zzi = zzhai.zzn((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 38:
                    zzi = zzhai.zzy((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 39:
                    zzi = zzhai.zzl((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 40:
                    zzi = zzhai.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 41:
                    zzi = zzhai.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 42:
                    zzi = zzhai.zzb((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 43:
                    zzi = zzhai.zzw((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 44:
                    zzi = zzhai.zze((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 45:
                    zzi = zzhai.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 46:
                    zzi = zzhai.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 47:
                    zzi = zzhai.zzr((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 48:
                    zzi = zzhai.zzt((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzD = zzgxk.zzD(i10);
                        zzE8 = zzgxk.zzE(zzi);
                        i3 = zzD + zzE8;
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 49:
                    zzu = zzhai.zzj(i10, (List) unsafe.getObject(obj, j), zzF(i7));
                    i8 += zzu;
                    break;
                case 50:
                    zzgzi.zza(i10, unsafe.getObject(obj, j), zzH(i7));
                    break;
                case 51:
                    if (zzZ(obj, i10, i7)) {
                        zzE9 = zzgxk.zzE(i10 << 3);
                        zzu = zzE9 + 8;
                        i8 += zzu;
                    }
                    break;
                case 52:
                    if (zzZ(obj, i10, i7)) {
                        zzE10 = zzgxk.zzE(i10 << 3);
                        zzu = zzE10 + 4;
                        i8 += zzu;
                    }
                    break;
                case 53:
                    if (zzZ(obj, i10, i7)) {
                        long zzD2 = zzD(obj, j);
                        zzE11 = zzgxk.zzE(i10 << 3);
                        zzF2 = zzgxk.zzF(zzD2);
                        i8 += zzE11 + zzF2;
                    }
                    break;
                case 54:
                    if (zzZ(obj, i10, i7)) {
                        long zzD3 = zzD(obj, j);
                        zzE11 = zzgxk.zzE(i10 << 3);
                        zzF2 = zzgxk.zzF(zzD3);
                        i8 += zzE11 + zzF2;
                    }
                    break;
                case 55:
                    if (zzZ(obj, i10, i7)) {
                        int zzs = zzs(obj, j);
                        i3 = zzgxk.zzE(i10 << 3);
                        zzi = zzgxk.zzy(zzs);
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 56:
                    if (zzZ(obj, i10, i7)) {
                        zzE9 = zzgxk.zzE(i10 << 3);
                        zzu = zzE9 + 8;
                        i8 += zzu;
                    }
                    break;
                case 57:
                    if (zzZ(obj, i10, i7)) {
                        zzE10 = zzgxk.zzE(i10 << 3);
                        zzu = zzE10 + 4;
                        i8 += zzu;
                    }
                    break;
                case 58:
                    if (zzZ(obj, i10, i7)) {
                        zzu = zzgxk.zzE(i10 << 3) + 1;
                        i8 += zzu;
                    }
                    break;
                case 59:
                    if (zzZ(obj, i10, i7)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzgwv) {
                            zzE12 = zzgxk.zzE(i10 << 3);
                            zzd3 = ((zzgwv) object2).zzd();
                            zzE13 = zzgxk.zzE(zzd3);
                            i4 = zzE12 + zzE13 + zzd3;
                            i8 += i4;
                        } else {
                            i3 = zzgxk.zzE(i10 << 3);
                            zzi = zzgxk.zzC((String) object2);
                            i4 = i3 + zzi;
                            i8 += i4;
                        }
                    }
                    break;
                case 60:
                    if (zzZ(obj, i10, i7)) {
                        zzu = zzhai.zzo(i10, unsafe.getObject(obj, j), zzF(i7));
                        i8 += zzu;
                    }
                    break;
                case 61:
                    if (zzZ(obj, i10, i7)) {
                        zzE12 = zzgxk.zzE(i10 << 3);
                        zzd3 = ((zzgwv) unsafe.getObject(obj, j)).zzd();
                        zzE13 = zzgxk.zzE(zzd3);
                        i4 = zzE12 + zzE13 + zzd3;
                        i8 += i4;
                    }
                    break;
                case 62:
                    if (zzZ(obj, i10, i7)) {
                        int zzs2 = zzs(obj, j);
                        i3 = zzgxk.zzE(i10 << 3);
                        zzi = zzgxk.zzE(zzs2);
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 63:
                    if (zzZ(obj, i10, i7)) {
                        int zzs3 = zzs(obj, j);
                        i3 = zzgxk.zzE(i10 << 3);
                        zzi = zzgxk.zzy(zzs3);
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 64:
                    if (zzZ(obj, i10, i7)) {
                        zzE10 = zzgxk.zzE(i10 << 3);
                        zzu = zzE10 + 4;
                        i8 += zzu;
                    }
                    break;
                case 65:
                    if (zzZ(obj, i10, i7)) {
                        zzE9 = zzgxk.zzE(i10 << 3);
                        zzu = zzE9 + 8;
                        i8 += zzu;
                    }
                    break;
                case 66:
                    if (zzZ(obj, i10, i7)) {
                        int zzs4 = zzs(obj, j);
                        i3 = zzgxk.zzE(i10 << 3);
                        zzi = zzgxk.zzE((zzs4 >> 31) ^ (zzs4 + zzs4));
                        i4 = i3 + zzi;
                        i8 += i4;
                    }
                    break;
                case 67:
                    if (zzZ(obj, i10, i7)) {
                        long zzD4 = zzD(obj, j);
                        i8 += zzgxk.zzE(i10 << 3) + zzgxk.zzF((zzD4 >> 63) ^ (zzD4 + zzD4));
                    }
                    break;
                case 68:
                    if (zzZ(obj, i10, i7)) {
                        zzu = zzgxk.zzx(i10, (zzgzn) unsafe.getObject(obj, j), zzF(i7));
                        i8 += zzu;
                    }
                    break;
            }
            i7 += 3;
            i5 = 1048575;
        }
        zzhax zzhaxVar = this.zzo;
        int zza2 = i8 + zzhaxVar.zza(zzhaxVar.zzd(obj));
        if (this.zzh) {
            this.zzp.zza(obj);
            throw null;
        }
        return zza2;
    }

    private final int zzr(Object obj) {
        int zzE;
        int zzE2;
        int zzE3;
        int zzF;
        int zzE4;
        int zzy;
        int zzE5;
        int zzE6;
        int zzd;
        int zzE7;
        int zzo;
        int zzD;
        int zzE8;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int zzC = zzC(i3);
            int zzB = zzB(zzC);
            int i4 = this.zzc[i3];
            long j = zzC & 1048575;
            if (zzB >= zzgxv.DOUBLE_LIST_PACKED.zza() && zzB <= zzgxv.SINT64_LIST_PACKED.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (zzB) {
                case 0:
                    if (zzV(obj, i3)) {
                        zzE = zzgxk.zzE(i4 << 3);
                        zzo = zzE + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzV(obj, i3)) {
                        zzE2 = zzgxk.zzE(i4 << 3);
                        zzo = zzE2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzV(obj, i3)) {
                        long zzf = zzhbh.zzf(obj, j);
                        zzE3 = zzgxk.zzE(i4 << 3);
                        zzF = zzgxk.zzF(zzf);
                        i2 += zzE3 + zzF;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzV(obj, i3)) {
                        long zzf2 = zzhbh.zzf(obj, j);
                        zzE3 = zzgxk.zzE(i4 << 3);
                        zzF = zzgxk.zzF(zzf2);
                        i2 += zzE3 + zzF;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzV(obj, i3)) {
                        int zzd2 = zzhbh.zzd(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzy(zzd2);
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzV(obj, i3)) {
                        zzE = zzgxk.zzE(i4 << 3);
                        zzo = zzE + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzV(obj, i3)) {
                        zzE2 = zzgxk.zzE(i4 << 3);
                        zzo = zzE2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzV(obj, i3)) {
                        zzE5 = zzgxk.zzE(i4 << 3);
                        zzo = zzE5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzV(obj, i3)) {
                        break;
                    } else {
                        Object zzh = zzhbh.zzh(obj, j);
                        if (zzh instanceof zzgwv) {
                            zzE6 = zzgxk.zzE(i4 << 3);
                            zzd = ((zzgwv) zzh).zzd();
                            zzE7 = zzgxk.zzE(zzd);
                            i = zzE6 + zzE7 + zzd;
                            i2 += i;
                            break;
                        } else {
                            zzE4 = zzgxk.zzE(i4 << 3);
                            zzy = zzgxk.zzC((String) zzh);
                            i = zzE4 + zzy;
                            i2 += i;
                        }
                    }
                case 9:
                    if (zzV(obj, i3)) {
                        zzo = zzhai.zzo(i4, zzhbh.zzh(obj, j), zzF(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzV(obj, i3)) {
                        zzE6 = zzgxk.zzE(i4 << 3);
                        zzd = ((zzgwv) zzhbh.zzh(obj, j)).zzd();
                        zzE7 = zzgxk.zzE(zzd);
                        i = zzE6 + zzE7 + zzd;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzV(obj, i3)) {
                        int zzd3 = zzhbh.zzd(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzE(zzd3);
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzV(obj, i3)) {
                        int zzd4 = zzhbh.zzd(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzy(zzd4);
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzV(obj, i3)) {
                        zzE2 = zzgxk.zzE(i4 << 3);
                        zzo = zzE2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzV(obj, i3)) {
                        zzE = zzgxk.zzE(i4 << 3);
                        zzo = zzE + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzV(obj, i3)) {
                        int zzd5 = zzhbh.zzd(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzE((zzd5 >> 31) ^ (zzd5 + zzd5));
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzV(obj, i3)) {
                        long zzf3 = zzhbh.zzf(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzF((zzf3 >> 63) ^ (zzf3 + zzf3));
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzV(obj, i3)) {
                        zzo = zzgxk.zzx(i4, (zzgzn) zzhbh.zzh(obj, j), zzF(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzhai.zzh(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 19:
                    zzo = zzhai.zzf(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 20:
                    zzo = zzhai.zzm(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 21:
                    zzo = zzhai.zzx(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 22:
                    zzo = zzhai.zzk(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 23:
                    zzo = zzhai.zzh(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 24:
                    zzo = zzhai.zzf(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 25:
                    zzo = zzhai.zza(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 26:
                    zzo = zzhai.zzu(i4, (List) zzhbh.zzh(obj, j));
                    i2 += zzo;
                    break;
                case 27:
                    zzo = zzhai.zzp(i4, (List) zzhbh.zzh(obj, j), zzF(i3));
                    i2 += zzo;
                    break;
                case 28:
                    zzo = zzhai.zzc(i4, (List) zzhbh.zzh(obj, j));
                    i2 += zzo;
                    break;
                case 29:
                    zzo = zzhai.zzv(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 30:
                    zzo = zzhai.zzd(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 31:
                    zzo = zzhai.zzf(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 32:
                    zzo = zzhai.zzh(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 33:
                    zzo = zzhai.zzq(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 34:
                    zzo = zzhai.zzs(i4, (List) zzhbh.zzh(obj, j), false);
                    i2 += zzo;
                    break;
                case 35:
                    zzy = zzhai.zzi((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzy = zzhai.zzg((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzy = zzhai.zzn((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzy = zzhai.zzy((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzy = zzhai.zzl((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzy = zzhai.zzi((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzy = zzhai.zzg((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzy = zzhai.zzb((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzy = zzhai.zzw((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzy = zzhai.zze((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzy = zzhai.zzg((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzy = zzhai.zzi((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzy = zzhai.zzr((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzy = zzhai.zzt((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        zzD = zzgxk.zzD(i4);
                        zzE8 = zzgxk.zzE(zzy);
                        zzE4 = zzD + zzE8;
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzhai.zzj(i4, (List) zzhbh.zzh(obj, j), zzF(i3));
                    i2 += zzo;
                    break;
                case 50:
                    zzgzi.zza(i4, zzhbh.zzh(obj, j), zzH(i3));
                    break;
                case 51:
                    if (zzZ(obj, i4, i3)) {
                        zzE = zzgxk.zzE(i4 << 3);
                        zzo = zzE + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzZ(obj, i4, i3)) {
                        zzE2 = zzgxk.zzE(i4 << 3);
                        zzo = zzE2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzZ(obj, i4, i3)) {
                        long zzD2 = zzD(obj, j);
                        zzE3 = zzgxk.zzE(i4 << 3);
                        zzF = zzgxk.zzF(zzD2);
                        i2 += zzE3 + zzF;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzZ(obj, i4, i3)) {
                        long zzD3 = zzD(obj, j);
                        zzE3 = zzgxk.zzE(i4 << 3);
                        zzF = zzgxk.zzF(zzD3);
                        i2 += zzE3 + zzF;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzZ(obj, i4, i3)) {
                        int zzs = zzs(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzy(zzs);
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzZ(obj, i4, i3)) {
                        zzE = zzgxk.zzE(i4 << 3);
                        zzo = zzE + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzZ(obj, i4, i3)) {
                        zzE2 = zzgxk.zzE(i4 << 3);
                        zzo = zzE2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzZ(obj, i4, i3)) {
                        zzE5 = zzgxk.zzE(i4 << 3);
                        zzo = zzE5 + 1;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zzZ(obj, i4, i3)) {
                        break;
                    } else {
                        Object zzh2 = zzhbh.zzh(obj, j);
                        if (zzh2 instanceof zzgwv) {
                            zzE6 = zzgxk.zzE(i4 << 3);
                            zzd = ((zzgwv) zzh2).zzd();
                            zzE7 = zzgxk.zzE(zzd);
                            i = zzE6 + zzE7 + zzd;
                            i2 += i;
                            break;
                        } else {
                            zzE4 = zzgxk.zzE(i4 << 3);
                            zzy = zzgxk.zzC((String) zzh2);
                            i = zzE4 + zzy;
                            i2 += i;
                        }
                    }
                case 60:
                    if (zzZ(obj, i4, i3)) {
                        zzo = zzhai.zzo(i4, zzhbh.zzh(obj, j), zzF(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzZ(obj, i4, i3)) {
                        zzE6 = zzgxk.zzE(i4 << 3);
                        zzd = ((zzgwv) zzhbh.zzh(obj, j)).zzd();
                        zzE7 = zzgxk.zzE(zzd);
                        i = zzE6 + zzE7 + zzd;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzZ(obj, i4, i3)) {
                        int zzs2 = zzs(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzE(zzs2);
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzZ(obj, i4, i3)) {
                        int zzs3 = zzs(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzy(zzs3);
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzZ(obj, i4, i3)) {
                        zzE2 = zzgxk.zzE(i4 << 3);
                        zzo = zzE2 + 4;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzZ(obj, i4, i3)) {
                        zzE = zzgxk.zzE(i4 << 3);
                        zzo = zzE + 8;
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzZ(obj, i4, i3)) {
                        int zzs4 = zzs(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzE((zzs4 >> 31) ^ (zzs4 + zzs4));
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzZ(obj, i4, i3)) {
                        long zzD4 = zzD(obj, j);
                        zzE4 = zzgxk.zzE(i4 << 3);
                        zzy = zzgxk.zzF((zzD4 >> 63) ^ (zzD4 + zzD4));
                        i = zzE4 + zzy;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzZ(obj, i4, i3)) {
                        zzo = zzgxk.zzx(i4, (zzgzn) zzhbh.zzh(obj, j), zzF(i3));
                        i2 += zzo;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzhax zzhaxVar = this.zzo;
        return i2 + zzhaxVar.zza(zzhaxVar.zzd(obj));
    }

    private static int zzs(Object obj, long j) {
        return ((Integer) zzhbh.zzh(obj, j)).intValue();
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzgwh zzgwhVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzH = zzH(i3);
        Object object = unsafe.getObject(obj, j);
        if (zzgzi.zzb(object)) {
            zzgzh zzb2 = zzgzh.zza().zzb();
            zzgzi.zzc(zzb2, object);
            unsafe.putObject(obj, j, zzb2);
        }
        zzgzg zzgzgVar = (zzgzg) zzH;
        throw null;
    }

    private final int zzu(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzgwh zzgwhVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzgwi.zzp(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzgwi.zzb(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm = zzgwi.zzm(bArr, i, zzgwhVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzgwhVar.zzb));
                    unsafe.putInt(obj, j2, i4);
                    return zzm;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj = zzgwi.zzj(bArr, i, zzgwhVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzgwhVar.zza));
                    unsafe.putInt(obj, j2, i4);
                    return zzj;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(zzgwi.zzp(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(zzgwi.zzb(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzm2 = zzgwi.zzm(bArr, i, zzgwhVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(zzgwhVar.zzb != 0));
                    unsafe.putInt(obj, j2, i4);
                    return zzm2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int zzj2 = zzgwi.zzj(bArr, i, zzgwhVar);
                    int i9 = zzgwhVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else if ((i6 & 536870912) == 0 || zzhbm.zzj(bArr, zzj2, zzj2 + i9)) {
                        unsafe.putObject(obj, j, new String(bArr, zzj2, i9, zzgyn.zzb));
                        zzj2 += i9;
                    } else {
                        throw zzgyp.zzd();
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzj2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    Object zzJ = zzJ(obj, i4, i8);
                    int zzo = zzgwi.zzo(zzJ, zzF(i8), bArr, i, i2, zzgwhVar);
                    zzS(obj, i4, i8, zzJ);
                    return zzo;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzgwi.zza(bArr, i, zzgwhVar);
                    unsafe.putObject(obj, j, zzgwhVar.zzc);
                    unsafe.putInt(obj, j2, i4);
                    return zza2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int zzj3 = zzgwi.zzj(bArr, i, zzgwhVar);
                    int i10 = zzgwhVar.zza;
                    zzgyh zzE = zzE(i8);
                    if (zzE == null || zzE.zza(i10)) {
                        unsafe.putObject(obj, j, Integer.valueOf(i10));
                        unsafe.putInt(obj, j2, i4);
                    } else {
                        zzd(obj).zzj(i3, Long.valueOf(i10));
                    }
                    return zzj3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zzj4 = zzgwi.zzj(bArr, i, zzgwhVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzgxd.zzF(zzgwhVar.zza)));
                    unsafe.putInt(obj, j2, i4);
                    return zzj4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzm3 = zzgwi.zzm(bArr, i, zzgwhVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzgxd.zzG(zzgwhVar.zzb)));
                    unsafe.putInt(obj, j2, i4);
                    return zzm3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    Object zzJ2 = zzJ(obj, i4, i8);
                    int zzn = zzgwi.zzn(zzJ2, zzF(i8), bArr, i, i2, (i3 & (-8)) | 4, zzgwhVar);
                    zzS(obj, i4, i8, zzJ2);
                    return zzn;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x029d, code lost:
        r15 = r29;
        r14 = r30;
        r12 = r31;
        r13 = r33;
        r11 = r34;
        r8 = r18;
        r2 = r19;
        r1 = r23;
        r7 = r26;
        r6 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02b3, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02e0, code lost:
        if (r0 != r15) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0304, code lost:
        if (r0 != r15) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x029b, code lost:
        if (r0 != r15) goto L120;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzv(java.lang.Object r30, byte[] r31, int r32, int r33, com.google.android.gms.internal.ads.zzgwh r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzq.zzv(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzgwh):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01c8  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0213 -> B:114:0x0214). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0148 -> B:61:0x0149). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x01c5 -> B:94:0x01c6). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzw(java.lang.Object r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.ads.zzgwh r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1164
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzq.zzw(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzgwh):int");
    }

    private final int zzx(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, 0);
    }

    private final int zzy(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, i2);
    }

    private final int zzz(int i) {
        return this.zzc[i + 2];
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final int zza(Object obj) {
        return this.zzj ? zzr(obj) : zzq(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final int zzb(Object obj) {
        int i;
        int zzc;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int zzC = zzC(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & zzC;
            int i5 = 37;
            switch (zzB(zzC)) {
                case 0:
                    i = i2 * 53;
                    zzc = zzgyn.zzc(Double.doubleToLongBits(zzhbh.zzb(obj, j)));
                    i2 = i + zzc;
                    break;
                case 1:
                    i = i2 * 53;
                    zzc = Float.floatToIntBits(zzhbh.zzc(obj, j));
                    i2 = i + zzc;
                    break;
                case 2:
                    i = i2 * 53;
                    zzc = zzgyn.zzc(zzhbh.zzf(obj, j));
                    i2 = i + zzc;
                    break;
                case 3:
                    i = i2 * 53;
                    zzc = zzgyn.zzc(zzhbh.zzf(obj, j));
                    i2 = i + zzc;
                    break;
                case 4:
                    i = i2 * 53;
                    zzc = zzhbh.zzd(obj, j);
                    i2 = i + zzc;
                    break;
                case 5:
                    i = i2 * 53;
                    zzc = zzgyn.zzc(zzhbh.zzf(obj, j));
                    i2 = i + zzc;
                    break;
                case 6:
                    i = i2 * 53;
                    zzc = zzhbh.zzd(obj, j);
                    i2 = i + zzc;
                    break;
                case 7:
                    i = i2 * 53;
                    zzc = zzgyn.zza(zzhbh.zzz(obj, j));
                    i2 = i + zzc;
                    break;
                case 8:
                    i = i2 * 53;
                    zzc = ((String) zzhbh.zzh(obj, j)).hashCode();
                    i2 = i + zzc;
                    break;
                case 9:
                    Object zzh = zzhbh.zzh(obj, j);
                    if (zzh != null) {
                        i5 = zzh.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zzc = zzhbh.zzh(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 11:
                    i = i2 * 53;
                    zzc = zzhbh.zzd(obj, j);
                    i2 = i + zzc;
                    break;
                case 12:
                    i = i2 * 53;
                    zzc = zzhbh.zzd(obj, j);
                    i2 = i + zzc;
                    break;
                case 13:
                    i = i2 * 53;
                    zzc = zzhbh.zzd(obj, j);
                    i2 = i + zzc;
                    break;
                case 14:
                    i = i2 * 53;
                    zzc = zzgyn.zzc(zzhbh.zzf(obj, j));
                    i2 = i + zzc;
                    break;
                case 15:
                    i = i2 * 53;
                    zzc = zzhbh.zzd(obj, j);
                    i2 = i + zzc;
                    break;
                case 16:
                    i = i2 * 53;
                    zzc = zzgyn.zzc(zzhbh.zzf(obj, j));
                    i2 = i + zzc;
                    break;
                case 17:
                    Object zzh2 = zzhbh.zzh(obj, j);
                    if (zzh2 != null) {
                        i5 = zzh2.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    zzc = zzhbh.zzh(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 50:
                    i = i2 * 53;
                    zzc = zzhbh.zzh(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 51:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzgyn.zzc(Double.doubleToLongBits(zzo(obj, j)));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = Float.floatToIntBits(zzp(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzgyn.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzgyn.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzgyn.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzgyn.zza(zzaa(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = ((String) zzhbh.zzh(obj, j)).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzhbh.zzh(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzhbh.zzh(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzgyn.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzgyn.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzZ(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzhbh.zzh(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzo.zzd(obj).hashCode();
        if (this.zzh) {
            this.zzp.zza(obj);
            throw null;
        }
        return hashCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x042f, code lost:
        if (r0 == r1) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0431, code lost:
        r27.putInt(r12, r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0437, code lost:
        r10 = r9.zzl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x043c, code lost:
        if (r10 >= r9.zzm) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x043e, code lost:
        zzG(r29, r9.zzk[r10], null, r9.zzo, r29);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0451, code lost:
        if (r7 != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0455, code lost:
        if (r6 != r32) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x045c, code lost:
        throw com.google.android.gms.internal.ads.zzgyp.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x045f, code lost:
        if (r6 > r32) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0461, code lost:
        if (r8 != r7) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0463, code lost:
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0468, code lost:
        throw com.google.android.gms.internal.ads.zzgyp.zzg();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r29, byte[] r30, int r31, int r32, int r33, com.google.android.gms.internal.ads.zzgwh r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1168
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzq.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgwh):int");
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final Object zze() {
        return ((zzgyd) this.zzg).zzaC();
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzf(Object obj) {
        if (zzY(obj)) {
            if (obj instanceof zzgyd) {
                zzgyd zzgydVar = (zzgyd) obj;
                zzgydVar.zzaT(Integer.MAX_VALUE);
                zzgydVar.zza = 0;
                zzgydVar.zzaR();
            }
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzC = zzC(i);
                long j = 1048575 & zzC;
                int zzB = zzB(zzC);
                if (zzB != 9) {
                    switch (zzB) {
                        case 17:
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            this.zzn.zzb(obj, j);
                            continue;
                        case 50:
                            Unsafe unsafe = zzb;
                            Object object = unsafe.getObject(obj, j);
                            if (object != null) {
                                ((zzgzh) object).zzc();
                                unsafe.putObject(obj, j, object);
                            } else {
                                continue;
                            }
                        default:
                    }
                }
                if (zzV(obj, i)) {
                    zzF(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzo.zzm(obj);
            if (this.zzh) {
                this.zzp.zze(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzg(Object obj, Object obj2) {
        zzL(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzC = zzC(i);
            long j = 1048575 & zzC;
            int i2 = this.zzc[i];
            switch (zzB(zzC)) {
                case 0:
                    if (zzV(obj2, i)) {
                        zzhbh.zzr(obj, j, zzhbh.zzb(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzV(obj2, i)) {
                        zzhbh.zzs(obj, j, zzhbh.zzc(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzV(obj2, i)) {
                        zzhbh.zzu(obj, j, zzhbh.zzf(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzV(obj2, i)) {
                        zzhbh.zzu(obj, j, zzhbh.zzf(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzV(obj2, i)) {
                        zzhbh.zzt(obj, j, zzhbh.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzV(obj2, i)) {
                        zzhbh.zzu(obj, j, zzhbh.zzf(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzV(obj2, i)) {
                        zzhbh.zzt(obj, j, zzhbh.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzV(obj2, i)) {
                        zzhbh.zzp(obj, j, zzhbh.zzz(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzV(obj2, i)) {
                        zzhbh.zzv(obj, j, zzhbh.zzh(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzM(obj, obj2, i);
                    break;
                case 10:
                    if (zzV(obj2, i)) {
                        zzhbh.zzv(obj, j, zzhbh.zzh(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzV(obj2, i)) {
                        zzhbh.zzt(obj, j, zzhbh.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzV(obj2, i)) {
                        zzhbh.zzt(obj, j, zzhbh.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzV(obj2, i)) {
                        zzhbh.zzt(obj, j, zzhbh.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzV(obj2, i)) {
                        zzhbh.zzu(obj, j, zzhbh.zzf(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzV(obj2, i)) {
                        zzhbh.zzt(obj, j, zzhbh.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzV(obj2, i)) {
                        zzhbh.zzu(obj, j, zzhbh.zzf(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzM(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzn.zzc(obj, obj2, j);
                    break;
                case 50:
                    zzhai.zzI(this.zzr, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzZ(obj2, i2, i)) {
                        zzhbh.zzv(obj, j, zzhbh.zzh(obj2, j));
                        zzQ(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzN(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzZ(obj2, i2, i)) {
                        zzhbh.zzv(obj, j, zzhbh.zzh(obj2, j));
                        zzQ(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzN(obj, obj2, i);
                    break;
            }
        }
        zzhai.zzF(this.zzo, obj, obj2);
        if (this.zzh) {
            zzhai.zzE(this.zzp, obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x061d A[Catch: all -> 0x0612, TryCatch #1 {all -> 0x0612, blocks: (B:151:0x05e8, B:165:0x0618, B:167:0x061d, B:168:0x0622), top: B:191:0x05e8 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0655 A[LOOP:3: B:183:0x0651->B:185:0x0655, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0669  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0628 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzhag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.Object r18, com.google.android.gms.internal.ads.zzgzy r19, com.google.android.gms.internal.ads.zzgxp r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgzq.zzh(java.lang.Object, com.google.android.gms.internal.ads.zzgzy, com.google.android.gms.internal.ads.zzgxp):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgwh zzgwhVar) throws IOException {
        if (this.zzj) {
            zzv(obj, bArr, i, i2, zzgwhVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzgwhVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzH;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzC = zzC(i);
            long j = zzC & 1048575;
            switch (zzB(zzC)) {
                case 0:
                    if (zzT(obj, obj2, i) && Double.doubleToLongBits(zzhbh.zzb(obj, j)) == Double.doubleToLongBits(zzhbh.zzb(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzT(obj, obj2, i) && Float.floatToIntBits(zzhbh.zzc(obj, j)) == Float.floatToIntBits(zzhbh.zzc(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzT(obj, obj2, i) && zzhbh.zzf(obj, j) == zzhbh.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzT(obj, obj2, i) && zzhbh.zzf(obj, j) == zzhbh.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzT(obj, obj2, i) && zzhbh.zzd(obj, j) == zzhbh.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzT(obj, obj2, i) && zzhbh.zzf(obj, j) == zzhbh.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzT(obj, obj2, i) && zzhbh.zzd(obj, j) == zzhbh.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzT(obj, obj2, i) && zzhbh.zzz(obj, j) == zzhbh.zzz(obj2, j)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzT(obj, obj2, i) && zzhai.zzH(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzT(obj, obj2, i) && zzhai.zzH(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzT(obj, obj2, i) && zzhai.zzH(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzT(obj, obj2, i) && zzhbh.zzd(obj, j) == zzhbh.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzT(obj, obj2, i) && zzhbh.zzd(obj, j) == zzhbh.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzT(obj, obj2, i) && zzhbh.zzd(obj, j) == zzhbh.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzT(obj, obj2, i) && zzhbh.zzf(obj, j) == zzhbh.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzT(obj, obj2, i) && zzhbh.zzd(obj, j) == zzhbh.zzd(obj2, j)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzT(obj, obj2, i) && zzhbh.zzf(obj, j) == zzhbh.zzf(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzT(obj, obj2, i) && zzhai.zzH(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzH = zzhai.zzH(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j));
                    break;
                case 50:
                    zzH = zzhai.zzH(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzz = zzz(i) & 1048575;
                    if (zzhbh.zzd(obj, zzz) == zzhbh.zzd(obj2, zzz) && zzhai.zzH(zzhbh.zzh(obj, j), zzhbh.zzh(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzH) {
                return false;
            }
        }
        if (this.zzo.zzd(obj).equals(this.zzo.zzd(obj2))) {
            if (this.zzh) {
                this.zzp.zza(obj);
                this.zzp.zza(obj2);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzl) {
            int i6 = this.zzk[i5];
            int i7 = this.zzc[i6];
            int zzC = zzC(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & zzC) != 0 && !zzW(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzB = zzB(zzC);
            if (zzB != 9 && zzB != 17) {
                if (zzB != 27) {
                    if (zzB == 60 || zzB == 68) {
                        if (zzZ(obj, i7, i6) && !zzX(obj, zzC, zzF(i6))) {
                            return false;
                        }
                    } else if (zzB != 49) {
                        if (zzB == 50 && !((zzgzh) zzhbh.zzh(obj, zzC & 1048575)).isEmpty()) {
                            zzgzg zzgzgVar = (zzgzg) zzH(i6);
                            throw null;
                        }
                    }
                }
                List list = (List) zzhbh.zzh(obj, zzC & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzhag zzF = zzF(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzF.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzW(obj, i6, i, i2, i10) && !zzX(obj, zzC, zzF(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (this.zzh) {
            this.zzp.zza(obj);
            throw null;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhag
    public final void zzn(Object obj, zzgxl zzgxlVar) throws IOException {
        if (!this.zzj) {
            zzab(obj, zzgxlVar);
        } else if (!this.zzh) {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzC = zzC(i);
                int i2 = this.zzc[i];
                switch (zzB(zzC)) {
                    case 0:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzf(i2, zzhbh.zzb(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzo(i2, zzhbh.zzc(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzt(i2, zzhbh.zzf(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzJ(i2, zzhbh.zzf(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzr(i2, zzhbh.zzd(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzm(i2, zzhbh.zzf(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzk(i2, zzhbh.zzd(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzb(i2, zzhbh.zzz(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzV(obj, i)) {
                            zzad(i2, zzhbh.zzh(obj, zzC & 1048575), zzgxlVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzv(i2, zzhbh.zzh(obj, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzd(i2, (zzgwv) zzhbh.zzh(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzH(i2, zzhbh.zzd(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzi(i2, zzhbh.zzd(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzw(i2, zzhbh.zzd(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzy(i2, zzhbh.zzf(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzA(i2, zzhbh.zzd(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzC(i2, zzhbh.zzf(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzV(obj, i)) {
                            zzgxlVar.zzq(i2, zzhbh.zzh(obj, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzhai.zzL(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 19:
                        zzhai.zzP(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 20:
                        zzhai.zzS(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 21:
                        zzhai.zzaa(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 22:
                        zzhai.zzR(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 23:
                        zzhai.zzO(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 24:
                        zzhai.zzN(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 25:
                        zzhai.zzJ(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 26:
                        zzhai.zzY(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar);
                        break;
                    case 27:
                        zzhai.zzT(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, zzF(i));
                        break;
                    case 28:
                        zzhai.zzK(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar);
                        break;
                    case 29:
                        zzhai.zzZ(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 30:
                        zzhai.zzM(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 31:
                        zzhai.zzU(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 32:
                        zzhai.zzV(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 33:
                        zzhai.zzW(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 34:
                        zzhai.zzX(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, false);
                        break;
                    case 35:
                        zzhai.zzL(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 36:
                        zzhai.zzP(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 37:
                        zzhai.zzS(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 38:
                        zzhai.zzaa(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 39:
                        zzhai.zzR(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 40:
                        zzhai.zzO(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 41:
                        zzhai.zzN(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 42:
                        zzhai.zzJ(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 43:
                        zzhai.zzZ(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 44:
                        zzhai.zzM(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 45:
                        zzhai.zzU(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 46:
                        zzhai.zzV(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 47:
                        zzhai.zzW(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 48:
                        zzhai.zzX(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, true);
                        break;
                    case 49:
                        zzhai.zzQ(i2, (List) zzhbh.zzh(obj, zzC & 1048575), zzgxlVar, zzF(i));
                        break;
                    case 50:
                        zzac(zzgxlVar, i2, zzhbh.zzh(obj, zzC & 1048575), i);
                        break;
                    case 51:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzf(i2, zzo(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzo(i2, zzp(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzt(i2, zzD(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzJ(i2, zzD(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzr(i2, zzs(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzm(i2, zzD(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzk(i2, zzs(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzb(i2, zzaa(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzZ(obj, i2, i)) {
                            zzad(i2, zzhbh.zzh(obj, zzC & 1048575), zzgxlVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzv(i2, zzhbh.zzh(obj, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzd(i2, (zzgwv) zzhbh.zzh(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzH(i2, zzs(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzi(i2, zzs(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzw(i2, zzs(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzy(i2, zzD(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzA(i2, zzs(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzC(i2, zzD(obj, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzZ(obj, i2, i)) {
                            zzgxlVar.zzq(i2, zzhbh.zzh(obj, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzhax zzhaxVar = this.zzo;
            zzhaxVar.zzr(zzhaxVar.zzd(obj), zzgxlVar);
        } else {
            this.zzp.zza(obj);
            throw null;
        }
    }
}
