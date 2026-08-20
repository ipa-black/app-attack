package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.WindowManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzxp implements zzxo {
    private final WindowManager zza;

    private zzxp(WindowManager windowManager) {
        this.zza = windowManager;
    }

    public static zzxo zzc(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            return new zzxp(windowManager);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final void zzb(zzxm zzxmVar) {
        zzxs.zzb(zzxmVar.zza, this.zza.getDefaultDisplay());
    }
}
