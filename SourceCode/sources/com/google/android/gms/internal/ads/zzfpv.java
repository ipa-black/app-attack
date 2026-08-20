package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpv {
    private final zzfqc zza;
    private final WebView zzb;
    private final List zzc = new ArrayList();
    private final Map zzd = new HashMap();
    private final String zze = "";
    private final String zzf;
    private final zzfpw zzg;

    private zzfpv(zzfqc zzfqcVar, WebView webView, String str, List list, String str2, String str3, zzfpw zzfpwVar) {
        this.zza = zzfqcVar;
        this.zzb = webView;
        this.zzg = zzfpwVar;
        this.zzf = str2;
    }

    public static zzfpv zzb(zzfqc zzfqcVar, WebView webView, String str, String str2) {
        return new zzfpv(zzfqcVar, webView, null, null, str, "", zzfpw.HTML);
    }

    public static zzfpv zzc(zzfqc zzfqcVar, WebView webView, String str, String str2) {
        return new zzfpv(zzfqcVar, webView, null, null, str, "", zzfpw.JAVASCRIPT);
    }

    public final WebView zza() {
        return this.zzb;
    }

    public final zzfpw zzd() {
        return this.zzg;
    }

    public final zzfqc zze() {
        return this.zza;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final String zzg() {
        return this.zze;
    }

    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    public final Map zzi() {
        return Collections.unmodifiableMap(this.zzd);
    }
}
