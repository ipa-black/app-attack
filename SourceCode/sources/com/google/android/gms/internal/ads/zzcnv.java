package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public class zzcnv extends WebViewClient implements zzcpb {
    public static final /* synthetic */ int zzb = 0;
    private boolean zzA;
    private final HashSet zzB;
    private View.OnAttachStateChangeListener zzC;
    protected zzcep zza;
    private final zzcno zzc;
    private final zzbew zzd;
    private final HashMap zze;
    private final Object zzf;
    private com.google.android.gms.ads.internal.client.zza zzg;
    private com.google.android.gms.ads.internal.overlay.zzo zzh;
    private zzcoz zzi;
    private zzcpa zzj;
    private zzbow zzk;
    private zzboy zzl;
    private zzdmc zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private com.google.android.gms.ads.internal.overlay.zzz zzs;
    private zzbys zzt;
    private com.google.android.gms.ads.internal.zzb zzu;
    private zzbyn zzv;
    private zzfpo zzw;
    private boolean zzx;
    private boolean zzy;
    private int zzz;

    public zzcnv(zzcno zzcnoVar, zzbew zzbewVar, boolean z) {
        zzbys zzbysVar = new zzbys(zzcnoVar, zzcnoVar.zzG(), new zzbit(zzcnoVar.getContext()));
        this.zze = new HashMap();
        this.zzf = new Object();
        this.zzd = zzbewVar;
        this.zzc = zzcnoVar;
        this.zzp = z;
        this.zzt = zzbysVar;
        this.zzv = null;
        this.zzB = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfb)).split(",")));
    }

    private static WebResourceResponse zzN() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaD)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    private final WebResourceResponse zzO(String str, Map map) throws IOException {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(264);
            int i = 0;
            while (true) {
                i++;
                if (i > 20) {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(10000);
                openConnection.setReadTimeout(10000);
                for (Map.Entry entry : map.entrySet()) {
                    openConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                if (!(openConnection instanceof HttpURLConnection)) {
                    throw new IOException("Invalid protocol.");
                }
                httpURLConnection = (HttpURLConnection) openConnection;
                com.google.android.gms.ads.internal.zzt.zzp().zze(this.zzc.getContext(), this.zzc.zzp().zza, false, httpURLConnection, false, 60000);
                zzchn zzchnVar = new zzchn(null);
                zzchnVar.zzc(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                zzchnVar.zze(httpURLConnection, responseCode);
                if (responseCode < 300 || responseCode >= 400) {
                    break;
                }
                String headerField = httpURLConnection.getHeaderField("Location");
                if (headerField == null) {
                    throw new IOException("Missing Location header in redirect");
                }
                if (headerField.startsWith("tel:")) {
                    return null;
                }
                URL url2 = new URL(url, headerField);
                String protocol = url2.getProtocol();
                if (protocol == null) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Protocol is null");
                    return zzN();
                } else if (!protocol.equals("http") && !protocol.equals("https")) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Unsupported scheme: " + protocol);
                    return zzN();
                } else {
                    com.google.android.gms.ads.internal.util.zze.zze("Redirecting to " + headerField);
                    httpURLConnection.disconnect();
                    url = url2;
                }
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            return com.google.android.gms.ads.internal.util.zzs.zzM(httpURLConnection);
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzP(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.zza("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbqd) it.next()).zza(this.zzc, map);
        }
    }

    private final void zzQ() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzC;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzR(final View view, final zzcep zzcepVar, final int i) {
        if (!zzcepVar.zzi() || i <= 0) {
            return;
        }
        zzcepVar.zzg(view);
        if (zzcepVar.zzi()) {
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnr
                @Override // java.lang.Runnable
                public final void run() {
                    zzcnv.this.zzn(view, zzcepVar, i);
                }
            }, 100L);
        }
    }

    private static final boolean zzS(boolean z, zzcno zzcnoVar) {
        return (!z || zzcnoVar.zzQ().zzi() || zzcnoVar.zzU().equals("interstitial_mb")) ? false : true;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzi(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            if (this.zzc.zzaB()) {
                com.google.android.gms.ads.internal.util.zze.zza("Blank page loaded, 1...");
                this.zzc.zzW();
                return;
            }
            this.zzx = true;
            zzcpa zzcpaVar = this.zzj;
            if (zzcpaVar != null) {
                zzcpaVar.zza();
                this.zzj = null;
            }
            zzg();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzc.zzaA(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case TsExtractor.TS_STREAM_TYPE_AC3 /* 129 */:
                    case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            if (this.zzn && webView == this.zzc.zzI()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                        zzcep zzcepVar = this.zza;
                        if (zzcepVar != null) {
                            zzcepVar.zzh(str);
                        }
                        this.zzg = null;
                    }
                    zzdmc zzdmcVar = this.zzm;
                    if (zzdmcVar != null) {
                        zzdmcVar.zzq();
                        this.zzm = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.zzc.zzI().willNotDraw()) {
                try {
                    zzapj zzK = this.zzc.zzK();
                    if (zzK != null && zzK.zzf(parse)) {
                        Context context = this.zzc.getContext();
                        zzcno zzcnoVar = this.zzc;
                        parse = zzK.zza(parse, context, (View) zzcnoVar, zzcnoVar.zzk());
                    }
                } catch (zzapk unused) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzu;
                if (zzbVar == null || zzbVar.zzc()) {
                    zzs(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", parse.toString(), null, null, null, null, null, null), true);
                } else {
                    this.zzu.zzb(str);
                }
            } else {
                com.google.android.gms.ads.internal.util.zze.zzj("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            }
        } else {
            zzi(parse);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzA(zzcoz zzcozVar) {
        this.zzi = zzcozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzB(int i, int i2) {
        zzbyn zzbynVar = this.zzv;
        if (zzbynVar != null) {
            zzbynVar.zzd(i, i2);
        }
    }

    public final void zzC(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzD(boolean z) {
        synchronized (this.zzf) {
            this.zzr = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzE() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzp = true;
            zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnq
                @Override // java.lang.Runnable
                public final void run() {
                    zzcnv.this.zzm();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzF(boolean z) {
        synchronized (this.zzf) {
            this.zzq = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzG(zzcpa zzcpaVar) {
        this.zzj = zzcpaVar;
    }

    public final void zzH(String str, zzbqd zzbqdVar) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzbqdVar);
        }
    }

    public final void zzI(String str, Predicate predicate) {
        synchronized (this.zzf) {
            List<zzbqd> list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbqd zzbqdVar : list) {
                if (predicate.apply(zzbqdVar)) {
                    arrayList.add(zzbqdVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final boolean zzJ() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzr;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final boolean zzK() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzp;
        }
        return z;
    }

    public final boolean zzL() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzq;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzM(com.google.android.gms.ads.internal.client.zza zzaVar, zzbow zzbowVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzboy zzboyVar, com.google.android.gms.ads.internal.overlay.zzz zzzVar, boolean z, zzbqf zzbqfVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbyu zzbyuVar, zzcep zzcepVar, final zzekc zzekcVar, final zzfpo zzfpoVar, zzdzh zzdzhVar, zzfnt zzfntVar, zzbqv zzbqvVar, final zzdmc zzdmcVar, zzbqu zzbquVar, zzbqo zzbqoVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.zzc.getContext(), zzcepVar, null) : zzbVar;
        this.zzv = new zzbyn(this.zzc, zzbyuVar);
        this.zza = zzcepVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaL)).booleanValue()) {
            zzy("/adMetadata", new zzbov(zzbowVar));
        }
        if (zzboyVar != null) {
            zzy("/appEvent", new zzbox(zzboyVar));
        }
        zzy("/backButton", zzbqc.zzj);
        zzy("/refresh", zzbqc.zzk);
        zzy("/canOpenApp", zzbqc.zzb);
        zzy("/canOpenURLs", zzbqc.zza);
        zzy("/canOpenIntents", zzbqc.zzc);
        zzy("/close", zzbqc.zzd);
        zzy("/customClose", zzbqc.zze);
        zzy("/instrument", zzbqc.zzn);
        zzy("/delayPageLoaded", zzbqc.zzp);
        zzy("/delayPageClosed", zzbqc.zzq);
        zzy("/getLocationInfo", zzbqc.zzr);
        zzy("/log", zzbqc.zzg);
        zzy("/mraid", new zzbqj(zzbVar2, this.zzv, zzbyuVar));
        zzbys zzbysVar = this.zzt;
        if (zzbysVar != null) {
            zzy("/mraidLoaded", zzbysVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        zzy("/open", new zzbqn(zzbVar2, this.zzv, zzekcVar, zzdzhVar, zzfntVar));
        zzy("/precache", new zzcmb());
        zzy("/touch", zzbqc.zzi);
        zzy("/video", zzbqc.zzl);
        zzy("/videoMeta", zzbqc.zzm);
        if (zzekcVar == null || zzfpoVar == null) {
            zzy("/click", zzbqc.zza(zzdmcVar));
            zzy("/httpTrack", zzbqc.zzf);
        } else {
            zzy("/click", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzfjn
                @Override // com.google.android.gms.internal.ads.zzbqd
                public final void zza(Object obj, Map map) {
                    zzdmc zzdmcVar2 = zzdmc.this;
                    zzfpo zzfpoVar2 = zzfpoVar;
                    zzekc zzekcVar2 = zzekcVar;
                    zzcno zzcnoVar = (zzcno) obj;
                    zzbqc.zzd(map, zzdmcVar2);
                    String str = (String) map.get("u");
                    if (str == null) {
                        com.google.android.gms.ads.internal.util.zze.zzj("URL missing from click GMSG.");
                    } else {
                        zzger.zzr(zzbqc.zzb(zzcnoVar, str), new zzfjo(zzcnoVar, zzfpoVar2, zzekcVar2), zzcib.zza);
                    }
                }
            });
            zzy("/httpTrack", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzfjm
                @Override // com.google.android.gms.internal.ads.zzbqd
                public final void zza(Object obj, Map map) {
                    zzfpo zzfpoVar2 = zzfpo.this;
                    zzekc zzekcVar2 = zzekcVar;
                    zzcnf zzcnfVar = (zzcnf) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        com.google.android.gms.ads.internal.util.zze.zzj("URL missing from httpTrack GMSG.");
                    } else if (!zzcnfVar.zzF().zzak) {
                        zzfpoVar2.zzc(str, null);
                    } else {
                        zzekcVar2.zzd(new zzeke(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), ((zzcol) zzcnfVar).zzR().zzb, str, 2));
                    }
                }
            });
        }
        if (com.google.android.gms.ads.internal.zzt.zzn().zzu(this.zzc.getContext())) {
            zzy("/logScionEvent", new zzbqi(this.zzc.getContext()));
        }
        if (zzbqfVar != null) {
            zzy("/setInterstitialProperties", new zzbqe(zzbqfVar, null));
        }
        if (zzbqvVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue()) {
                zzy("/inspectorNetworkExtras", zzbqvVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziq)).booleanValue() && zzbquVar != null) {
            zzy("/shareSheet", zzbquVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzit)).booleanValue() && zzbqoVar != null) {
            zzy("/inspectorOutOfContextTest", zzbqoVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjv)).booleanValue()) {
            zzy("/bindPlayStoreOverlay", zzbqc.zzu);
            zzy("/presentPlayStoreOverlay", zzbqc.zzv);
            zzy("/expandPlayStoreOverlay", zzbqc.zzw);
            zzy("/collapsePlayStoreOverlay", zzbqc.zzx);
            zzy("/closePlayStoreOverlay", zzbqc.zzy);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcK)).booleanValue()) {
                zzy("/setPAIDPersonalizationEnabled", zzbqc.zzA);
                zzy("/resetPAID", zzbqc.zzz);
            }
        }
        this.zzg = zzaVar;
        this.zzh = zzoVar;
        this.zzk = zzbowVar;
        this.zzl = zzboyVar;
        this.zzs = zzzVar;
        this.zzu = zzbVar3;
        this.zzm = zzdmcVar;
        this.zzn = z;
        this.zzw = zzfpoVar;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WebResourceResponse zzc(String str, Map map) {
        zzbef zzb2;
        try {
            if (!((Boolean) zzbla.zza.zze()).booleanValue() || this.zzw == null || !"oda".equals(Uri.parse(str).getScheme())) {
                String zzc = zzcfv.zzc(str, this.zzc.getContext(), this.zzA);
                if (zzc.equals(str)) {
                    zzbei zza = zzbei.zza(Uri.parse(str));
                    if (zza == null || (zzb2 = com.google.android.gms.ads.internal.zzt.zzc().zzb(zza)) == null || !zzb2.zze()) {
                        if (zzchn.zzl() && ((Boolean) zzbkv.zzb.zze()).booleanValue()) {
                            return zzO(str, map);
                        }
                        return null;
                    }
                    return new WebResourceResponse("", "", zzb2.zzc());
                }
                return zzO(zzc, map);
            }
            this.zzw.zzc(str, null);
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        } catch (Exception | NoClassDefFoundError e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "AdWebViewClient.interceptRequest");
            return zzN();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final com.google.android.gms.ads.internal.zzb zzd() {
        return this.zzu;
    }

    public final void zzg() {
        if (this.zzi != null && ((this.zzx && this.zzz <= 0) || this.zzy || this.zzo)) {
            boolean z = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue() && this.zzc.zzo() != null) {
                zzbjq.zza(this.zzc.zzo().zza(), this.zzc.zzn(), "awfllc");
            }
            zzcoz zzcozVar = this.zzi;
            if (this.zzy || this.zzo) {
                z = false;
            }
            zzcozVar.zza(z);
            this.zzi = null;
        }
        this.zzc.zzae();
    }

    public final void zzh(boolean z) {
        this.zzA = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzi(Uri uri) {
        final String str;
        String path = uri.getPath();
        List list = (List) this.zze.get(path);
        if (path == null || list == null) {
            com.google.android.gms.ads.internal.util.zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(String.valueOf(uri))));
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgh)).booleanValue() || com.google.android.gms.ads.internal.zzt.zzo().zzf() == null) {
                return;
            }
            if (path == null || path.length() < 2) {
                str = "null";
            } else {
                str = path.substring(1);
            }
            zzcib.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnp
                @Override // java.lang.Runnable
                public final void run() {
                    String str2 = str;
                    int i = zzcnv.zzb;
                    com.google.android.gms.ads.internal.zzt.zzo().zzf().zze(str2);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfa)).booleanValue() && this.zzB.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfc)).intValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                zzger.zzr(com.google.android.gms.ads.internal.zzt.zzp().zzb(uri), new zzcnt(this, list, path, uri), zzcib.zze);
                return;
            }
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        zzP(com.google.android.gms.ads.internal.util.zzs.zzL(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzj() {
        zzbew zzbewVar = this.zzd;
        if (zzbewVar != null) {
            zzbewVar.zzc(10005);
        }
        this.zzy = true;
        zzg();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzk() {
        synchronized (this.zzf) {
        }
        this.zzz++;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzl() {
        this.zzz--;
        zzg();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm() {
        this.zzc.zzac();
        com.google.android.gms.ads.internal.overlay.zzl zzN = this.zzc.zzN();
        if (zzN != null) {
            zzN.zzx();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(View view, zzcep zzcepVar, int i) {
        zzR(view, zzcepVar, i - 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzo(int i, int i2, boolean z) {
        zzbys zzbysVar = this.zzt;
        if (zzbysVar != null) {
            zzbysVar.zzb(i, i2);
        }
        zzbyn zzbynVar = this.zzv;
        if (zzbynVar != null) {
            zzbynVar.zzc(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcpb
    public final void zzp() {
        zzcep zzcepVar = this.zza;
        if (zzcepVar != null) {
            WebView zzI = this.zzc.zzI();
            if (!ViewCompat.isAttachedToWindow(zzI)) {
                zzQ();
                zzcns zzcnsVar = new zzcns(this, zzcepVar);
                this.zzC = zzcnsVar;
                ((View) this.zzc).addOnAttachStateChangeListener(zzcnsVar);
                return;
            }
            zzR(zzI, zzcepVar, 10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzq() {
        zzdmc zzdmcVar = this.zzm;
        if (zzdmcVar != null) {
            zzdmcVar.zzq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzr() {
        zzdmc zzdmcVar = this.zzm;
        if (zzdmcVar != null) {
            zzdmcVar.zzr();
        }
    }

    public final void zzs(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z) {
        boolean zzaC = this.zzc.zzaC();
        boolean zzS = zzS(zzaC, this.zzc);
        boolean z2 = true;
        if (!zzS && z) {
            z2 = false;
        }
        zzv(new AdOverlayInfoParcel(zzcVar, zzS ? null : this.zzg, zzaC ? null : this.zzh, this.zzs, this.zzc.zzp(), this.zzc, z2 ? null : this.zzm));
    }

    public final void zzt(com.google.android.gms.ads.internal.util.zzbr zzbrVar, zzekc zzekcVar, zzdzh zzdzhVar, zzfnt zzfntVar, String str, String str2, int i) {
        zzcno zzcnoVar = this.zzc;
        zzv(new AdOverlayInfoParcel(zzcnoVar, zzcnoVar.zzp(), zzbrVar, zzekcVar, zzdzhVar, zzfntVar, str, str2, 14));
    }

    public final void zzu(boolean z, int i, boolean z2) {
        boolean zzS = zzS(this.zzc.zzaC(), this.zzc);
        boolean z3 = true;
        if (!zzS && z2) {
            z3 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zzS ? null : this.zzg;
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzh;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zzs;
        zzcno zzcnoVar = this.zzc;
        zzv(new AdOverlayInfoParcel(zzaVar, zzoVar, zzzVar, zzcnoVar, z, i, zzcnoVar.zzp(), z3 ? null : this.zzm));
    }

    public final void zzv(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbyn zzbynVar = this.zzv;
        boolean zze = zzbynVar != null ? zzbynVar.zze() : false;
        com.google.android.gms.ads.internal.zzt.zzi();
        com.google.android.gms.ads.internal.overlay.zzm.zza(this.zzc.getContext(), adOverlayInfoParcel, !zze);
        zzcep zzcepVar = this.zza;
        if (zzcepVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzcepVar.zzh(str);
        }
    }

    public final void zzw(boolean z, int i, String str, boolean z2) {
        boolean zzaC = this.zzc.zzaC();
        boolean zzS = zzS(zzaC, this.zzc);
        boolean z3 = true;
        if (!zzS && z2) {
            z3 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zzS ? null : this.zzg;
        zzcnu zzcnuVar = zzaC ? null : new zzcnu(this.zzc, this.zzh);
        zzbow zzbowVar = this.zzk;
        zzboy zzboyVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zzs;
        zzcno zzcnoVar = this.zzc;
        zzv(new AdOverlayInfoParcel(zzaVar, zzcnuVar, zzbowVar, zzboyVar, zzzVar, zzcnoVar, z, i, str, zzcnoVar.zzp(), z3 ? null : this.zzm));
    }

    public final void zzx(boolean z, int i, String str, String str2, boolean z2) {
        boolean zzaC = this.zzc.zzaC();
        boolean zzS = zzS(zzaC, this.zzc);
        boolean z3 = true;
        if (!zzS && z2) {
            z3 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zzS ? null : this.zzg;
        zzcnu zzcnuVar = zzaC ? null : new zzcnu(this.zzc, this.zzh);
        zzbow zzbowVar = this.zzk;
        zzboy zzboyVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zzs;
        zzcno zzcnoVar = this.zzc;
        zzv(new AdOverlayInfoParcel(zzaVar, zzcnuVar, zzbowVar, zzboyVar, zzzVar, zzcnoVar, z, i, str, str2, zzcnoVar.zzp(), z3 ? null : this.zzm));
    }

    public final void zzy(String str, zzbqd zzbqdVar) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList();
                this.zze.put(str, list);
            }
            list.add(zzbqdVar);
        }
    }

    public final void zzz() {
        zzcep zzcepVar = this.zza;
        if (zzcepVar != null) {
            zzcepVar.zze();
            this.zza = null;
        }
        zzQ();
        synchronized (this.zzf) {
            this.zze.clear();
            this.zzg = null;
            this.zzh = null;
            this.zzi = null;
            this.zzj = null;
            this.zzk = null;
            this.zzl = null;
            this.zzn = false;
            this.zzp = false;
            this.zzq = false;
            this.zzs = null;
            this.zzu = null;
            this.zzt = null;
            zzbyn zzbynVar = this.zzv;
            if (zzbynVar != null) {
                zzbynVar.zza(true);
                this.zzv = null;
            }
            this.zzw = null;
        }
    }
}
