package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzcor extends zzcnv {
    public zzcor(zzcno zzcnoVar, zzbew zzbewVar, boolean z) {
        super(zzcnoVar, zzbewVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WebResourceResponse zzN(WebView webView, String str, Map map) {
        String str2;
        if (!(webView instanceof zzcno)) {
            com.google.android.gms.ads.internal.util.zze.zzj("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzcno zzcnoVar = (zzcno) webView;
        zzcep zzcepVar = this.zza;
        if (zzcepVar != null) {
            zzcepVar.zzd(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.zzc(str, map);
        }
        if (zzcnoVar.zzP() != null) {
            zzcnoVar.zzP().zzE();
        }
        if (zzcnoVar.zzQ().zzi()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzM);
        } else if (zzcnoVar.zzaC()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzL);
        } else {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzK);
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        return com.google.android.gms.ads.internal.util.zzs.zzu(zzcnoVar.getContext(), zzcnoVar.zzp().zza, str2);
    }
}
