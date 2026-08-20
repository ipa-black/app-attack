package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzdrf implements zzbly {
    final /* synthetic */ zzdsc zza;
    final /* synthetic */ ViewGroup zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdrf(zzdsc zzdscVar, ViewGroup viewGroup) {
        this.zza = zzdscVar;
        this.zzb = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final JSONObject zza() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final JSONObject zzb() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final void zzc() {
        zzdsc zzdscVar = this.zza;
        zzgau zzgauVar = zzdrc.zza;
        Map zzm = zzdscVar.zzm();
        if (zzm == null) {
            return;
        }
        int size = zzgauVar.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (zzm.get((String) zzgauVar.get(i)) != null) {
                this.zza.onClick(this.zzb);
                return;
            }
            i = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final void zzd(MotionEvent motionEvent) {
        this.zza.onTouch(null, motionEvent);
    }
}
