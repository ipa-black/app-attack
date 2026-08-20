package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcfy {
    private final Map zza = new HashMap();
    private final List zzb = new ArrayList();
    private final Context zzc;
    private final zzcev zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcfy(Context context, zzcev zzcevVar) {
        this.zzc = context;
        this.zzd = zzcevVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.zzd.zze();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzc(String str) {
        SharedPreferences sharedPreferences;
        if (this.zza.containsKey(str)) {
            return;
        }
        if ("__default__".equals(str)) {
            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.zzc);
        } else {
            sharedPreferences = this.zzc.getSharedPreferences(str, 0);
        }
        zzcfx zzcfxVar = new zzcfx(this, str);
        this.zza.put(str, zzcfxVar);
        sharedPreferences.registerOnSharedPreferenceChangeListener(zzcfxVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzd(zzcfw zzcfwVar) {
        this.zzb.add(zzcfwVar);
    }
}
