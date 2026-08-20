package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbmf implements NativeCustomTemplateAd.DisplayOpenMeasurement {
    private final zzbnf zza;

    public zzbmf(zzbnf zzbnfVar) {
        this.zza = zzbnfVar;
        try {
            zzbnfVar.zzm();
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zza.zzp(ObjectWrapper.wrap(view));
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zza.zzs();
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
            return false;
        }
    }
}
