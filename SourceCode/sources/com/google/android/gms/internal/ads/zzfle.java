package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfle implements zzflc {
    private final String zza;

    public zzfle(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzflc
    public final boolean equals(Object obj) {
        if (obj instanceof zzfle) {
            return this.zza.equals(((zzfle) obj).zza);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzflc
    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza;
    }
}
