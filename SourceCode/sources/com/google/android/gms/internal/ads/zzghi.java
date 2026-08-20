package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzghi {
    private final ConcurrentMap zza;
    private final zzghe zzb;
    private final Class zzc;
    private final zzgoj zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzghi(ConcurrentMap concurrentMap, zzghe zzgheVar, zzgoj zzgojVar, Class cls, zzghh zzghhVar) {
        this.zza = concurrentMap;
        this.zzb = zzgheVar;
        this.zzc = cls;
        this.zzd = zzgojVar;
    }

    @Nullable
    public final zzghe zza() {
        return this.zzb;
    }

    public final zzgoj zzb() {
        return this.zzd;
    }

    public final Class zzc() {
        return this.zzc;
    }

    public final Collection zzd() {
        return this.zza.values();
    }

    public final List zze(byte[] bArr) {
        List list = (List) this.zza.get(new zzghg(bArr, null));
        return list != null ? list : Collections.emptyList();
    }

    public final boolean zzf() {
        return !this.zzd.zza().isEmpty();
    }
}
