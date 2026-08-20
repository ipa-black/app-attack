package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxz;
import com.google.android.gms.internal.ads.zzgyd;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgyd<MessageType extends zzgyd<MessageType, BuilderType>, BuilderType extends zzgxz<MessageType, BuilderType>> extends zzgwe<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzhay zzc = zzhay.zzc();

    private final int zza(zzhag zzhagVar) {
        if (zzhagVar == null) {
            return zzgzv.zza().zzb(getClass()).zza(this);
        }
        return zzhagVar.zza(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgyd zzaB(Class cls) {
        Map map = zzb;
        zzgyd zzgydVar = (zzgyd) map.get(cls);
        if (zzgydVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgydVar = (zzgyd) map.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (zzgydVar == null) {
            zzgydVar = (zzgyd) ((zzgyd) zzhbh.zzg(cls)).zzb(6, null, null);
            if (zzgydVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzgydVar);
        }
        return zzgydVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyd zzaD(zzgyd zzgydVar, zzgwv zzgwvVar) throws zzgyp {
        zzgxp zzgxpVar = zzgxp.zza;
        zzgxd zzl = zzgwvVar.zzl();
        zzgyd zzaC = zzgydVar.zzaC();
        try {
            zzhag zzb2 = zzgzv.zza().zzb(zzaC.getClass());
            zzb2.zzh(zzaC, zzgxe.zzq(zzl), zzgxpVar);
            zzb2.zzf(zzaC);
            try {
                zzl.zzz(0);
                zzc(zzaC);
                zzc(zzaC);
                return zzaC;
            } catch (zzgyp e2) {
                e2.zzh(zzaC);
                throw e2;
            }
        } catch (zzgyp e3) {
            e = e3;
            if (e.zzl()) {
                e = new zzgyp(e);
            }
            e.zzh(zzaC);
            throw e;
        } catch (zzhaw e4) {
            zzgyp zza = e4.zza();
            zza.zzh(zzaC);
            throw zza;
        } catch (IOException e5) {
            if (e5.getCause() instanceof zzgyp) {
                throw ((zzgyp) e5.getCause());
            }
            zzgyp zzgypVar = new zzgyp(e5);
            zzgypVar.zzh(zzaC);
            throw zzgypVar;
        } catch (RuntimeException e6) {
            if (e6.getCause() instanceof zzgyp) {
                throw ((zzgyp) e6.getCause());
            }
            throw e6;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyd zzaE(zzgyd zzgydVar, byte[] bArr) throws zzgyp {
        zzgyd zzd = zzd(zzgydVar, bArr, 0, bArr.length, zzgxp.zza);
        zzc(zzd);
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyd zzaF(zzgyd zzgydVar, zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        zzgxd zzl = zzgwvVar.zzl();
        zzgyd zzaC = zzgydVar.zzaC();
        try {
            zzhag zzb2 = zzgzv.zza().zzb(zzaC.getClass());
            zzb2.zzh(zzaC, zzgxe.zzq(zzl), zzgxpVar);
            zzb2.zzf(zzaC);
            try {
                zzl.zzz(0);
                zzc(zzaC);
                return zzaC;
            } catch (zzgyp e2) {
                e2.zzh(zzaC);
                throw e2;
            }
        } catch (zzgyp e3) {
            e = e3;
            if (e.zzl()) {
                e = new zzgyp(e);
            }
            e.zzh(zzaC);
            throw e;
        } catch (zzhaw e4) {
            zzgyp zza = e4.zza();
            zza.zzh(zzaC);
            throw zza;
        } catch (IOException e5) {
            if (e5.getCause() instanceof zzgyp) {
                throw ((zzgyp) e5.getCause());
            }
            zzgyp zzgypVar = new zzgyp(e5);
            zzgypVar.zzh(zzaC);
            throw zzgypVar;
        } catch (RuntimeException e6) {
            if (e6.getCause() instanceof zzgyp) {
                throw ((zzgyp) e6.getCause());
            }
            throw e6;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyd zzaG(zzgyd zzgydVar, InputStream inputStream, zzgxp zzgxpVar) throws zzgyp {
        zzgxd zzH = zzgxd.zzH(inputStream, 4096);
        zzgyd zzaC = zzgydVar.zzaC();
        try {
            zzhag zzb2 = zzgzv.zza().zzb(zzaC.getClass());
            zzb2.zzh(zzaC, zzgxe.zzq(zzH), zzgxpVar);
            zzb2.zzf(zzaC);
            zzc(zzaC);
            return zzaC;
        } catch (zzgyp e2) {
            e = e2;
            if (e.zzl()) {
                e = new zzgyp(e);
            }
            e.zzh(zzaC);
            throw e;
        } catch (zzhaw e3) {
            zzgyp zza = e3.zza();
            zza.zzh(zzaC);
            throw zza;
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzgyp) {
                throw ((zzgyp) e4.getCause());
            }
            zzgyp zzgypVar = new zzgyp(e4);
            zzgypVar.zzh(zzaC);
            throw zzgypVar;
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof zzgyp) {
                throw ((zzgyp) e5.getCause());
            }
            throw e5;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyd zzaH(zzgyd zzgydVar, byte[] bArr, zzgxp zzgxpVar) throws zzgyp {
        zzgyd zzd = zzd(zzgydVar, bArr, 0, bArr.length, zzgxpVar);
        zzc(zzd);
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyi zzaI() {
        return zzgye.zzf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyi zzaJ(zzgyi zzgyiVar) {
        int size = zzgyiVar.size();
        return zzgyiVar.zzg(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgyl zzaK() {
        return zzgzc.zzf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgym zzaL() {
        return zzgzw.zze();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzgym zzaM(zzgym zzgymVar) {
        int size = zzgymVar.size();
        return zzgymVar.zzd(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzaO(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zzaP(zzgzn zzgznVar, String str, Object[] objArr) {
        return new zzgzx(zzgznVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void zzaS(Class cls, zzgyd zzgydVar) {
        zzgydVar.zzaR();
        zzb.put(cls, zzgydVar);
    }

    private static zzgyd zzc(zzgyd zzgydVar) throws zzgyp {
        if (zzgydVar == null || zzgydVar.zzaV()) {
            return zzgydVar;
        }
        zzgyp zza = new zzhaw(zzgydVar).zza();
        zza.zzh(zzgydVar);
        throw zza;
    }

    private static zzgyd zzd(zzgyd zzgydVar, byte[] bArr, int i, int i2, zzgxp zzgxpVar) throws zzgyp {
        zzgyd zzaC = zzgydVar.zzaC();
        try {
            zzhag zzb2 = zzgzv.zza().zzb(zzaC.getClass());
            zzb2.zzi(zzaC, bArr, 0, i2, new zzgwh(zzgxpVar));
            zzb2.zzf(zzaC);
            return zzaC;
        } catch (zzgyp e2) {
            e = e2;
            if (e.zzl()) {
                e = new zzgyp(e);
            }
            e.zzh(zzaC);
            throw e;
        } catch (zzhaw e3) {
            zzgyp zza = e3.zza();
            zza.zzh(zzaC);
            throw zza;
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzgyp) {
                throw ((zzgyp) e4.getCause());
            }
            zzgyp zzgypVar = new zzgyp(e4);
            zzgypVar.zzh(zzaC);
            throw zzgypVar;
        } catch (IndexOutOfBoundsException unused) {
            zzgyp zzj = zzgyp.zzj();
            zzj.zzh(zzaC);
            throw zzj;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzgzv.zza().zzb(getClass()).zzj(this, (zzgyd) obj);
        }
        return false;
    }

    public final int hashCode() {
        if (zzaW()) {
            return zzax();
        }
        int i = this.zza;
        if (i == 0) {
            int zzax = zzax();
            this.zza = zzax;
            return zzax;
        }
        return i;
    }

    public final String toString() {
        return zzgzp.zza(this, super.toString());
    }

    public final zzgxz zzaA() {
        zzgxz zzgxzVar = (zzgxz) zzb(5, null, null);
        zzgxzVar.zzai(this);
        return zzgxzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzgyd zzaC() {
        return (zzgyd) zzb(4, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgzn
    public final /* synthetic */ zzgzm zzaN() {
        return (zzgxz) zzb(5, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzaQ() {
        zzgzv.zza().zzb(getClass()).zzf(this);
        zzaR();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzaR() {
        this.zzd &= Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzaT(int i) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzgzn
    public final void zzaU(zzgxk zzgxkVar) throws IOException {
        zzgzv.zza().zzb(getClass()).zzn(this, zzgxl.zza(zzgxkVar));
    }

    public final boolean zzaV() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) zzb(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzk = zzgzv.zza().zzb(getClass()).zzk(this);
        if (booleanValue) {
            zzb(2, true != zzk ? null : this, null);
            return zzk;
        }
        return zzk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzaW() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    final int zzax() {
        return zzgzv.zza().zzb(getClass()).zzb(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzgxz zzaz() {
        return (zzgxz) zzb(5, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zzb(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzgzo
    public final /* synthetic */ zzgzn zzbh() {
        return (zzgyd) zzb(6, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgwe
    public final int zzas(zzhag zzhagVar) {
        if (zzaW()) {
            int zza = zza(zzhagVar);
            if (zza >= 0) {
                return zza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zza);
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int zza2 = zza(zzhagVar);
        if (zza2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | zza2;
            return zza2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + zza2);
    }

    @Override // com.google.android.gms.internal.ads.zzgzn
    public final int zzay() {
        int i;
        if (zzaW()) {
            i = zza(null);
            if (i < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + i);
            }
        } else {
            i = this.zzd & Integer.MAX_VALUE;
            if (i == Integer.MAX_VALUE) {
                i = zza(null);
                if (i >= 0) {
                    this.zzd = (this.zzd & Integer.MIN_VALUE) | i;
                } else {
                    throw new IllegalStateException("serialized size must be non-negative, was " + i);
                }
            }
        }
        return i;
    }
}
