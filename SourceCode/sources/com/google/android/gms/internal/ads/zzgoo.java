package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgoo {
    private final zzggo zza;
    private final int zzb;
    private final zzghb zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgoo(zzggo zzggoVar, int i, zzghb zzghbVar, zzgon zzgonVar) {
        this.zza = zzggoVar;
        this.zzb = i;
        this.zzc = zzghbVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgoo) {
            zzgoo zzgooVar = (zzgoo) obj;
            return this.zza == zzgooVar.zza && this.zzb == zzgooVar.zzb && this.zzc.equals(zzgooVar.zzc);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, Integer.valueOf(this.zzb), Integer.valueOf(this.zzc.hashCode())});
    }

    public final String toString() {
        return String.format("(status=%s, keyId=%s, parameters='%s')", this.zza, Integer.valueOf(this.zzb), this.zzc);
    }

    public final int zza() {
        return this.zzb;
    }
}
