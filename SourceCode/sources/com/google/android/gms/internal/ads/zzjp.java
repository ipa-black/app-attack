package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzjp implements zzjl {
    public final zzsc zza;
    public int zzd;
    public boolean zze;
    public final List zzc = new ArrayList();
    public final Object zzb = new Object();

    public zzjp(zzsj zzsjVar, boolean z) {
        this.zza = new zzsc(zzsjVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzjl
    public final zzcn zza() {
        return this.zza.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzjl
    public final Object zzb() {
        return this.zzb;
    }

    public final void zzc(int i) {
        this.zzd = i;
        this.zze = false;
        this.zzc.clear();
    }
}
