package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgbb extends zzfyx {
    final /* synthetic */ Iterator zza;
    final /* synthetic */ zzfyf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgbb(Iterator it, zzfyf zzfyfVar) {
        this.zza = it;
        this.zzb = zzfyfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyx
    @CheckForNull
    protected final Object zza() {
        while (this.zza.hasNext()) {
            Object next = this.zza.next();
            if (this.zzb.zza(next)) {
                return next;
            }
        }
        zzb();
        return null;
    }
}
