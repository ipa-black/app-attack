package com.google.android.gms.internal.ads;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzhek {
    final LinkedHashMap zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhek(int i) {
        this.zza = zzhem.zzb(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzhek zza(Object obj, zzhfc zzhfcVar) {
        LinkedHashMap linkedHashMap = this.zza;
        zzhex.zza(obj, "key");
        zzhex.zza(zzhfcVar, IronSourceConstants.EVENTS_PROVIDER);
        linkedHashMap.put(obj, zzhfcVar);
        return this;
    }
}
