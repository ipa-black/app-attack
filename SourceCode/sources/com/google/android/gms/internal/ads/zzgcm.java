package com.google.android.gms.internal.ads;

import java.util.Set;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzgcm extends zzfzu implements Set {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcm(Set set, zzfyf zzfyfVar) {
        super(set, zzfyfVar);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        return zzgcp.zzc(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzgcp.zza(this);
    }
}
