package com.google.android.gms.internal.ads;

import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfyj extends zzfya {
    private final Object zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfyj(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzfyj) {
            return this.zza.equals(((zzfyj) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final zzfya zza(zzfxt zzfxtVar) {
        Object apply = zzfxtVar.apply(this.zza);
        zzfye.zzc(apply, "the Function passed to Optional.transform() must not return null.");
        return new zzfyj(apply);
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final Object zzb(Object obj) {
        return this.zza;
    }
}
