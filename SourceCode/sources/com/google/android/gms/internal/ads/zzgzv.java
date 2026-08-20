package com.google.android.gms.internal.ads;

import com.google.firebase.messaging.Constants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgzv {
    private static final zzgzv zza = new zzgzv();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzhah zzb = new zzgzf();

    private zzgzv() {
    }

    public static zzgzv zza() {
        return zza;
    }

    public final zzhag zzb(Class cls) {
        zzgyn.zzf(cls, Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE);
        zzhag zzhagVar = (zzhag) this.zzc.get(cls);
        if (zzhagVar == null) {
            zzhagVar = this.zzb.zza(cls);
            zzgyn.zzf(cls, Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE);
            zzgyn.zzf(zzhagVar, "schema");
            zzhag zzhagVar2 = (zzhag) this.zzc.putIfAbsent(cls, zzhagVar);
            if (zzhagVar2 != null) {
                return zzhagVar2;
            }
        }
        return zzhagVar;
    }
}
