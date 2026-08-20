package com.google.android.gms.internal.ads;

import java.util.Set;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgdv extends zzgds {
    private zzgdv() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgdv(zzgdu zzgduVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgds
    public final int zza(zzgdw zzgdwVar) {
        int i;
        int i2;
        synchronized (zzgdwVar) {
            i = zzgdwVar.remaining;
            i2 = i - 1;
            zzgdwVar.remaining = i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgds
    public final void zzb(zzgdw zzgdwVar, @CheckForNull Set set, Set set2) {
        Set set3;
        synchronized (zzgdwVar) {
            set3 = zzgdwVar.seenExceptions;
            if (set3 == null) {
                zzgdwVar.seenExceptions = set2;
            }
        }
    }
}
