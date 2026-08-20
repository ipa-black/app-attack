package com.google.android.gms.internal.ads;

import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfrc {
    private final zzfqk zza;
    private final ArrayList zzb;

    public zzfrc(zzfqk zzfqkVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.zzb = arrayList;
        this.zza = zzfqkVar;
        arrayList.add(str);
    }

    public final zzfqk zza() {
        return this.zza;
    }

    public final ArrayList zzb() {
        return this.zzb;
    }

    public final void zzc(String str) {
        this.zzb.add(str);
    }
}
