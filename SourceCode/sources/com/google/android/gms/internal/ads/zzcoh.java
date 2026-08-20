package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzfvb;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzcoh extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcno {
    public static final /* synthetic */ int zza = 0;
    private boolean zzA;
    private boolean zzB;
    private zzbly zzC;
    private zzblw zzD;
    private zzbdk zzE;
    private int zzF;
    private int zzG;
    private zzbjv zzH;
    private final zzbjv zzI;
    private zzbjv zzJ;
    private final zzbjw zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    private com.google.android.gms.ads.internal.overlay.zzl zzO;
    private boolean zzP;
    private final com.google.android.gms.ads.internal.util.zzci zzQ;
    private int zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private Map zzV;
    private final WindowManager zzW;
    private final zzbew zzX;
    private final zzcpc zzb;
    private final zzapj zzc;
    private final zzbki zzd;
    private final zzchu zze;
    private com.google.android.gms.ads.internal.zzl zzf;
    private final com.google.android.gms.ads.internal.zza zzg;
    private final DisplayMetrics zzh;
    private final float zzi;
    private zzfil zzj;
    private zzfio zzk;
    private boolean zzl;
    private boolean zzm;
    private zzcnv zzn;
    private com.google.android.gms.ads.internal.overlay.zzl zzo;
    private IObjectWrapper zzp;
    private zzcpd zzq;
    private final String zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private Boolean zzw;
    private boolean zzx;
    private final String zzy;
    private zzcok zzz;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzcoh(zzcpc zzcpcVar, zzcpd zzcpdVar, String str, boolean z, boolean z2, zzapj zzapjVar, zzbki zzbkiVar, zzchu zzchuVar, zzbjy zzbjyVar, com.google.android.gms.ads.internal.zzl zzlVar, com.google.android.gms.ads.internal.zza zzaVar, zzbew zzbewVar, zzfil zzfilVar, zzfio zzfioVar) {
        super(zzcpcVar);
        zzfio zzfioVar2;
        this.zzl = false;
        this.zzm = false;
        this.zzx = true;
        this.zzy = "";
        this.zzR = -1;
        this.zzS = -1;
        this.zzT = -1;
        this.zzU = -1;
        this.zzb = zzcpcVar;
        this.zzq = zzcpdVar;
        this.zzr = str;
        this.zzu = z;
        this.zzc = zzapjVar;
        this.zzd = zzbkiVar;
        this.zze = zzchuVar;
        this.zzf = zzlVar;
        this.zzg = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzW = windowManager;
        com.google.android.gms.ads.internal.zzt.zzp();
        DisplayMetrics zzr = com.google.android.gms.ads.internal.util.zzs.zzr(windowManager);
        this.zzh = zzr;
        this.zzi = zzr.density;
        this.zzX = zzbewVar;
        this.zzj = zzfilVar;
        this.zzk = zzfioVar;
        this.zzQ = new com.google.android.gms.ads.internal.util.zzci(zzcpcVar.zza(), this, this, null);
        setBackgroundColor(0);
        final WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Unable to enable Javascript.", e2);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjB)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzt.zzp().zzc(zzcpcVar, zzchuVar.zza));
        com.google.android.gms.ads.internal.zzt.zzp();
        final Context context = getContext();
        com.google.android.gms.ads.internal.util.zzcb.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WebSettings webSettings = settings;
                Context context2 = context;
                zzfvb zzfvbVar = zzs.zza;
                webSettings.setDatabasePath(context2.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaE)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return true;
            }
        });
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        zzaU();
        addJavascriptInterface(new zzcoo(this, new zzcon(this), null), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzbc();
        zzbjw zzbjwVar = new zzbjw(new zzbjy(true, "make_wv", this.zzr));
        this.zzK = zzbjwVar;
        zzbjwVar.zza().zzc(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() && (zzfioVar2 = this.zzk) != null && zzfioVar2.zzb != null) {
            zzbjwVar.zza().zzd("gqi", this.zzk.zzb);
        }
        zzbjwVar.zza();
        zzbjv zzf = zzbjy.zzf();
        this.zzI = zzf;
        zzbjwVar.zzb("native:view_create", zzf);
        this.zzJ = null;
        this.zzH = null;
        com.google.android.gms.ads.internal.util.zzce.zza().zzb(zzcpcVar);
        com.google.android.gms.ads.internal.zzt.zzo().zzr();
    }

    private final synchronized void zzaU() {
        zzfil zzfilVar = this.zzj;
        if (zzfilVar != null && zzfilVar.zzao) {
            com.google.android.gms.ads.internal.util.zze.zze("Disabling hardware acceleration on an overlay.");
            zzaW();
            return;
        }
        if (!this.zzu && !this.zzq.zzi()) {
            com.google.android.gms.ads.internal.util.zze.zze("Enabling hardware acceleration on an AdView.");
            zzaY();
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zze("Enabling hardware acceleration on an overlay.");
        zzaY();
    }

    private final synchronized void zzaV() {
        if (this.zzP) {
            return;
        }
        this.zzP = true;
        com.google.android.gms.ads.internal.zzt.zzo().zzq();
    }

    private final synchronized void zzaW() {
        if (!this.zzv) {
            setLayerType(1, null);
        }
        this.zzv = true;
    }

    private final void zzaX(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", true != z ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        zzd("onAdVisibilityChanged", hashMap);
    }

    private final synchronized void zzaY() {
        if (this.zzv) {
            setLayerType(0, null);
        }
        this.zzv = false;
    }

    private final synchronized void zzaZ(String str) {
        try {
            super.loadUrl("about:blank");
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzu(th, "AdWebViewImpl.loadUrlUnsafe");
            com.google.android.gms.ads.internal.util.zze.zzk("Could not call loadUrl in destroy(). ", th);
        }
    }

    private final void zzba() {
        zzbjq.zza(this.zzK.zza(), this.zzI, "aeh2");
    }

    private final synchronized void zzbb() {
        Map map = this.zzV;
        if (map != null) {
            for (zzcma zzcmaVar : map.values()) {
                zzcmaVar.release();
            }
        }
        this.zzV = null;
    }

    private final void zzbc() {
        zzbjw zzbjwVar = this.zzK;
        if (zzbjwVar == null) {
            return;
        }
        zzbjy zza2 = zzbjwVar.zza();
        zzbjo zzf = com.google.android.gms.ads.internal.zzt.zzo().zzf();
        if (zzf != null) {
            zzf.zzf(zza2);
        }
    }

    private final synchronized void zzbd() {
        Boolean zzk = com.google.android.gms.ads.internal.zzt.zzo().zzk();
        this.zzw = zzk;
        if (zzk == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                zzaS(true);
            } catch (IllegalStateException unused) {
                zzaS(false);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcno
    public final synchronized void destroy() {
        zzbc();
        this.zzQ.zza();
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzo;
        if (zzlVar != null) {
            zzlVar.zzb();
            this.zzo.zzl();
            this.zzo = null;
        }
        this.zzp = null;
        this.zzn.zzz();
        this.zzE = null;
        this.zzf = null;
        setOnClickListener(null);
        setOnTouchListener(null);
        if (this.zzt) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzy().zzd(this);
        zzbb();
        this.zzt = true;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziX)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza("Initiating WebView self destruct sequence in 3...");
            com.google.android.gms.ads.internal.util.zze.zza("Loading blank page in WebView, 2...");
            zzaZ("about:blank");
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
        zzW();
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(String str, ValueCallback valueCallback) {
        if (!zzaB()) {
            super.evaluateJavascript(str, valueCallback);
            return;
        }
        zzcho.zzl("#004 The webview is destroyed. Ignoring action.", null);
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzt) {
                    this.zzn.zzz();
                    com.google.android.gms.ads.internal.zzt.zzy().zzd(this);
                    zzbb();
                    zzaV();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcno
    public final synchronized void loadData(String str, String str2, String str3) {
        if (zzaB()) {
            com.google.android.gms.ads.internal.util.zze.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcno
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (zzaB()) {
            com.google.android.gms.ads.internal.util.zze.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcno
    public final synchronized void loadUrl(String str) {
        if (zzaB()) {
            com.google.android.gms.ads.internal.util.zze.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadUrl(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcnv zzcnvVar = this.zzn;
        if (zzcnvVar != null) {
            zzcnvVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!zzaB()) {
            this.zzQ.zzc();
        }
        boolean z = this.zzA;
        zzcnv zzcnvVar = this.zzn;
        if (zzcnvVar != null && zzcnvVar.zzL()) {
            if (!this.zzB) {
                this.zzn.zza();
                this.zzn.zzb();
                this.zzB = true;
            }
            zzaT();
            z = true;
        }
        zzaX(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        zzcnv zzcnvVar;
        synchronized (this) {
            if (!zzaB()) {
                this.zzQ.zzd();
            }
            super.onDetachedFromWindow();
            if (this.zzB && (zzcnvVar = this.zzn) != null && zzcnvVar.zzL() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzn.zza();
                this.zzn.zzb();
                this.zzB = false;
            }
        }
        zzaX(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.zzt.zzp();
            com.google.android.gms.ads.internal.util.zzs.zzQ(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            com.google.android.gms.ads.internal.util.zze.zze("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (zzaB()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zzaT = zzaT();
        com.google.android.gms.ads.internal.overlay.zzl zzN = zzN();
        if (zzN == null || !zzaT) {
            return;
        }
        zzN.zzm();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01b5 A[Catch: all -> 0x01db, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:9:0x000f, B:11:0x0015, B:13:0x0019, B:16:0x0023, B:18:0x002b, B:21:0x0030, B:23:0x0038, B:25:0x004a, B:28:0x004f, B:30:0x0056, B:34:0x0060, B:37:0x0065, B:40:0x0077, B:46:0x0088, B:44:0x0082, B:49:0x0095, B:51:0x009d, B:53:0x00af, B:56:0x00b4, B:58:0x00d0, B:60:0x00d8, B:59:0x00d4, B:63:0x00dd, B:65:0x00e5, B:68:0x00f2, B:77:0x0116, B:79:0x011d, B:84:0x0125, B:86:0x0137, B:88:0x0145, B:92:0x0152, B:95:0x0157, B:97:0x019d, B:98:0x01a1, B:100:0x01a8, B:105:0x01b5, B:107:0x01bb, B:108:0x01be, B:110:0x01c2, B:111:0x01cb, B:114:0x01d6), top: B:120:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0137 A[Catch: all -> 0x01db, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:9:0x000f, B:11:0x0015, B:13:0x0019, B:16:0x0023, B:18:0x002b, B:21:0x0030, B:23:0x0038, B:25:0x004a, B:28:0x004f, B:30:0x0056, B:34:0x0060, B:37:0x0065, B:40:0x0077, B:46:0x0088, B:44:0x0082, B:49:0x0095, B:51:0x009d, B:53:0x00af, B:56:0x00b4, B:58:0x00d0, B:60:0x00d8, B:59:0x00d4, B:63:0x00dd, B:65:0x00e5, B:68:0x00f2, B:77:0x0116, B:79:0x011d, B:84:0x0125, B:86:0x0137, B:88:0x0145, B:92:0x0152, B:95:0x0157, B:97:0x019d, B:98:0x01a1, B:100:0x01a8, B:105:0x01b5, B:107:0x01bb, B:108:0x01be, B:110:0x01c2, B:111:0x01cb, B:114:0x01d6), top: B:120:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0157 A[Catch: all -> 0x01db, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:9:0x000f, B:11:0x0015, B:13:0x0019, B:16:0x0023, B:18:0x002b, B:21:0x0030, B:23:0x0038, B:25:0x004a, B:28:0x004f, B:30:0x0056, B:34:0x0060, B:37:0x0065, B:40:0x0077, B:46:0x0088, B:44:0x0082, B:49:0x0095, B:51:0x009d, B:53:0x00af, B:56:0x00b4, B:58:0x00d0, B:60:0x00d8, B:59:0x00d4, B:63:0x00dd, B:65:0x00e5, B:68:0x00f2, B:77:0x0116, B:79:0x011d, B:84:0x0125, B:86:0x0137, B:88:0x0145, B:92:0x0152, B:95:0x0157, B:97:0x019d, B:98:0x01a1, B:100:0x01a8, B:105:0x01b5, B:107:0x01bb, B:108:0x01be, B:110:0x01c2, B:111:0x01cb, B:114:0x01d6), top: B:120:0x0003 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final synchronized void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcoh.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcno
    public final void onPause() {
        if (zzaB()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Could not pause webview.", e2);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcno
    public final void onResume() {
        if (zzaB()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Could not resume webview.", e2);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.zzn.zzL() || this.zzn.zzJ()) {
            zzapj zzapjVar = this.zzc;
            if (zzapjVar != null) {
                zzapjVar.zzd(motionEvent);
            }
            zzbki zzbkiVar = this.zzd;
            if (zzbkiVar != null) {
                zzbkiVar.zzb(motionEvent);
            }
        } else {
            synchronized (this) {
                zzbly zzblyVar = this.zzC;
                if (zzblyVar != null) {
                    zzblyVar.zzd(motionEvent);
                }
            }
        }
        if (zzaB()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcno
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcnv) {
            this.zzn = (zzcnv) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzaB()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Could not stop loading webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzA(int i) {
        this.zzM = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzB(boolean z) {
        this.zzn.zzC(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final synchronized void zzC(int i) {
        this.zzL = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzD(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final synchronized void zzE(zzcok zzcokVar) {
        if (this.zzz != null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzz = zzcokVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcnf
    public final zzfil zzF() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final Context zzG() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcoy
    public final View zzH() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final WebView zzI() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final WebViewClient zzJ() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcow
    public final zzapj zzK() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized zzbdk zzL() {
        return this.zzE;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized zzbly zzM() {
        return this.zzC;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized com.google.android.gms.ads.internal.overlay.zzl zzN() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized com.google.android.gms.ads.internal.overlay.zzl zzO() {
        return this.zzO;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final /* synthetic */ zzcpb zzP() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcov
    public final synchronized zzcpd zzQ() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcol
    public final zzfio zzR() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized IObjectWrapper zzS() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final zzgfb zzT() {
        zzbki zzbkiVar = this.zzd;
        return zzbkiVar == null ? zzger.zzi(null) : zzbkiVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized String zzU() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzV(zzfil zzfilVar, zzfio zzfioVar) {
        this.zzj = zzfilVar;
        this.zzk = zzfioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzW() {
        com.google.android.gms.ads.internal.util.zze.zza("Destroying WebView!");
        zzaV();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcog(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzX() {
        zzba();
        HashMap hashMap = new HashMap(1);
        hashMap.put(MediationMetaData.KEY_VERSION, this.zze.zza);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzY(int i) {
        if (i == 0) {
            zzbjq.zza(this.zzK.zza(), this.zzI, "aebb2");
        }
        zzba();
        this.zzK.zza();
        this.zzK.zza().zzd("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put(MediationMetaData.KEY_VERSION, this.zze.zza);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzZ() {
        if (this.zzH == null) {
            zzbjq.zza(this.zzK.zza(), this.zzI, "aes2");
            this.zzK.zza();
            zzbjv zzf = zzbjy.zzf();
            this.zzH = zzf;
            this.zzK.zzb("native:view_show", zzf);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(MediationMetaData.KEY_VERSION, this.zze.zza);
        zzd("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void zza(String str) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaA(final boolean z, final int i) {
        destroy();
        this.zzX.zzb(new zzbev() { // from class: com.google.android.gms.internal.ads.zzcoe
            @Override // com.google.android.gms.internal.ads.zzbev
            public final void zza(zzbgl zzbglVar) {
                boolean z2 = z;
                int i2 = i;
                int i3 = zzcoh.zza;
                zzbiq zza2 = zzbir.zza();
                if (zza2.zzc() != z2) {
                    zza2.zza(z2);
                }
                zza2.zzb(i2);
                zzbglVar.zzj((zzbir) zza2.zzak());
            }
        });
        this.zzX.zzc(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized boolean zzaB() {
        return this.zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized boolean zzaC() {
        return this.zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final boolean zzaD() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized boolean zzaE() {
        return this.zzx;
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaF(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z) {
        this.zzn.zzs(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaG(com.google.android.gms.ads.internal.util.zzbr zzbrVar, zzekc zzekcVar, zzdzh zzdzhVar, zzfnt zzfntVar, String str, String str2, int i) {
        this.zzn.zzt(zzbrVar, zzekcVar, zzdzhVar, zzfntVar, str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaH(boolean z, int i, boolean z2) {
        this.zzn.zzu(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaI(boolean z, int i, String str, boolean z2) {
        this.zzn.zzw(z, i, str, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcot
    public final void zzaJ(boolean z, int i, String str, String str2, boolean z2) {
        this.zzn.zzx(z, i, str, str2, z2);
    }

    public final zzcnv zzaL() {
        return this.zzn;
    }

    final synchronized Boolean zzaM() {
        return this.zzw;
    }

    protected final synchronized void zzaP(String str, ValueCallback valueCallback) {
        if (zzaB()) {
            com.google.android.gms.ads.internal.util.zze.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            evaluateJavascript(str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzaQ(String str) {
        if (PlatformVersion.isAtLeastKitKat()) {
            if (zzaM() == null) {
                zzbd();
            }
            if (zzaM().booleanValue()) {
                zzaP(str, null);
                return;
            } else {
                zzaR("javascript:".concat(str));
                return;
            }
        }
        zzaR("javascript:".concat(str));
    }

    protected final synchronized void zzaR(String str) {
        if (zzaB()) {
            com.google.android.gms.ads.internal.util.zze.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    final void zzaS(Boolean bool) {
        synchronized (this) {
            this.zzw = bool;
        }
        com.google.android.gms.ads.internal.zzt.zzo().zzv(bool);
    }

    public final boolean zzaT() {
        int i;
        int i2;
        boolean z = false;
        if (this.zzn.zzK() || this.zzn.zzL()) {
            com.google.android.gms.ads.internal.client.zzay.zzb();
            DisplayMetrics displayMetrics = this.zzh;
            int zzw = zzchh.zzw(displayMetrics, displayMetrics.widthPixels);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            DisplayMetrics displayMetrics2 = this.zzh;
            int zzw2 = zzchh.zzw(displayMetrics2, displayMetrics2.heightPixels);
            Activity zza2 = this.zzb.zza();
            if (zza2 == null || zza2.getWindow() == null) {
                i = zzw;
                i2 = zzw2;
            } else {
                com.google.android.gms.ads.internal.zzt.zzp();
                int[] zzN = com.google.android.gms.ads.internal.util.zzs.zzN(zza2);
                com.google.android.gms.ads.internal.client.zzay.zzb();
                int zzw3 = zzchh.zzw(this.zzh, zzN[0]);
                com.google.android.gms.ads.internal.client.zzay.zzb();
                i2 = zzchh.zzw(this.zzh, zzN[1]);
                i = zzw3;
            }
            int i3 = this.zzS;
            if (i3 == zzw && this.zzR == zzw2 && this.zzT == i && this.zzU == i2) {
                return false;
            }
            if (i3 != zzw || this.zzR != zzw2) {
                z = true;
            }
            this.zzS = zzw;
            this.zzR = zzw2;
            this.zzT = i;
            this.zzU = i2;
            new zzbyt(this, "").zzi(zzw, zzw2, i, i2, this.zzh.density, this.zzW.getDefaultDisplay().getRotation());
            return z;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaa() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzab(boolean z) {
        this.zzn.zzh(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzac() {
        this.zzQ.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzad(String str, String str2, String str3) {
        String str4;
        if (!zzaB()) {
            String[] strArr = new String[1];
            String str5 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzN);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(MediationMetaData.KEY_VERSION, str5);
                jSONObject.put(ServiceProvider.NAMED_SDK, "Google Mobile Ads");
                jSONObject.put("sdkVersion", "12.4.51-000");
                str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
            } catch (JSONException e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Unable to build MRAID_ENV", e2);
                str4 = null;
            }
            strArr[0] = str4;
            super.loadDataWithBaseURL(str, zzcou.zza(str2, strArr), "text/html", C.UTF8_NAME, null);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zzj("#004 The webview is destroyed. Ignoring action.");
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzae() {
        if (this.zzJ == null) {
            this.zzK.zza();
            zzbjv zzf = zzbjy.zzf();
            this.zzJ = zzf;
            this.zzK.zzb("native:view_load", zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaf(String str, zzbqd zzbqdVar) {
        zzcnv zzcnvVar = this.zzn;
        if (zzcnvVar != null) {
            zzcnvVar.zzy(str, zzbqdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzag() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzah(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.zzo = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzai(zzcpd zzcpdVar) {
        this.zzq = zzcpdVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzaj(zzbdk zzbdkVar) {
        this.zzE = zzbdkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzak(boolean z) {
        this.zzx = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzal() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzam(Context context) {
        this.zzb.setBaseContext(context);
        this.zzQ.zze(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzan(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzo;
        if (zzlVar != null) {
            zzlVar.zzw(this.zzn.zzK(), z);
        } else {
            this.zzs = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzao(zzblw zzblwVar) {
        this.zzD = zzblwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzap(boolean z) {
        boolean z2 = this.zzu;
        this.zzu = z;
        zzaU();
        if (z != z2) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzO)).booleanValue() || !this.zzq.zzi()) {
                new zzbyt(this, "").zzk(true != z ? RewardedVideo.VIDEO_MODE_DEFAULT : "expanded");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzaq(zzbly zzblyVar) {
        this.zzC = zzblyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzar(IObjectWrapper iObjectWrapper) {
        this.zzp = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzas(int i) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzo;
        if (zzlVar != null) {
            zzlVar.zzy(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzat(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.zzO = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzau(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar;
        int i = this.zzF + (true != z ? -1 : 1);
        this.zzF = i;
        if (i > 0 || (zzlVar = this.zzo) == null) {
            return;
        }
        zzlVar.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized void zzav(boolean z) {
        if (z) {
            setBackgroundColor(0);
        }
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzo;
        if (zzlVar != null) {
            zzlVar.zzz(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzaw(String str, zzbqd zzbqdVar) {
        zzcnv zzcnvVar = this.zzn;
        if (zzcnvVar != null) {
            zzcnvVar.zzH(str, zzbqdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final void zzax(String str, Predicate predicate) {
        zzcnv zzcnvVar = this.zzn;
        if (zzcnvVar != null) {
            zzcnvVar.zzI(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized boolean zzay() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcno
    public final synchronized boolean zzaz() {
        return this.zzF > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void zzb(String str, String str2) {
        zzaQ(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void zzbn() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
        if (zzlVar != null) {
            zzlVar.zzbn();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void zzbo() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
        if (zzlVar != null) {
            zzlVar.zzbo();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final zzcjm zzbp() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final synchronized zzcma zzbq(String str) {
        Map map = this.zzV;
        if (map == null) {
            return null;
        }
        return (zzcma) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final void zzc(zzbbw zzbbwVar) {
        synchronized (this) {
            this.zzA = zzbbwVar.zzj;
        }
        zzaX(zzbbwVar.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zzd(String str, Map map) {
        try {
            zze(str, com.google.android.gms.ads.internal.client.zzay.zzb().zzj(map));
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zzj("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zze(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        com.google.android.gms.ads.internal.util.zze.zze("Dispatching AFMA event: ".concat(sb.toString()));
        zzaQ(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzf() {
        return this.zzN;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzg() {
        return this.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final synchronized int zzh() {
        return this.zzL;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzi() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final int zzj() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcop, com.google.android.gms.internal.ads.zzcjx
    public final Activity zzk() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final void zzl(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final com.google.android.gms.ads.internal.zza zzm() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final zzbjv zzn() {
        return this.zzI;
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final zzbjw zzo() {
        return this.zzK;
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcox, com.google.android.gms.internal.ads.zzcjx
    public final zzchu zzp() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzq() {
        zzcnv zzcnvVar = this.zzn;
        if (zzcnvVar != null) {
            zzcnvVar.zzq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzr() {
        zzcnv zzcnvVar = this.zzn;
        if (zzcnvVar != null) {
            zzcnvVar.zzr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final synchronized zzcok zzs() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final synchronized String zzt() {
        zzfio zzfioVar = this.zzk;
        if (zzfioVar != null) {
            return zzfioVar.zzb;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final synchronized String zzu() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzcno, com.google.android.gms.internal.ads.zzcjx
    public final synchronized void zzv(String str, zzcma zzcmaVar) {
        if (this.zzV == null) {
            this.zzV = new HashMap();
        }
        this.zzV.put(str, zzcmaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzw() {
        com.google.android.gms.ads.internal.overlay.zzl zzN = zzN();
        if (zzN != null) {
            zzN.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzx(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(FirebaseAnalytics.Param.SUCCESS, true != z ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        hashMap.put("duration", Long.toString(j));
        zzd("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final synchronized void zzy() {
        zzblw zzblwVar = this.zzD;
        if (zzblwVar != null) {
            final zzdue zzdueVar = (zzdue) zzblwVar;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduc
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdue.this.zzd();
                    } catch (RemoteException e2) {
                        com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjx
    public final void zzz(int i) {
        this.zzN = i;
    }
}
