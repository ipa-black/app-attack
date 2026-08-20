package com.appnext.ads.fullscreen;

import android.content.Context;
import android.content.Intent;
import com.appnext.ads.AdsError;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.ECPM;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.appnext.core.callbacks.OnVideoEnded;
import com.appnext.core.d;
import com.appnext.core.p;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.File;
import java.util.HashMap;
import java.util.Random;
/* loaded from: classes.dex */
public abstract class Video extends Ad {
    protected static final int FULL_SCREEN_VIDEO = 1;
    protected static final int REWARDED_VIDEO = 2;
    protected static final String TID = "301";
    protected static final String VID = "2.5.1.472";
    public static final String VIDEO_LENGTH_LONG = "30";
    public static final String VIDEO_LENGTH_SHORT = "15";
    private static boolean cacheVideo = true;
    protected static Video currentAd = null;
    private static boolean init = false;
    private static boolean streamingEnable = false;
    private boolean canClose;
    private String language;
    protected long rnd;
    private int rollCaptionTime;
    private boolean showCta;
    private int type;
    private OnAdError userOnAdError;
    private OnVideoEnded videoEnded;
    private String videoLength;

    public Video(Context context, int i, String str) {
        super(context, str);
        this.videoLength = "15";
        this.showCta = true;
        this.rollCaptionTime = -2;
        this.language = "";
        this.canClose = true;
        this.type = i;
        this.rnd = new Random(System.currentTimeMillis()).nextInt(Integer.MAX_VALUE);
        init();
    }

