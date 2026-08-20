package com.appnext.core;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.appnext.base.Appnext;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
/* loaded from: classes.dex */
public abstract class Ad {
    public static final String ORIENTATION_AUTO = "automatic";
    public static final String ORIENTATION_DEFAULT = "not_set";
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";
    protected static boolean fq = false;
    private OnAdOpened adOpenedCallback;
    private c adRequest;
    private OnAdClosed closeCallback;
    protected Context context;
    private OnAdClicked onAdClicked;
    private OnAdError onAdError;
    private OnAdLoaded onAdLoaded;
    private String placementID = "";
    private String cat = "";
    private String pbk = "";
    private int cnt = 50;
    private int maxVideoLength = 0;
    private int minVideoLength = 0;
    protected boolean setMute = false;
    private boolean mute = false;
    private String orientation = ORIENTATION_DEFAULT;
    private String sessionId = "";

    public abstract String getAUID();

    public abstract void getECPM(OnECPMLoaded onECPMLoaded);

    public abstract String getTID();

    public abstract String getVID();

    public abstract boolean isAdLoaded();

    public abstract void loadAd();

    public abstract void showAd();

    public Ad(final Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("Context cannot be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("placementID cannot be null");
        }
        this.context = context;
        setPlacementID(str);
        j.bj().d(context, str);
        if (f.bd().equals("")) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.Ad.1
                @Override // java.lang.Runnable
                public final void run() {
                    f.m(context);
                }
            });
        }
        new Thread(new Runnable() { // from class: com.appnext.core.Ad.2
            @Override // java.lang.Runnable
            public final void run() {
                Ad.this.setSessionId(f.q(context));
            }
        }).start();
        com.appnext.core.a.b.bp();
        new Thread(new Runnable() { // from class: com.appnext.core.Ad.3
            @Override // java.lang.Runnable
            public final void run() {
                Appnext.init(context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Ad(Ad ad) {
        this.context = ad.context;
        setPlacementID(ad.getPlacementID());
        setCategories(ad.cat);
        setPostback(ad.getPostback());
        setCount(ad.getCount());
        setMinVideoLength(ad.getMinVideoLength());
        setMaxVideoLength(ad.getMaxVideoLength());
        setSessionId(ad.getSessionId());
        this.onAdClicked = ad.onAdClicked;
        this.onAdError = ad.onAdError;
        this.onAdLoaded = ad.onAdLoaded;
        this.closeCallback = ad.closeCallback;
        this.adOpenedCallback = ad.adOpenedCallback;
    }

    public String getPlacementID() {
        return this.placementID;
    }

    protected void setPlacementID(String str) {
        this.placementID = str;
    }

    public OnAdClicked getOnAdClickedCallback() {
        return this.onAdClicked;
    }

    public OnAdError getOnAdErrorCallback() {
        return this.onAdError;
    }

    public OnAdLoaded getOnAdLoadedCallback() {
        return this.onAdLoaded;
    }

    public OnAdClosed getOnAdClosedCallback() {
        return this.closeCallback;
    }

    public void setOnAdClickedCallback(OnAdClicked onAdClicked) {
        this.onAdClicked = onAdClicked;
    }

    public void setOnAdErrorCallback(OnAdError onAdError) {
        this.onAdError = onAdError;
    }

    public void setOnAdLoadedCallback(OnAdLoaded onAdLoaded) {
        this.onAdLoaded = onAdLoaded;
    }

    public void setOnAdClosedCallback(OnAdClosed onAdClosed) {
        this.closeCallback = onAdClosed;
    }

    public OnAdOpened getOnAdOpenedCallback() {
        return this.adOpenedCallback;
    }

    public void setOnAdOpenedCallback(OnAdOpened onAdOpened) {
        this.adOpenedCallback = onAdOpened;
    }

    public void setCategories(String str) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        try {
            if (str.equals(URLDecoder.decode(str, C.UTF8_NAME))) {
                str = URLEncoder.encode(str, C.UTF8_NAME);
            }
            str2 = str;
        } catch (UnsupportedEncodingException unused) {
        }
        this.cat = str2;
    }

    public void setPostback(String str) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        try {
            if (str.equals(URLDecoder.decode(str, C.UTF8_NAME))) {
                str = URLEncoder.encode(str, C.UTF8_NAME);
            }
            str2 = str;
        } catch (UnsupportedEncodingException unused) {
        }
        this.pbk = str2;
    }

    public void setMute(boolean z) {
        this.setMute = true;
        this.mute = z;
    }

    public String getCategories() {
        return this.cat;
    }

    public String getPostback() {
        return this.pbk;
    }

    public boolean getMute() {
        return this.mute;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getCount() {
        return this.cnt;
    }

    protected void setCount(int i) {
        this.cnt = i;
    }

    public String getOrientation() {
        return this.orientation;
    }

    public void setOrientation(String str) {
        if (str == null) {
            throw new IllegalArgumentException("orientation type");
        }
        if (str.equals(ORIENTATION_AUTO) || str.equals(ORIENTATION_DEFAULT) || str.equals("landscape") || str.equals("portrait")) {
            this.orientation = str;
            return;
        }
        throw new IllegalArgumentException("Wrong orientation type");
    }

    public int getMaxVideoLength() {
        return this.maxVideoLength;
    }

    public void setMaxVideoLength(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Max Length must be higher than 0");
        }
        if (i > 0 && getMinVideoLength() > 0 && i < getMinVideoLength()) {
            throw new IllegalArgumentException("Max Length cannot be lower than min length");
        }
        this.maxVideoLength = i;
    }

    public int getMinVideoLength() {
        return this.minVideoLength;
    }

    public void setMinVideoLength(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Min Length must be higher than 0");
        }
        if (i > 0 && getMaxVideoLength() > 0 && i > getMaxVideoLength()) {
            throw new IllegalArgumentException("Min Length cannot be higher than max length");
        }
        this.minVideoLength = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c getAdRequest() {
        return this.adRequest;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAdRequest(c cVar) {
        this.adRequest = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getSessionId() {
        return this.sessionId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass().isInstance(obj) || obj.getClass().isInstance(this)) {
            if (obj instanceof Ad) {
                Ad ad = (Ad) obj;
                return ad.getPlacementID().equals(getPlacementID()) && ad.getCategories().equals(getCategories()) && ad.getPostback().equals(getPostback()) && ad.getMinVideoLength() == getMinVideoLength() && ad.getMaxVideoLength() == getMaxVideoLength() && ad.getCount() == getCount();
            }
            return super.equals(obj);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((getPlacementID().hashCode() * 31) + getCategories().hashCode()) * 31) + getPostback().hashCode()) * 31) + getCount()) * 31) + getMinVideoLength()) * 31) + getMaxVideoLength();
    }

    public void destroy() {
        this.context = null;
        this.onAdClicked = null;
        this.onAdError = null;
        this.onAdLoaded = null;
        this.closeCallback = null;
        this.adOpenedCallback = null;
    }
}
