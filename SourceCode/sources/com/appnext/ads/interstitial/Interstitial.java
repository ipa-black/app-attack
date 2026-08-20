package com.appnext.ads.interstitial;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.appnext.ads.AdsError;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.ECPM;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.appnext.core.d;
import com.appnext.core.f;
import com.appnext.core.j;
import com.appnext.core.p;
import com.appnext.core.webview.AppnextWebView;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class Interstitial extends Ad {
    private static final String JS_URL = "https://cdn.appnext.com/tools/sdk/interstitial/v75/script.min.js";
    protected static final String TID = "301";
    public static final String TYPE_MANAGED = "managed";
    public static final String TYPE_STATIC = "static";
    public static final String TYPE_VIDEO = "video";
    protected static final String VID = "2.5.1.472";
    protected static Interstitial currentAd;
    private boolean autoPlay;
    private String buttonColor;
    private boolean calledShow;
    private Boolean canClose;
    private boolean configLoaded;
    private String creativeType;
    private String language;
    private boolean setAutoPlay;
    private boolean setCanClose;
    private String skipText;
    private String titleText;
    private OnAdError userOnAdError;

    @Override // com.appnext.core.Ad
    @Deprecated
    public void setOrientation(String str) {
    }

    public Interstitial(Context context, String str) {
        super(context, str);
        this.creativeType = TYPE_MANAGED;
        this.titleText = "";
        this.skipText = "";
        this.autoPlay = true;
        this.setAutoPlay = false;
        this.setCanClose = false;
        this.configLoaded = false;
        this.calledShow = false;
        this.buttonColor = "";
        this.language = "";
        init();
    }

    public Interstitial(Context context, String str, InterstitialConfig interstitialConfig) {
        super(context, str);
        this.creativeType = TYPE_MANAGED;
        this.titleText = "";
        this.skipText = "";
        this.autoPlay = true;
        this.setAutoPlay = false;
        this.setCanClose = false;
        this.configLoaded = false;
        this.calledShow = false;
        this.buttonColor = "";
        this.language = "";
        init();
        if (interstitialConfig != null) {
            setPostback(interstitialConfig.getPostback());
            setCategories(interstitialConfig.getCategories());
            setButtonColor(interstitialConfig.getButtonColor());
            if (interstitialConfig.backButtonCanClose != null) {
                setBackButtonCanClose(interstitialConfig.isBackButtonCanClose());
            }
            setSkipText(interstitialConfig.getSkipText());
            if (interstitialConfig.autoPlay != null) {
                setAutoPlay(interstitialConfig.isAutoPlay());
            }
            setCreativeType(interstitialConfig.getCreativeType());
            setOrientation(interstitialConfig.getOrientation());
            if (interstitialConfig.mute != null) {
                setMute(interstitialConfig.getMute());
            }
            setMinVideoLength(interstitialConfig.getMinVideoLength());
            setMaxVideoLength(interstitialConfig.getMaxVideoLength());
            setLanguage(interstitialConfig.getLanguage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Interstitial(Interstitial interstitial) {
        super(interstitial);
        this.creativeType = TYPE_MANAGED;
        this.titleText = "";
        this.skipText = "";
        this.autoPlay = true;
        this.setAutoPlay = false;
        this.setCanClose = false;
        this.configLoaded = false;
        this.calledShow = false;
        this.buttonColor = "";
        this.language = "";
        this.creativeType = interstitial.creativeType;
        this.titleText = interstitial.titleText;
        this.skipText = interstitial.skipText;
        this.autoPlay = interstitial.autoPlay;
        this.setAutoPlay = interstitial.setAutoPlay;
        this.setCanClose = interstitial.setCanClose;
        this.configLoaded = interstitial.configLoaded;
        this.calledShow = interstitial.calledShow;
        this.canClose = interstitial.canClose;
        this.buttonColor = interstitial.buttonColor;
        this.language = interstitial.language;
        this.userOnAdError = interstitial.userOnAdError;
    }

    private void init() {
        loadConfig();
        AppnextWebView.u(this.context).a(getPageUrl(), (AppnextWebView.c) null);
        super.setOnAdErrorCallback(new OnAdError() { // from class: com.appnext.ads.interstitial.Interstitial.1
            @Override // com.appnext.core.callbacks.OnAdError
            public final void adError(String str) {
                String str2;
                str.hashCode();
                char c2 = 65535;
                switch (str.hashCode()) {
                    case -2026653947:
                        if (str.equals(AppnextError.INTERNAL_ERROR)) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1958363695:
                        if (str.equals(AppnextError.NO_ADS)) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -1477010874:
                        if (str.equals(AppnextError.CONNECTION_ERROR)) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case -507110949:
                        if (str.equals(AppnextError.NO_MARKET)) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 297538105:
                        if (str.equals(AdsError.AD_NOT_READY)) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 350741825:
                        if (str.equals(AppnextError.TIMEOUT)) {
                            c2 = 5;
                            break;
                        }
                        break;
                    case 844170097:
                        if (str.equals(AppnextError.SLOW_CONNECTION)) {
                            c2 = 6;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        str2 = com.appnext.ads.a.x;
                        break;
                    case 1:
                        str2 = com.appnext.ads.a.w;
                        break;
                    case 2:
                        str2 = com.appnext.ads.a.t;
                        break;
                    case 3:
                        str2 = com.appnext.ads.a.y;
                        break;
                    case 4:
                        str2 = com.appnext.ads.a.v;
                        break;
                    case 5:
                        str2 = com.appnext.ads.a.z;
                        break;
                    case 6:
                        str2 = com.appnext.ads.a.u;
                        break;
                    default:
                        str2 = "";
                        break;
                }
                f.a(Interstitial.this.getTID(), Interstitial.this.getVID(), Interstitial.this.getAUID(), Interstitial.this.getPlacementID(), Interstitial.this.getSessionId(), str2, "current_interstitial", "", "");
                if (Interstitial.this.userOnAdError != null) {
                    Interstitial.this.userOnAdError.adError(str);
                }
            }
        });
    }

    @Override // com.appnext.core.Ad
    public void loadAd() {
        if (getPlacementID().equals("")) {
            throw new IllegalArgumentException("Placement ID cannot be empty");
        }
        if (!f.a(this.context, "android.permission.INTERNET")) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.CONNECTION_ERROR);
                return;
            }
            return;
        }
        new Thread(new Runnable() { // from class: com.appnext.ads.interstitial.Interstitial.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (Interstitial.this.context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
                        f.a("http://www.appnext.com/myid.html", (HashMap<String, String>) null);
                    } else {
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) Interstitial.this.context.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            throw new IOException();
                        }
                    }
                    Interstitial.this.getConfig().a(Interstitial.this.context, new p.a() { // from class: com.appnext.ads.interstitial.Interstitial.2.2
                        @Override // com.appnext.core.p.a
                        public final void b(HashMap<String, Object> hashMap) {
                            Interstitial.this.load();
                        }

                        @Override // com.appnext.core.p.a
                        public final void error(String str) {
                            Interstitial.this.load();
                        }
                    });
                } catch (Throwable unused) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.ads.interstitial.Interstitial.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (Interstitial.this.getOnAdErrorCallback() != null) {
                                Interstitial.this.getOnAdErrorCallback().adError(AppnextError.CONNECTION_ERROR);
                            }
                        }
                    });
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load() {
        a.G().a(this.context, this, getPlacementID(), new d.a() { // from class: com.appnext.ads.interstitial.Interstitial.3
            @Override // com.appnext.core.d.a
            public final <T> void a(T t) {
                AppnextAd appnextAd;
                try {
                    appnextAd = a.G().a(Interstitial.this.context, (ArrayList) t, Interstitial.this.getCreative(), Interstitial.this);
                } catch (Throwable unused) {
                    if (Interstitial.this.getOnAdErrorCallback() != null) {
                        Interstitial.this.getOnAdErrorCallback().adError(AppnextError.NO_ADS);
                    }
                    appnextAd = null;
                }
                if (appnextAd != null) {
                    if (Interstitial.this.getOnAdLoadedCallback() != null) {
                        Interstitial.this.getOnAdLoadedCallback().adLoaded(appnextAd.getBannerID(), appnextAd.getCreativeType());
                    }
                } else if (Interstitial.this.getOnAdErrorCallback() != null) {
                    Interstitial.this.getOnAdErrorCallback().adError(AppnextError.NO_ADS);
                }
            }

            @Override // com.appnext.core.d.a
            public final void error(String str) {
                if (Interstitial.this.getOnAdErrorCallback() != null) {
                    Interstitial.this.getOnAdErrorCallback().adError(str);
                }
            }
        }, getCreative());
    }

    @Override // com.appnext.core.Ad
    public void showAd() {
        if (getPlacementID().equals("")) {
            throw new IllegalArgumentException("Placement ID cannot be empty");
        }
        if (!f.a(this.context, "android.permission.INTERNET")) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.CONNECTION_ERROR);
                return;
            }
            return;
        }
        int Z = f.Z(getConfig().get("min_internet_connection"));
        int Z2 = f.Z(f.o(this.context));
        if (Z2 == -1) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.CONNECTION_ERROR);
            }
        } else if (Z2 < Z) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.SLOW_CONNECTION);
            }
        } else {
            currentAd = this;
            if (a.G().d(this)) {
                startInterstitialActivity();
            } else {
                a.G().a(this.context, this, getPlacementID(), new d.a() { // from class: com.appnext.ads.interstitial.Interstitial.4
                    @Override // com.appnext.core.d.a
                    public final <T> void a(T t) {
                        Interstitial.this.startInterstitialActivity();
                    }

                    @Override // com.appnext.core.d.a
                    public final void error(final String str) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.ads.interstitial.Interstitial.4.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (Interstitial.this.getOnAdErrorCallback() != null) {
                                    Interstitial.this.getOnAdErrorCallback().adError(str);
                                }
                            }
                        });
                    }
                }, getCreative());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInterstitialActivity() {
        Intent activityIntent = getActivityIntent();
        if (activityIntent == null) {
            throw new IllegalArgumentException("null intent");
        }
        this.context.startActivity(activityIntent);
    }

    @Override // com.appnext.core.Ad
    public void getECPM(final OnECPMLoaded onECPMLoaded) {
        if (onECPMLoaded == null) {
            throw new IllegalArgumentException("Callback cannot be null");
        }
        a.G().a(this.context, (Ad) this, getPlacementID(), new d.a() { // from class: com.appnext.ads.interstitial.Interstitial.5
            @Override // com.appnext.core.d.a
            public final <T> void a(T t) {
                AppnextAd a2 = a.G().a(Interstitial.this.context, (ArrayList) t, Interstitial.this.getCreative(), Interstitial.this);
                if (a2 != null) {
                    onECPMLoaded.ecpm(new ECPM(a2.getECPM(), a2.getPPR(), a2.getBannerID()));
                } else {
                    onECPMLoaded.error(AppnextError.NO_ADS);
                }
            }

            @Override // com.appnext.core.d.a
            public final void error(String str) {
                onECPMLoaded.error(str);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCreative() {
        int Z = f.Z(getConfig().get("min_internet_connection"));
        int Z2 = f.Z(getConfig().get("min_internet_connection_video"));
        int Z3 = f.Z(f.o(this.context));
        if (Z3 >= Z && Z3 < Z2) {
            return "static";
        }
        return getCreativeType();
    }

    protected Intent getActivityIntent() {
        Intent intent = new Intent(this.context, InterstitialActivity.class);
        intent.setFlags(268435456);
        intent.addFlags(67108864);
        intent.putExtra("id", getPlacementID());
        if (this.setAutoPlay) {
            intent.putExtra("auto_play", this.autoPlay);
        }
        if (this.setCanClose) {
            intent.putExtra("can_close", isBackButtonCanClose());
        }
        if (this.setMute) {
            intent.putExtra("mute", getMute());
        }
        intent.putExtra("cat", getCategories());
        intent.putExtra("pbk", getPostback());
        intent.putExtra("b_color", getButtonColor());
        intent.putExtra("skip_title", getSkipText());
        intent.putExtra("creative", getCreative());
        return intent;
    }

    @Override // com.appnext.core.Ad
    public boolean isAdLoaded() {
        return !getPlacementID().equals("") && a.G().d(this);
    }

    protected p getConfig() {
        return c.K();
    }

    private void loadConfig() {
        getConfig().q(ScarConstants.TOKEN_ID_KEY, getTID());
        getConfig().a(this.context, new p.a() { // from class: com.appnext.ads.interstitial.Interstitial.6
            @Override // com.appnext.core.p.a
            public final void b(HashMap<String, Object> hashMap) {
                Interstitial.this.configLoaded = true;
                j.bj().b(Integer.parseInt(Interstitial.this.getConfig().get("banner_expiration_time")));
                if (Interstitial.this.calledShow) {
                    Interstitial.this.showAd();
                }
            }

            @Override // com.appnext.core.p.a
            public final void error(String str) {
                Interstitial.this.configLoaded = true;
                j.bj().b(Integer.parseInt(Interstitial.this.getConfig().get("banner_expiration_time")));
                if (Interstitial.this.calledShow) {
                    Interstitial.this.showAd();
                }
            }
        });
    }

    @Override // com.appnext.core.Ad
    public void setOnAdErrorCallback(OnAdError onAdError) {
        this.userOnAdError = onAdError;
    }

    @Override // com.appnext.core.Ad
    public OnAdError getOnAdErrorCallback() {
        return super.getOnAdErrorCallback();
    }

    public void setCreativeType(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Wrong creative type");
        }
        if (str.equals(TYPE_MANAGED) || str.equals("static") || str.equals("video")) {
            this.creativeType = str;
            return;
        }
        throw new IllegalArgumentException("Wrong creative type");
    }

    public String getCreativeType() {
        return this.creativeType;
    }

    @Deprecated
    public void setBackButtonCanClose(boolean z) {
        this.setCanClose = true;
        this.canClose = Boolean.valueOf(z);
    }

    @Deprecated
    public boolean isBackButtonCanClose() {
        Boolean bool = this.canClose;
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean isAutoPlay() {
        return this.autoPlay;
    }

    public void setAutoPlay(boolean z) {
        this.setAutoPlay = true;
        this.autoPlay = z;
    }

    public void setSkipText(String str) {
        if (str == null) {
            str = "";
        }
        this.skipText = str;
    }

    public String getSkipText() {
        return this.skipText;
    }

    public String getButtonColor() {
        return this.buttonColor;
    }

    public void setButtonColor(String str) {
        if (str == null || str.equals("")) {
            this.buttonColor = "";
            return;
        }
        if (!str.startsWith("#")) {
            str = "#" + str;
        }
        Color.parseColor(str);
        this.buttonColor = str;
    }

    private boolean hasVideo(AppnextAd appnextAd) {
        return (appnextAd.getVideoUrl().equals("") && appnextAd.getVideoUrlHigh().equals("") && appnextAd.getVideoUrl30Sec().equals("") && appnextAd.getVideoUrlHigh30Sec().equals("")) ? false : true;
    }

    public void setParams(String str, String str2) {
        getConfig().s(str, str2);
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.Ad
    public String getSessionId() {
        return super.getSessionId();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getPageUrl() {
        return JS_URL;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.appnext.core.webview.a getFallback() {
        return new b();
    }

    @Override // com.appnext.core.Ad
    public String getVID() {
        return "2.5.1.472";
    }

    @Override // com.appnext.core.Ad
    public String getTID() {
        return TID;
    }

    @Override // com.appnext.core.Ad
    public String getAUID() {
        return "600";
    }

    @Override // com.appnext.core.Ad
    public void destroy() {
        super.destroy();
        currentAd = null;
    }
}