    public Video(Context context, int i, String str, VideoConfig videoConfig) {
        super(context, str);
        this.videoLength = "15";
        this.showCta = true;
        this.rollCaptionTime = -2;
        this.language = "";
        this.canClose = true;
        this.type = i;
        this.rnd = new Random(System.currentTimeMillis()).nextInt(Integer.MAX_VALUE);
        init();
        if (videoConfig != null) {
            setPostback(videoConfig.getPostback());
            setCategories(videoConfig.getCategories());
            setOrientation(videoConfig.getOrientation());
            if (videoConfig.showCta != null) {
                setShowCta(videoConfig.isShowCta());
            }
            setRollCaptionTime(videoConfig.getRollCaptionTime());
            setVideoLength(videoConfig.getVideoLength());
            if (videoConfig.mute != null) {
                setMute(videoConfig.getMute());
            }
            setMinVideoLength(videoConfig.getMinVideoLength());
            setMaxVideoLength(videoConfig.getMaxVideoLength());
            setLanguage(videoConfig.getLanguage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Video(Context context, Video video) {
        super(context, video.getPlacementID());
        this.videoLength = "15";
        this.showCta = true;
        this.rollCaptionTime = -2;
        this.language = "";
        this.canClose = true;
        this.type = video.type;
        this.rnd = video.rnd;
        setPostback(video.getPostback());
        setCategories(video.getCategories());
        setOrientation(video.getOrientation());
        setVideoLength(video.getVideoLength());
        setMute(video.getMute());
        setMinVideoLength(video.getMinVideoLength());
        setMaxVideoLength(video.getMaxVideoLength());
        setRollCaptionTime(video.getRollCaptionTime());
        setShowCta(video.isShowCta());
        setLanguage(video.getLanguage());
        setOnVideoEndedCallback(video.getOnVideoEndedCallback());
        setOnAdClosedCallback(video.getOnAdClosedCallback());
        setOnAdErrorCallback(video.getOnAdErrorCallback());
        setOnAdClickedCallback(video.getOnAdClickedCallback());
        setOnAdOpenedCallback(video.getOnAdOpenedCallback());
        setOnAdLoadedCallback(video.getOnAdLoadedCallback());
        setSessionId(video.getSessionId());
    }

    private void init() {
        getConfig().q(ScarConstants.TOKEN_ID_KEY, getTID());
        getConfig().a(this.context, new p.a() { // from class: com.appnext.ads.fullscreen.Video.1
            @Override // com.appnext.core.p.a
            public final void b(HashMap<String, Object> hashMap) {
                com.appnext.core.j.bj().b(Integer.parseInt(Video.this.getConfig().get("banner_expiration_time")));
            }

            @Override // com.appnext.core.p.a
            public final void error(String str) {
                com.appnext.core.j.bj().b(Integer.parseInt(Video.this.getConfig().get("banner_expiration_time")));
            }
        });
        new Thread(new Runnable() { // from class: com.appnext.ads.fullscreen.Video.2
            @Override // java.lang.Runnable
            public final void run() {
                if (Video.init) {
                    return;
                }
                boolean unused = Video.init = true;
                com.appnext.core.f.a(new File(Video.this.context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/tmp/"));
            }
        }).start();
        super.setOnAdErrorCallback(new OnAdError() { // from class: com.appnext.ads.fullscreen.Video.3
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
                com.appnext.core.f.a(Video.this.getTID(), Video.this.getVID(), Video.this.getAUID(), Video.this.getPlacementID(), Video.this.getSessionId(), str2, Video.this.type == 1 ? "fullscreen" : "rewarded", "", "");
                if (Video.this.userOnAdError != null) {
                    Video.this.userOnAdError.adError(str);
                }
            }
        });
    }

    @Override // com.appnext.core.Ad
    public void showAd() {
        if (getPlacementID().equals("")) {
            throw new IllegalArgumentException("Placement ID cannot be empty");
        }
        if (!com.appnext.core.f.a(this.context, "android.permission.INTERNET")) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.CONNECTION_ERROR);
                return;
            }
            return;
        }
        int Z = com.appnext.core.f.Z(getConfig().get("min_internet_connection_video"));
        int Z2 = com.appnext.core.f.Z(com.appnext.core.f.o(this.context));
        if (Z2 == -1) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.CONNECTION_ERROR);
            }
        } else if (Z2 < Z) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.SLOW_CONNECTION);
            }
        } else {
            com.appnext.core.f.a(getTID(), getVID(), getAUID(), getPlacementID(), getSessionId(), com.appnext.ads.a.f6358c, this.type == 1 ? "fullscreen" : "rewarded", "", "");
            if (b.j().b(this)) {
                Intent intent = new Intent(this.context, FullscreenActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("id", getPlacementID());
                intent.putExtra(SessionDescription.ATTR_TYPE, this.type);
                currentAd = this;
                this.context.startActivity(intent);
                return;
            }
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AdsError.AD_NOT_READY);
            }
            b.j().a(this.context, this, getPlacementID(), (d.a) null);
            com.appnext.core.f.a(getTID(), getVID(), getAUID(), getPlacementID(), getSessionId(), com.appnext.ads.a.AD_NOT_READY, this.type == 1 ? "fullscreen" : "rewarded", "", "");
        }
    }

    @Override // com.appnext.core.Ad
    public void loadAd() {
        if (getPlacementID().equals("")) {
            throw new IllegalArgumentException("Placement ID cannot be empty");
        }
        if (!com.appnext.core.f.a(this.context, "android.permission.INTERNET")) {
            if (getOnAdErrorCallback() != null) {
                getOnAdErrorCallback().adError(AppnextError.CONNECTION_ERROR);
                return;
            }
            return;
        }
        getConfig().a(this.context, new p.a() { // from class: com.appnext.ads.fullscreen.Video.4
            @Override // com.appnext.core.p.a
            public final void b(HashMap<String, Object> hashMap) {
                Video.this.load();
            }

            @Override // com.appnext.core.p.a
            public final void error(String str) {
                Video.this.load();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load() {
        b.j().a(this.context, this, getPlacementID(), new d.a() { // from class: com.appnext.ads.fullscreen.Video.5
            @Override // com.appnext.core.d.a
            public final <T> void a(T t) {
                AppnextAd b2 = b.j().b(Video.this.context, Video.this);
                if (Video.this.getOnAdLoadedCallback() != null) {
                    if (b2 != null) {
                        Video.this.getOnAdLoadedCallback().adLoaded(b2.getBannerID(), b2.getCreativeType());
                    } else if (Video.this.getOnAdErrorCallback() != null) {
                        Video.this.getOnAdErrorCallback().adError(AppnextError.NO_ADS);
                    }
                }
            }

            @Override // com.appnext.core.d.a
            public final void error(String str) {
                if (Video.this.getOnAdErrorCallback() != null) {
                    Video.this.getOnAdErrorCallback().adError(str);
                }
            }
        });
    }

    @Override // com.appnext.core.Ad
    public void getECPM(final OnECPMLoaded onECPMLoaded) {
        if (onECPMLoaded == null) {
            throw new IllegalArgumentException("Callback cannot be null");
        }
        b.j().a(this.context, (Ad) this, getPlacementID(), new d.a() { // from class: com.appnext.ads.fullscreen.Video.6
            @Override // com.appnext.core.d.a
            public final <T> void a(T t) {
                AppnextAd b2 = b.j().b(Video.this.context, Video.this);
                if (b2 != null) {
                    onECPMLoaded.ecpm(new ECPM(b2.getECPM(), b2.getPPR(), b2.getBannerID()));
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

    protected p getConfig() {
        int i = this.type;
        if (i == 2) {
            return f.q();
        }
        if (i == 1) {
            return c.m();
        }
        return null;
    }

    @Override // com.appnext.core.Ad
    public boolean isAdLoaded() {
        if (getPlacementID().equals("")) {
            return false;
        }
        return b.j().b(this);
    }

    public OnVideoEnded getOnVideoEndedCallback() {
        return this.videoEnded;
    }

    public void setOnVideoEndedCallback(OnVideoEnded onVideoEnded) {
        this.videoEnded = onVideoEnded;
    }

    public String getVideoLength() {
        return this.videoLength;
    }

    public void setVideoLength(String str) {
        if (str.equals("15") || str.equals("30")) {
            this.videoLength = str;
            return;
        }
        throw new IllegalArgumentException("Wrong video length");
    }

    public static void setCacheVideo(boolean z) {
        cacheVideo = z;
    }

    public static boolean getCacheVideo() {
        return cacheVideo;
    }

    public static void setStreamingMode(boolean z) {
        streamingEnable = z;
    }

    public static boolean isStreamingModeEnabled() {
        return streamingEnable;
    }

    @Override // com.appnext.core.Ad
    public void setOnAdErrorCallback(OnAdError onAdError) {
        this.userOnAdError = onAdError;
    }

    @Override // com.appnext.core.Ad
    public OnAdError getOnAdErrorCallback() {
        return super.getOnAdErrorCallback();
    }

    public int getRollCaptionTime() {
        return this.rollCaptionTime;
    }

    public void setRollCaptionTime(int i) {
        if (i == -1 || (i >= 3 && i <= 10)) {
            this.rollCaptionTime = i;
        }
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

    public boolean isShowCta() {
        return this.showCta;
    }

    public void setShowCta(boolean z) {
        this.showCta = z;
    }

    @Override // com.appnext.core.Ad
    public String getVID() {
        return "2.5.1.472";
    }

    @Override // com.appnext.core.Ad
    public String getTID() {
        return TID;
    }

    public void setBackButtonCanClose(boolean z) {
        this.canClose = z;
    }

    public boolean isBackButtonCanClose() {
        return this.canClose;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.Ad
    public String getSessionId() {
        return super.getSessionId();
    }

    @Override // com.appnext.core.Ad
    public void destroy() {
        super.destroy();
        this.videoEnded = null;
        try {
            com.appnext.core.f.a(new File(this.context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/tmp/vid" + this.rnd + "/"));
        } catch (Throwable unused) {
        }
    }

    protected void finalize() throws Throwable {
        try {
            destroy();
            super.finalize();
        } catch (Throwable unused) {
            super.finalize();
        }
    }
}
