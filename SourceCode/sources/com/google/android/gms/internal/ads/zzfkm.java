package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfkm implements zzdeq {
    private final HashSet zza = new HashSet();
    private final Context zzb;
    private final zzchb zzc;

    public zzfkm(Context context, zzchb zzchbVar) {
        this.zzb = context;
        this.zzc = zzchbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final synchronized void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (zzeVar.zza != 3) {
            this.zzc.zzi(this.zza);
        }
    }

    public final Bundle zzb() {
        return this.zzc.zzk(this.zzb, this);
    }

    public final synchronized void zzc(HashSet hashSet) {
        this.zza.clear();
        this.zza.addAll(hashSet);
    }
}
