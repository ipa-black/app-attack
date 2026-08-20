package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgee extends zzgdq {
    @CheckForNull
    private zzged zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgee(zzgap zzgapVar, boolean z, Executor executor, Callable callable) {
        super(zzgapVar, z, false);
        this.zza = new zzgec(this, callable, executor);
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzgdq
    final void zzg(int i, @CheckForNull Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    protected final void zzr() {
        zzged zzgedVar = this.zza;
        if (zzgedVar != null) {
            zzgedVar.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdq
    final void zzv() {
        zzged zzgedVar = this.zza;
        if (zzgedVar != null) {
            zzgedVar.zzf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgdq
    public final void zzz(int i) {
        super.zzz(i);
        if (i == 1) {
            this.zza = null;
        }
    }
}
