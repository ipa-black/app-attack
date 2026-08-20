package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzevh implements zzezm {
    private final zzffh zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzevh(zzffh zzffhVar) {
        this.zza = zzffhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        zzffh zzffhVar = this.zza;
        zzezl zzezlVar = null;
        if (zzffhVar != null && zzffhVar.zza() != null && !zzffhVar.zza().isEmpty()) {
            zzezlVar = new zzezl() { // from class: com.google.android.gms.internal.ads.zzevg
                @Override // com.google.android.gms.internal.ads.zzezl
                public final void zzf(Object obj) {
                    zzevh.this.zzc((Bundle) obj);
                }
            };
        }
        return zzger.zzi(zzezlVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(Bundle bundle) {
        bundle.putString("key_schema", this.zza.zza());
    }
}
