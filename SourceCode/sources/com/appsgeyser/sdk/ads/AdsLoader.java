package com.appsgeyser.sdk.ads;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.ads.AdsBannerWebViewClient;
import com.appsgeyser.sdk.ads.behavior.BehaviorAcceptor;
import com.appsgeyser.sdk.ads.behavior.BehaviorFactory;
import com.appsgeyser.sdk.ads.behavior.BehaviorVisitor;
import com.appsgeyser.sdk.ads.behavior.loaderBehaviors.LoaderBehavior;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParameters;
import com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient;
import com.appsgeyser.sdk.server.network.NetworkManager;
import com.appsgeyser.sdk.utils.BannerUtils;
import com.appsgeyser.sdk.utils.EndpointGetter;
import com.google.android.exoplayer2.C;
import com.yandex.metrica.YandexMetrica;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class AdsLoader implements BehaviorAcceptor, AdsBannerWebViewClient.OnPageFinishedListener, AdsBannerWebViewClient.OnPageStartedListener {
    private static final int AD_DELAY = 1000;
    private static final int AD_DELAY_PERIOD = 100;
    private AdView adView;
    private String bannerUrl;
    private BehaviorFactory.ClickBehavior clickBehavior;
    private String clickUrl;
    private HeadersReceiver headersReceiver;
    private AdsLoadingFinishedListener loadingFinishedListener;
    private final float DEFAULT_HIDE_TIMEOUT = 60000.0f;
    private Thread closeBannerThread = null;
    private Timer refreshTimer = new Timer();
    private boolean openInNativeBrowser = true;

    /* loaded from: classes2.dex */
    interface AdsLoadingFinishedListener {
        void onAdLoadFinished();
    }

    /* loaded from: classes2.dex */
    interface HeadersReceiver {
        boolean onAdHeadersReceived(Map<String, List<String>> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init(AdView adView, DeviceIdParameters deviceIdParameters) {
        this.adView = adView;
        adView.getBrowser().setOnTouchListener(new View.OnTouchListener() { // from class: com.appsgeyser.sdk.ads.AdsLoader.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                CorrectClickStateHolder.getInstance().allowClick();
                Log.d("AUTOCLICK_DETECT", "touch detected");
                int action = motionEvent.getAction();
                if ((action == 0 || action == 1) && !view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        this.bannerUrl = createBannerUrl(deviceIdParameters);
        this.clickBehavior = BehaviorFactory.ClickBehavior.HIDE;
        this.closeBannerThread = new Thread() { // from class: com.appsgeyser.sdk.ads.AdsLoader.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                AdsLoader.this.refreshTimer.cancel();
                if (AdsLoader.this.adView.getBrowser() != null) {
                    AdsLoader.this.adView.getBrowser().stopLoading();
                }
                AdsLoader.this.adView.hide();
            }
        };
    }

    private String createBannerUrl(DeviceIdParameters deviceIdParameters) {
        String str;
        Configuration configuration = Configuration.getInstance(this.adView.getContext());
        if (deviceIdParameters != null) {
            String advId = deviceIdParameters.getAdvId();
            String lowerCase = deviceIdParameters.getLimitAdTrackingEnabled().toString().toLowerCase();
            String str2 = deviceIdParameters.getaId();
            if (!TextUtils.isEmpty(advId)) {
                str = "&advid=" + advId + "&limit_ad_tracking_enabled=" + lowerCase;
            } else {
                str = "&aid=" + str2;
            }
        } else {
            str = "&hid=&aid=";
        }
        return Constants.AD_SERVER_DOMAIN_URL + ("?widgetid=" + configuration.getApplicationId() + "&guid=" + configuration.getAppGuid() + "&v=2.48.s" + str + "&tlat=&tlon=&p=android&sdk=1&templateversion=" + configuration.getTemplateVersion());
    }

    public String getClickUrl() {
        return this.clickUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setClickUrl(String str) {
        this.clickUrl = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHeaderReceiver(HeadersReceiver headersReceiver) {
        this.headersReceiver = headersReceiver;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdsLoadingFinishedListener(AdsLoadingFinishedListener adsLoadingFinishedListener) {
        this.loadingFinishedListener = adsLoadingFinishedListener;
    }

    public void refresh() {
        AdView adView = this.adView;
        if (adView == null || adView.getBrowser() == null) {
            return;
        }
        this.adView.getBrowser().post(new Runnable() { // from class: com.appsgeyser.sdk.ads.AdsLoader.3
            @Override // java.lang.Runnable
            public void run() {
                AdsLoader.this.adView.getBrowser().loadUrl(AdsLoader.this.bannerUrl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reload() {
        try {
            new Thread() { // from class: com.appsgeyser.sdk.ads.AdsLoader.4
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Map<String, List<String>> loadHeaders = NetworkManager.getInstance().loadHeaders(AdsLoader.this.bannerUrl);
                    if (loadHeaders != null) {
                        if ((AdsLoader.this.headersReceiver == null || AdsLoader.this.headersReceiver.onAdHeadersReceived(loadHeaders)) && AdsLoader.this.adView.getBrowser() != null) {
                            AdsLoader.this.adView.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.AdsLoader.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdsLoader.this.adView.getBrowser().loadUrl(AdsLoader.this.bannerUrl);
                                }
                            });
                        }
                    } else if (AdsLoader.this.adView != null) {
                        AdsLoader.this.adView.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.AdsLoader.4.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AdsLoader.this.adView.hide();
                            }
                        });
                    }
                }
            }.start();
        } catch (Exception e2) {
            Log.e("AdsLoader", e2.getMessage());
        }
    }

    public void changeClickBehavior(BehaviorFactory.ClickBehavior clickBehavior) {
        this.clickBehavior = clickBehavior;
    }

    public void setRefreshTimeout(float f2) {
        if (f2 <= 0.0d) {
            return;
        }
        this.refreshTimer.cancel();
        Timer timer = new Timer();
        this.refreshTimer = timer;
        timer.scheduleAtFixedRate(new TimerTask() { // from class: com.appsgeyser.sdk.ads.AdsLoader.5
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                AdsLoader.this.reload();
                AdsLoader.this.refreshTimer.cancel();
            }
        }, (int) (f2 * 1000.0f), 100L);
    }

    public void setHideTimeout(float f2) {
        if (f2 <= 0.0d) {
            f2 = 60000.0f;
        }
        this.adView.removeCallbacks(this.closeBannerThread);
        this.adView.postDelayed(this.closeBannerThread, f2 * 1000.0f);
    }

    @Override // com.appsgeyser.sdk.ads.behavior.BehaviorAcceptor
    public void acceptBehavior(BehaviorVisitor behaviorVisitor) {
        if (behaviorVisitor instanceof LoaderBehavior) {
            ((LoaderBehavior) behaviorVisitor).visit((BehaviorAcceptor) this);
        }
    }

    private void setDefaults() {
        this.refreshTimer.cancel();
        setHideTimeout(60000.0f);
        this.adView.applyDefaultSettings();
    }

    @Override // com.appsgeyser.sdk.ads.AdsBannerWebViewClient.OnPageStartedListener
    public boolean loadStarted(WebView webView, String str, Bitmap bitmap) {
        String str2;
        Intent intent;
        if (str == null) {
            reload();
            return true;
        } else if (!EndpointGetter.getUrlWithoutArguments(str).equals(EndpointGetter.getUrlWithoutArguments(this.bannerUrl)) && !BannerUtils.isDataTextHtmlUrl(str)) {
            if (!CorrectClickStateHolder.getInstance().isClickAllowed()) {
                try {
                    str2 = URLEncoder.encode(str, C.UTF8_NAME);
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                    str2 = "-1";
                }
                webView.loadUrl("javascript:processACWithUrl('" + str2 + "')");
                return false;
            }
            CorrectClickStateHolder.getInstance().reset();
            Log.d("AUTOCLICK_DETECT", "click ALLOWED!");
            if (this.clickBehavior == BehaviorFactory.ClickBehavior.HIDE) {
                this.adView.hide();
                this.refreshTimer.cancel();
            } else if (this.clickBehavior == BehaviorFactory.ClickBehavior.REMAIN_ON_SCREEN) {
                reload();
            }
            webView.stopLoading();
            if (this.openInNativeBrowser) {
                intent = new Intent(this.adView.getContext(), BrowserActivity.class);
                intent.putExtra(BrowserActivity.KEY_BROWSER_URL, str);
                intent.putExtra(BrowserActivity.KEY_BANNER_TYPE, BrowserActivity.BANNER_TYPE_SMALL);
                intent.putExtra(BrowserActivity.KEY_UNIQ_ID, this.adView.getUniqueId());
                intent.addFlags(268435456);
            } else {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            }
            this.adView.getContext().startActivity(intent);
            if (!TextUtils.isEmpty(this.clickUrl)) {
                AppsgeyserServerClient.getInstance().sendClickInfo(this.clickUrl, webView.getContext());
                YandexMetrica.reportEvent("small_banner_clicked");
            }
            return false;
        } else {
            this.adView.switchToHtmlBanner();
            return true;
        }
    }

    @Override // com.appsgeyser.sdk.ads.AdsBannerWebViewClient.OnPageFinishedListener
    public void loadFinished(WebView webView, String str) {
        if (str.equals("data:text/html,chromewebdata") || str.equals("about:blank")) {
            this.adView.hide();
            return;
        }
        this.adView.show();
        this.adView.switchToHtmlBanner();
        if (str.equalsIgnoreCase(this.bannerUrl) || BannerUtils.isDataTextHtmlUrl(str)) {
            setDefaults();
            AdsLoadingFinishedListener adsLoadingFinishedListener = this.loadingFinishedListener;
            if (adsLoadingFinishedListener != null) {
                adsLoadingFinishedListener.onAdLoadFinished();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopLoading() {
        this.adView.hide();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void proceedClick(final String str) {
        if (this.adView.getBrowser() != null) {
            this.adView.getBrowser().post(new Runnable() { // from class: com.appsgeyser.sdk.ads.AdsLoader.6
                @Override // java.lang.Runnable
                public void run() {
                    AdsLoader.this.adView.getBrowser().loadUrl(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void forceOpenInNativeBrowser(boolean z) {
        this.openInNativeBrowser = z;
    }
}
