package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzapj;
import com.google.android.gms.internal.ads.zzapk;
import com.google.android.gms.internal.ads.zzbjb;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbks;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcgc;
import com.google.android.gms.internal.ads.zzcge;
import com.google.android.gms.internal.ads.zzcgj;
import com.google.android.gms.internal.ads.zzcho;
import com.google.android.gms.internal.ads.zzchu;
import com.google.android.gms.internal.ads.zzcib;
import com.google.android.gms.internal.ads.zzcpj;
import com.google.android.gms.internal.ads.zzddx;
import com.google.android.gms.internal.ads.zzdjy;
import com.google.android.gms.internal.ads.zzdve;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzdzm;
import com.google.android.gms.internal.ads.zzfje;
import com.google.android.gms.internal.ads.zzfkc;
import com.google.android.gms.internal.ads.zzfok;
import com.google.android.gms.internal.ads.zzfol;
import com.google.android.gms.internal.ads.zzfow;
import com.google.android.gms.internal.ads.zzfoy;
import com.google.android.gms.internal.ads.zzfpo;
import com.google.android.gms.internal.ads.zzfxt;
import com.google.android.gms.internal.ads.zzfyt;
import com.google.android.gms.internal.ads.zzgdx;
import com.google.android.gms.internal.ads.zzgdy;
import com.google.android.gms.internal.ads.zzgei;
import com.google.android.gms.internal.ads.zzger;
import com.google.android.gms.internal.ads.zzgfb;
import com.google.android.gms.internal.ads.zzgfc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzac extends zzcge {
    protected static final List zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    protected static final List zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    protected static final List zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    protected static final List zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    private final zzchu zzA;
    private String zzB;
    private final List zzD;
    private final List zzE;
    private final List zzF;
    private final List zzG;
    private final zzcpj zzf;
    private Context zzg;
    private final zzapj zzh;
    private final zzfkc zzi;
    private final zzgfc zzk;
    private final ScheduledExecutorService zzl;
    private zzcao zzm;
    private final zzc zzq;
    private final zzdzm zzr;
    private final zzfpo zzs;
    private zzdzc zzj = null;
    private Point zzn = new Point();
    private Point zzo = new Point();
    private final Set zzp = Collections.newSetFromMap(new WeakHashMap());
    private final AtomicInteger zzz = new AtomicInteger(0);
    private final zzgfc zzH = zzcib.zze;
    private final boolean zzt = ((Boolean) zzba.zzc().zzb(zzbjj.zzgH)).booleanValue();
    private final boolean zzu = ((Boolean) zzba.zzc().zzb(zzbjj.zzgG)).booleanValue();
    private final boolean zzv = ((Boolean) zzba.zzc().zzb(zzbjj.zzgI)).booleanValue();
    private final boolean zzw = ((Boolean) zzba.zzc().zzb(zzbjj.zzgK)).booleanValue();
    private final String zzx = (String) zzba.zzc().zzb(zzbjj.zzgJ);
    private final String zzy = (String) zzba.zzc().zzb(zzbjj.zzgL);
    private final String zzC = (String) zzba.zzc().zzb(zzbjj.zzgM);

    public zzac(zzcpj zzcpjVar, Context context, zzapj zzapjVar, zzfkc zzfkcVar, zzgfc zzgfcVar, ScheduledExecutorService scheduledExecutorService, zzdzm zzdzmVar, zzfpo zzfpoVar, zzchu zzchuVar) {
        List list;
        this.zzf = zzcpjVar;
        this.zzg = context;
        this.zzh = zzapjVar;
        this.zzi = zzfkcVar;
        this.zzk = zzgfcVar;
        this.zzl = scheduledExecutorService;
        this.zzq = zzcpjVar.zzn();
        this.zzr = zzdzmVar;
        this.zzs = zzfpoVar;
        this.zzA = zzchuVar;
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzgN)).booleanValue()) {
            this.zzD = zzY((String) zzba.zzc().zzb(zzbjj.zzgO));
            this.zzE = zzY((String) zzba.zzc().zzb(zzbjj.zzgP));
            this.zzF = zzY((String) zzba.zzc().zzb(zzbjj.zzgQ));
            list = zzY((String) zzba.zzc().zzb(zzbjj.zzgR));
        } else {
            this.zzD = zza;
            this.zzE = zzb;
            this.zzF = zzc;
            list = zzd;
        }
        this.zzG = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzF(zzac zzacVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzacVar.zzO((Uri) it.next())) {
                zzacVar.zzz.getAndIncrement();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzG(final zzac zzacVar, final String str, final String str2, final zzdzc zzdzcVar) {
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzgs)).booleanValue()) {
            if (((Boolean) zzba.zzc().zzb(zzbjj.zzgy)).booleanValue()) {
                zzcib.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzac.this.zzJ(str, str2, zzdzcVar);
                    }
                });
            } else {
                zzacVar.zzq.zzd(str, str2, zzdzcVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Uri zzQ(Uri uri, String str) {
        return !TextUtils.isEmpty(str) ? zzX(uri, "nas", str) : uri;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final zzh zzR(Context context, String str, String str2, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        char c2;
        zzfje zzfjeVar = new zzfje();
        if ("REWARDED".equals(str2)) {
            zzfjeVar.zzo().zza(2);
        } else if ("REWARDED_INTERSTITIAL".equals(str2)) {
            zzfjeVar.zzo().zza(3);
        }
        zzg zzo = this.zzf.zzo();
        zzddx zzddxVar = new zzddx();
        zzddxVar.zzc(context);
        if (str == null) {
            str = "adUnitId";
        }
        zzfjeVar.zzs(str);
        if (zzlVar == null) {
            zzlVar = new com.google.android.gms.ads.internal.client.zzm().zza();
        }
        zzfjeVar.zzE(zzlVar);
        if (zzqVar == null) {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals("NATIVE")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -428325382:
                    if (str2.equals("APP_OPEN_AD")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 543046670:
                    if (str2.equals("REWARDED")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1854800829:
                    if (str2.equals("REWARDED_INTERSTITIAL")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1951953708:
                    if (str2.equals("BANNER")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                zzqVar = new com.google.android.gms.ads.internal.client.zzq(context, AdSize.BANNER);
            } else if (c2 == 1 || c2 == 2) {
                zzqVar = com.google.android.gms.ads.internal.client.zzq.zzd();
            } else if (c2 == 3) {
                zzqVar = com.google.android.gms.ads.internal.client.zzq.zzc();
            } else if (c2 == 4) {
                zzqVar = com.google.android.gms.ads.internal.client.zzq.zzb();
            } else {
                zzqVar = new com.google.android.gms.ads.internal.client.zzq();
            }
        }
        zzfjeVar.zzr(zzqVar);
        zzfjeVar.zzx(true);
        zzddxVar.zzf(zzfjeVar.zzG());
        zzo.zza(zzddxVar.zzg());
        zzae zzaeVar = new zzae();
        zzaeVar.zza(str2);
        zzo.zzb(new zzag(zzaeVar, null));
        new zzdjy();
        zzh zzc2 = zzo.zzc();
        this.zzj = zzc2.zza();
        return zzc2;
    }

    private final zzgfb zzS(final String str) {
        final zzdve[] zzdveVarArr = new zzdve[1];
        zzgfb zzn = zzger.zzn(this.zzi.zza(), new zzgdy() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzac.this.zzv(zzdveVarArr, str, (zzdve) obj);
            }
        }, this.zzk);
        zzn.zzc(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
            @Override // java.lang.Runnable
            public final void run() {
                zzac.this.zzI(zzdveVarArr);
            }
        }, this.zzk);
        return zzger.zzf(zzger.zzm((zzgei) zzger.zzo(zzgei.zzv(zzn), ((Integer) zzba.zzc().zzb(zzbjj.zzgW)).intValue(), TimeUnit.MILLISECONDS, this.zzl), new zzfxt() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzj
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                int i = zzac.zze;
                return ((JSONObject) obj).optString("nas");
            }
        }, this.zzk), Exception.class, new zzfxt() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzk
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                int i = zzac.zze;
                zzcho.zzh("", (Exception) obj);
                return null;
            }
        }, this.zzk);
    }

    private final void zzT(List list, final IObjectWrapper iObjectWrapper, zzcaf zzcafVar, boolean z) {
        zzgfb zzb2;
        if (!((Boolean) zzba.zzc().zzb(zzbjj.zzgV)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzj("The updating URL feature is not enabled.");
            try {
                zzcafVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e2) {
                zzcho.zzh("", e2);
                return;
            }
        }
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (zzO((Uri) it.next())) {
                i++;
            }
        }
        if (i > 1) {
            com.google.android.gms.ads.internal.util.zze.zzj("Multiple google urls found: ".concat(String.valueOf(String.valueOf(list))));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (!zzO(uri)) {
                com.google.android.gms.ads.internal.util.zze.zzj("Not a Google URL: ".concat(String.valueOf(String.valueOf(uri))));
                zzb2 = zzger.zzi(uri);
            } else {
                zzb2 = this.zzk.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzs
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzac.this.zzm(uri, iObjectWrapper);
                    }
                });
                if (zzW()) {
                    zzb2 = zzger.zzn(zzb2, new zzgdy() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzt
                        @Override // com.google.android.gms.internal.ads.zzgdy
                        public final zzgfb zza(Object obj) {
                            zzgfb zzm;
                            zzm = zzger.zzm(r0.zzS("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzfxt() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzn
                                @Override // com.google.android.gms.internal.ads.zzfxt
                                public final Object apply(Object obj2) {
                                    return zzac.zzQ(r2, (String) obj2);
                                }
                            }, zzac.this.zzk);
                            return zzm;
                        }
                    }, this.zzk);
                } else {
                    com.google.android.gms.ads.internal.util.zze.zzi("Asset view map is empty.");
                }
            }
            arrayList.add(zzb2);
        }
        zzger.zzr(zzger.zze(arrayList), new zzz(this, zzcafVar, z), this.zzf.zzB());
    }

    private final void zzU(final List list, final IObjectWrapper iObjectWrapper, zzcaf zzcafVar, boolean z) {
        if (!((Boolean) zzba.zzc().zzb(zzbjj.zzgV)).booleanValue()) {
            try {
                zzcafVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e2) {
                zzcho.zzh("", e2);
                return;
            }
        }
        zzgfb zzb2 = this.zzk.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzac.this.zzC(list, iObjectWrapper);
            }
        });
        if (zzW()) {
            zzb2 = zzger.zzn(zzb2, new zzgdy() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzv
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    return zzac.this.zzw((ArrayList) obj);
                }
            }, this.zzk);
        } else {
            com.google.android.gms.ads.internal.util.zze.zzi("Asset view map is empty.");
        }
        zzger.zzr(zzb2, new zzy(this, zzcafVar, z), this.zzf.zzB());
    }

    private static boolean zzV(Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                    continue;
                }
            }
        }
        return false;
    }

    private final boolean zzW() {
        Map map;
        zzcao zzcaoVar = this.zzm;
        return (zzcaoVar == null || (map = zzcaoVar.zzb) == null || map.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri zzX(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            return Uri.parse(uri2.substring(0, i) + str + "=" + str2 + "&" + uri2.substring(i));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    private static final List zzY(String str) {
        String[] split = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (!zzfyt.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzfow zzr(zzgfb zzgfbVar, zzcgj zzcgjVar) {
        if (zzfoy.zza() && ((Boolean) zzbks.zze.zze()).booleanValue()) {
            try {
                zzfow zzb2 = ((zzh) zzger.zzp(zzgfbVar)).zzb();
                zzb2.zzd(new ArrayList(Collections.singletonList(zzcgjVar.zzb)));
                com.google.android.gms.ads.internal.client.zzl zzlVar = zzcgjVar.zzd;
                zzb2.zzb(zzlVar == null ? "" : zzlVar.zzp);
                return zzb2;
            } catch (ExecutionException e2) {
                com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ArrayList zzB(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzP(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zzX(uri, "nas", str));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ArrayList zzC(List list, IObjectWrapper iObjectWrapper) throws Exception {
        String str;
        if (this.zzh.zzc() != null) {
            str = this.zzh.zzc().zzh(this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } else {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            throw new Exception("Failed to get view signals.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzP(uri)) {
                com.google.android.gms.ads.internal.util.zze.zzj("Not a Google URL: ".concat(String.valueOf(String.valueOf(uri))));
                arrayList.add(uri);
            } else {
                arrayList.add(zzX(uri, "ms", str));
            }
        }
        if (arrayList.isEmpty()) {
            throw new Exception("Empty impression URLs result.");
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzH(WebView webView) {
        CookieManager zzb2 = com.google.android.gms.ads.internal.zzt.zzq().zzb(this.zzg);
        boolean acceptThirdPartyCookies = zzb2 != null ? zzb2.acceptThirdPartyCookies(webView) : false;
        if (((Boolean) zzba.zzc().zzb(zzbjj.zziC)).booleanValue()) {
            zzdzm zzdzmVar = this.zzr;
            zzdzc zzdzcVar = this.zzj;
            Pair[] pairArr = new Pair[1];
            pairArr[0] = new Pair("tpc", true != acceptThirdPartyCookies ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            zzf.zzc(zzdzmVar, zzdzcVar, "reg_wv", pairArr);
        }
        if (acceptThirdPartyCookies) {
            Context context = this.zzg;
            zzbjb zzbjbVar = zzbjj.zziE;
            AdRequest.Builder builder = new AdRequest.Builder();
            builder.setRequestAgent("paw");
            InterstitialAd.load(context, (String) zzba.zzc().zzb(zzbjbVar), builder.build(), new zzab(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzI(zzdve[] zzdveVarArr) {
        zzdve zzdveVar = zzdveVarArr[0];
        if (zzdveVar != null) {
            this.zzi.zzb(zzger.zzi(zzdveVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzJ(String str, String str2, zzdzc zzdzcVar) {
        this.zzq.zzd(str, str2, zzdzcVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzO(Uri uri) {
        return zzV(uri, this.zzD, this.zzE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzP(Uri uri) {
        return zzV(uri, this.zzF, this.zzG);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zze(IObjectWrapper iObjectWrapper, final zzcgj zzcgjVar, zzcgc zzcgcVar) {
        zzgfb zzc2;
        zzgfb zzgfbVar;
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        this.zzg = context;
        zzfol zza2 = zzfok.zza(context, 22);
        zza2.zzh();
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzji)).booleanValue()) {
            zzgfb zzb2 = zzcib.zza.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzac.this.zzq(zzcgjVar);
                }
            });
            zzgfbVar = zzb2;
            zzc2 = zzger.zzn(zzb2, new zzgdy() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzr
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    return ((zzh) obj).zzc();
                }
            }, zzcib.zza);
        } else {
            zzh zzR = zzR(this.zzg, zzcgjVar.zza, zzcgjVar.zzb, zzcgjVar.zzc, zzcgjVar.zzd);
            zzgfb zzi = zzger.zzi(zzR);
            zzc2 = zzR.zzc();
            zzgfbVar = zzi;
        }
        zzger.zzr(zzc2, new zzx(this, zzgfbVar, zzcgjVar, zzcgcVar, zza2, com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()), this.zzf.zzB());
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzf(zzcao zzcaoVar) {
        this.zzm = zzcaoVar;
        this.zzi.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzg(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) {
        zzT(list, iObjectWrapper, zzcafVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) {
        zzU(list, iObjectWrapper, zzcafVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzi(IObjectWrapper iObjectWrapper) {
        zzgfb zzc2;
        if (((Boolean) zzba.zzc().zzb(zzbjj.zziw)).booleanValue()) {
            if (((Boolean) zzba.zzc().zzb(zzbjj.zzix)).booleanValue()) {
                if (!((Boolean) zzba.zzc().zzb(zzbjj.zziA)).booleanValue()) {
                    if (((Boolean) zzba.zzc().zzb(zzbjj.zzji)).booleanValue()) {
                        zzc2 = zzger.zzl(new zzgdx() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzw
                            @Override // com.google.android.gms.internal.ads.zzgdx
                            public final zzgfb zza() {
                                return zzac.this.zzu();
                            }
                        }, zzcib.zza);
                    } else {
                        zzc2 = zzR(this.zzg, null, AdFormat.BANNER.name(), null, null).zzc();
                    }
                    zzger.zzr(zzc2, new zzaa(this), this.zzf.zzB());
                }
            }
            final WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                com.google.android.gms.ads.internal.util.zze.zzg("The webView cannot be null.");
            } else if (this.zzp.contains(webView)) {
                com.google.android.gms.ads.internal.util.zze.zzi("This webview has already been registered.");
            } else {
                this.zzp.add(webView);
                webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzr), "gmaSdk");
                if (((Boolean) zzba.zzc().zzb(zzbjj.zziD)).booleanValue()) {
                    this.zzH.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzo
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzac.this.zzH(webView);
                        }
                    });
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzgV)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
            zzcao zzcaoVar = this.zzm;
            this.zzn = zzbx.zza(motionEvent, zzcaoVar == null ? null : zzcaoVar.zza);
            if (motionEvent.getAction() == 0) {
                this.zzo = this.zzn;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.setLocation(this.zzn.x, this.zzn.y);
            this.zzh.zzd(obtain);
            obtain.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzk(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) {
        zzT(list, iObjectWrapper, zzcafVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) {
        zzU(list, iObjectWrapper, zzcafVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Uri zzm(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        try {
            uri = this.zzh.zza(uri, this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } catch (zzapk e2) {
            zzcho.zzk("", e2);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzh zzq(zzcgj zzcgjVar) throws Exception {
        return zzR(this.zzg, zzcgjVar.zza, zzcgjVar.zzb, zzcgjVar.zzc, zzcgjVar.zzd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzu() throws Exception {
        return zzR(this.zzg, null, AdFormat.BANNER.name(), null, null).zzc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzv(zzdve[] zzdveVarArr, String str, zzdve zzdveVar) throws Exception {
        zzdveVarArr[0] = zzdveVar;
        Context context = this.zzg;
        zzcao zzcaoVar = this.zzm;
        Map map = zzcaoVar.zzb;
        JSONObject zzd2 = zzbx.zzd(context, map, map, zzcaoVar.zza, null);
        JSONObject zzg = zzbx.zzg(this.zzg, this.zzm.zza);
        JSONObject zzf = zzbx.zzf(this.zzm.zza);
        JSONObject zze2 = zzbx.zze(this.zzg, this.zzm.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", zzd2);
        jSONObject.put("ad_view_signal", zzg);
        jSONObject.put("scroll_view_signal", zzf);
        jSONObject.put("lock_screen_signal", zze2);
        if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
            jSONObject.put("click_signal", zzbx.zzc(null, this.zzg, this.zzo, this.zzn));
        }
        return zzdveVar.zzd(str, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzw(final ArrayList arrayList) throws Exception {
        return zzger.zzm(zzS("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfxt() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzp
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return zzac.this.zzB(arrayList, (String) obj);
            }
        }, this.zzk);
    }
}
