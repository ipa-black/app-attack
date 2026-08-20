package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzxq implements DisplayManager.DisplayListener, zzxo {
    private final DisplayManager zza;
    private zzxm zzb;

    private zzxq(DisplayManager displayManager) {
        this.zza = displayManager;
    }

    public static zzxo zzc(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            return new zzxq(displayManager);
        }
        return null;
    }

    private final Display zzd() {
        return this.zza.getDisplay(0);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        zzxm zzxmVar = this.zzb;
        if (zzxmVar == null || i != 0) {
            return;
        }
        zzxs.zzb(zzxmVar.zza, zzd());
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final void zza() {
        this.zza.unregisterDisplayListener(this);
        this.zzb = null;
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final void zzb(zzxm zzxmVar) {
        this.zzb = zzxmVar;
        this.zza.registerDisplayListener(this, zzen.zzD(null));
        zzxs.zzb(zzxmVar.zza, zzd());
    }
}
