package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgli {
    private final Class zza;
    private final Map zzb;
    private final Class zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    @SafeVarargs
    public zzgli(Class cls, zzgmd... zzgmdVarArr) {
        this.zza = cls;
        HashMap hashMap = new HashMap();
        for (int i = 0; i <= 0; i++) {
            zzgmd zzgmdVar = zzgmdVarArr[i];
            if (hashMap.containsKey(zzgmdVar.zzb())) {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(zzgmdVar.zzb().getCanonicalName())));
            }
            hashMap.put(zzgmdVar.zzb(), zzgmdVar);
        }
        this.zzc = zzgmdVarArr[0].zzb();
        this.zzb = Collections.unmodifiableMap(hashMap);
    }

    public zzglh zza() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract zzgsv zzb();

    public abstract zzgzn zzc(zzgwv zzgwvVar) throws zzgyp;

    public abstract String zzd();

    public abstract void zze(zzgzn zzgznVar) throws GeneralSecurityException;

    public int zzf() {
        return 1;
    }

    public final Class zzi() {
        return this.zzc;
    }

    public final Class zzj() {
        return this.zza;
    }

    public final Object zzk(zzgzn zzgznVar, Class cls) throws GeneralSecurityException {
        zzgmd zzgmdVar = (zzgmd) this.zzb.get(cls);
        if (zzgmdVar == null) {
            String canonicalName = cls.getCanonicalName();
            throw new IllegalArgumentException("Requested primitive class " + canonicalName + " not supported.");
        }
        return zzgmdVar.zza(zzgznVar);
    }

    public final Set zzl() {
        return this.zzb.keySet();
    }
}
