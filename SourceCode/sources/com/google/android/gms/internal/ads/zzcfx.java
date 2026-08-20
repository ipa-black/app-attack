package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcfx implements SharedPreferences.OnSharedPreferenceChangeListener {
    final /* synthetic */ zzcfy zza;
    private final String zzb;

    public zzcfx(zzcfy zzcfyVar, String str) {
        this.zza = zzcfyVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<zzcfw> list;
        synchronized (this.zza) {
            list = this.zza.zzb;
            for (zzcfw zzcfwVar : list) {
                zzcfwVar.zza.zzb(zzcfwVar.zzb, sharedPreferences, this.zzb, str);
            }
        }
    }
}
