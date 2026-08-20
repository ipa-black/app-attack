package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgxs {
    private static final zzgxq zza = new zzgxr();
    private static final zzgxq zzb;

    static {
        zzgxq zzgxqVar;
        try {
            zzgxqVar = (zzgxq) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzgxqVar = null;
        }
        zzb = zzgxqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgxq zza() {
        zzgxq zzgxqVar = zzb;
        if (zzgxqVar != null) {
            return zzgxqVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgxq zzb() {
        return zza;
    }
}
