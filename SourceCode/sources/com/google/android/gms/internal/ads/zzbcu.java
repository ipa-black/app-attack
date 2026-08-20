package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbcu implements Runnable {
    final ValueCallback zza;
    final /* synthetic */ zzbcm zzb;
    final /* synthetic */ WebView zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzbcw zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcu(zzbcw zzbcwVar, final zzbcm zzbcmVar, final WebView webView, final boolean z) {
        this.zze = zzbcwVar;
        this.zzb = zzbcmVar;
        this.zzc = webView;
        this.zzd = z;
        this.zza = new ValueCallback() { // from class: com.google.android.gms.internal.ads.zzbct
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                zzbcu zzbcuVar = zzbcu.this;
                zzbcm zzbcmVar2 = zzbcmVar;
                WebView webView2 = webView;
                boolean z2 = z;
                zzbcuVar.zze.zzd(zzbcmVar2, webView2, (String) obj, z2);
            }
        };
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzc.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzc.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zza);
            } catch (Throwable unused) {
                this.zza.onReceiveValue("");
            }
        }
    }
}
