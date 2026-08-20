package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgaj {
    private static final zzgaj zza = new zzgah();
    private static final zzgaj zzb = new zzgai(-1);
    private static final zzgaj zzc = new zzgai(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgaj(zzgah zzgahVar) {
    }

    public static zzgaj zzj() {
        return zza;
    }

    public abstract int zza();

    public abstract zzgaj zzb(int i, int i2);

    public abstract zzgaj zzc(Object obj, Object obj2, Comparator comparator);

    public abstract zzgaj zzd(boolean z, boolean z2);

    public abstract zzgaj zze(boolean z, boolean z2);
}
