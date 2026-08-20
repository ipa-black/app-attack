package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgxy implements zzgzl {
    private static final zzgxy zza = new zzgxy();

    private zzgxy() {
    }

    public static zzgxy zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgzl
    public final zzgzk zzb(Class cls) {
        if (!zzgyd.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(String.valueOf(cls.getName())));
        }
        try {
            return (zzgzk) zzgyd.zzaB(cls.asSubclass(zzgyd.class)).zzb(3, null, null);
        } catch (Exception e2) {
            throw new RuntimeException("Unable to get message info for ".concat(String.valueOf(cls.getName())), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzl
    public final boolean zzc(Class cls) {
        return zzgyd.class.isAssignableFrom(cls);
    }
}
