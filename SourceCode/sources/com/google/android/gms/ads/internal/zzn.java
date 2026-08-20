package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzapj;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzn implements View.OnTouchListener {
    final /* synthetic */ zzs zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzapj zzapjVar;
        zzapj zzapjVar2;
        zzs zzsVar = this.zza;
        zzapjVar = zzsVar.zzh;
        if (zzapjVar != null) {
            zzapjVar2 = zzsVar.zzh;
            zzapjVar2.zzd(motionEvent);
            return false;
        }
        return false;
    }
}
