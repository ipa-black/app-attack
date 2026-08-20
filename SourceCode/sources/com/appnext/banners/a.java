package com.appnext.banners;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.VideoView;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.ECPM;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.appnext.core.d;
import com.appnext.core.e;
import com.appnext.core.k;
import com.appnext.core.p;
import com.appnext.core.q;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class a extends e {
    private BannerAdRequest adRequest;
    private ArrayList<AppnextAd> ads;
    private BannerAd bannerAd;
    private BannerAdData currentAd;
    private Handler mHandler;
    private MediaPlayer mediaPlayer;
    private i serviceHelper;
    private q userAction;
    private VideoView videoView;
    private final int TICK = 330;
    private boolean userMute = true;
    private String template = "";
    private int lastProgress = 0;
    private int currentPosition = 0;
    private boolean started = false;
    private boolean finished = false;
    private boolean reportedImpression = false;
    private boolean loaded = false;
    private boolean clickEnabled = true;
    private Runnable tick = new Runnable() { // from class: com.appnext.banners.a.17
        @Override // java.lang.Runnable
        public final void run() {
            try {
                a.this.checkProgress();
                a aVar = a.this;
                aVar.currentPosition = aVar.mediaPlayer.getCurrentPosition();
                if (a.this.mediaPlayer.getCurrentPosition() >= a.this.mediaPlayer.getDuration() || a.this.finished) {
                    return;
                }
                a.this.mHandler.postDelayed(a.this.tick, 330L);
            } catch (Throwable unused) {
            }
        }
    };

    @Override // com.appnext.banners.e
    public void init(ViewGroup viewGroup) {
        super.init(viewGroup);
        this.userAction = new q(this.context, new q.a() { // from class: com.appnext.banners.a.1
            @Override // com.appnext.core.q.a
            public final void report(String str) {
                a.this.report(str);
            }

            @Override // com.appnext.core.q.a
            public final Ad e() {
                return a.this.bannerAd;
            }

            @Override // com.appnext.core.q.a
            public final AppnextAd f() {
                return a.this.getSelectedAd();
            }

            @Override // com.appnext.core.q.a
            public final p g() {
                return d.S();
            }
        });
        this.mHandler = new Handler();
    }

    protected Ad createAd(Context context, String str) {
        String bannerSize = getBannerSize().toString();
        bannerSize.hashCode();
        char c2 = 65535;
        switch (bannerSize.hashCode()) {
            case -1966536496:
                if (bannerSize.equals("LARGE_BANNER")) {
                    c2 = 0;
                    break;
                }
                break;
            case -96588539:
                if (bannerSize.equals("MEDIUM_RECTANGLE")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1951953708:
                if (bannerSize.equals("BANNER")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return new LargeBannerAd(context, str);
            case 1:
                return new MediumRectangleAd(context, str);
            case 2:
                return new SmallBannerAd(context, str);
            default:
                throw new IllegalArgumentException("Wrong banner size " + getBannerSize());
        }
    }

    @Override // com.appnext.banners.e
    public void loadAd(BannerAdRequest bannerAdRequest) {
        if (bannerAdRequest == null) {
            throw new IllegalStateException("BannerAdRequest cannot be null.");
        }
        if (getPlacementId() == null) {
            throw new IllegalStateException("Missing placement id.");
        }
        if (getBannerSize() == null) {
            throw new IllegalStateException("Missing banner size.");
        }
        if (this.bannerAd == null) {
            this.bannerAd = (BannerAd) createAd(this.context, getPlacementId());
        }
        this.bannerAd.setCategories(bannerAdRequest.getCategories());
        this.bannerAd.setPostback(bannerAdRequest.getPostback());
        this.adRequest = new BannerAdRequest(bannerAdRequest);
        setClickEnabled(bannerAdRequest.isClickEnabled());
        this.loaded = false;
        this.reportedImpression = false;
        if (com.appnext.core.f.Z(com.appnext.core.f.o(this.context)) == 0) {
            this.adRequest.setCreativeType("static");
        }
        d.S().a(this.context, new p.a() { // from class: com.appnext.banners.a.12
            @Override // com.appnext.core.p.a
            public final void b(HashMap<String, Object> hashMap) {
                a.this.load();
            }

            @Override // com.appnext.core.p.a
            public final void error(String str) {
                a.this.load();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load() {
        if (this.adRequest == null) {
            return;
        }
        com.appnext.core.j.bj().b(Integer.parseInt(d.S().get("banner_expiration_time")));
        b.R().a(this.context, this.bannerAd, getPlacementId(), new d.a() { // from class: com.appnext.banners.a.18
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:51:0x0169, code lost:
                if (r10.equals("BANNER") == false) goto L48;
             */
            @Override // com.appnext.core.d.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final <T> void a(T r10) {
                /*
                    Method dump skipped, instructions count: 458
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appnext.banners.a.AnonymousClass18.a(java.lang.Object):void");
            }

            @Override // com.appnext.core.d.a
            public final void error(String str) {
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
                    case 350741825:
                        if (str.equals(AppnextError.TIMEOUT)) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 844170097:
                        if (str.equals(AppnextError.SLOW_CONNECTION)) {
                            c2 = 5;
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
                        str2 = com.appnext.ads.a.z;
                        break;
                    case 5:
                        str2 = com.appnext.ads.a.u;
                        break;
                    default:
                        str2 = "";
                        break;
                }
                a.this.report(str2);
                if (a.this.getBannerListener() != null) {
                    a.this.getBannerListener().onError(new AppnextError(str));
                }
            }
        }, this.adRequest);
    }

    @Override // com.appnext.banners.e
    public void getECPM(final BannerAdRequest bannerAdRequest, final OnECPMLoaded onECPMLoaded) {
        if (bannerAdRequest == null) {
            throw new IllegalStateException("BannerAdRequest cannot be null.");
        }
        if (getPlacementId() == null) {
            throw new IllegalStateException("Missing placement id.");
        }
        if (getBannerSize() == null) {
            throw new IllegalStateException("Missing banner size.");
        }
        if (onECPMLoaded == null) {
            throw new IllegalStateException("callback cannot be null.");
        }
        if (this.bannerAd == null) {
            this.bannerAd = (BannerAd) createAd(this.context, getPlacementId());
        }
        this.bannerAd.setCategories(bannerAdRequest.getCategories());
        this.bannerAd.setPostback(bannerAdRequest.getPostback());
        b.R().a(this.context, this.bannerAd, getPlacementId(), new d.a() { // from class: com.appnext.banners.a.19
            @Override // com.appnext.core.d.a
            public final <T> void a(T t) {
                AppnextAd a2 = b.R().a(a.this.context, a.this.bannerAd, bannerAdRequest.getCreativeType());
                if (a2 == null) {
                    a.this.report(com.appnext.ads.a.w);
                    OnECPMLoaded onECPMLoaded2 = onECPMLoaded;
                    if (onECPMLoaded2 != null) {
                        onECPMLoaded2.error(AppnextError.NO_ADS);
                        return;
                    }
                    return;
                }
                OnECPMLoaded onECPMLoaded3 = onECPMLoaded;
                if (onECPMLoaded3 != null) {
                    onECPMLoaded3.ecpm(new ECPM(a2.getECPM(), a2.getPPR(), a2.getBannerID()));
                }
            }

            @Override // com.appnext.core.d.a
            public final void error(String str) {
                OnECPMLoaded onECPMLoaded2 = onECPMLoaded;
                if (onECPMLoaded2 != null) {
                    onECPMLoaded2.error(str);
                }
            }
        }, bannerAdRequest);
    }

    protected void inflateView(int i, final AppnextAd appnextAd) {
        View inflate = ((LayoutInflater) this.context.getSystemService("layout_inflater")).inflate(i, this.rootView, false);
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                a.this.report(com.appnext.ads.a.ab);
                a.this.click();
            }
        });
        final ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.21
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.report(com.appnext.ads.a.Z);
                    a.this.click();
                }
            });
            new Thread(new Runnable() { // from class: com.appnext.banners.a.22
                @Override // java.lang.Runnable
                public final void run() {
                    final Bitmap Y = com.appnext.core.f.Y(appnextAd.getImageURL());
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.banners.a.22.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            imageView.setImageBitmap(Y);
                        }
                    });
                }
            }).start();
        }
        TextView textView = (TextView) inflate.findViewById(R.id.title);
        if (textView != null) {
            textView.setText(appnextAd.getAdTitle());
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.23
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.report(com.appnext.ads.a.ab);
                    a.this.click();
                }
            });
        }
        RatingBar ratingBar = (RatingBar) inflate.findViewById(R.id.ratingBar);
        if (ratingBar != null) {
            try {
                ratingBar.setRating(Float.parseFloat(appnextAd.getStoreRating()));
            } catch (Throwable unused) {
                ratingBar.setVisibility(4);
            }
            ratingBar.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.24
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.report(com.appnext.ads.a.ab);
                    a.this.click();
                }
            });
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.description);
        if (textView2 != null) {
            textView2.setText(appnextAd.getAdDescription());
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.report(com.appnext.ads.a.ab);
                    a.this.click();
                }
            });
        }
        View findViewById = inflate.findViewById(R.id.install);
        ((TextView) findViewById).setText(getButtonText(appnextAd));
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                a.this.report(com.appnext.ads.a.aa);
                a.this.click();
            }
        });
        View findViewById2 = inflate.findViewById(R.id.media);
        if (findViewById2 != null) {
            if (getCreativeType(appnextAd) == 0) {
                createVideo((ViewGroup) findViewById2);
            } else {
                createWideImage((ImageView) inflate.findViewById(R.id.wide_image));
            }
        }
        ImageView imageView2 = (ImageView) inflate.findViewById(R.id.privacy);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                a.this.openLink(com.appnext.core.f.g(appnextAd));
            }
        });
        if (k.a(appnextAd, d.S())) {
            k.a(this.context, imageView2);
        }
        if (this.rootView.getChildCount() > 0) {
            this.rootView.removeViewAt(0);
        }
        this.rootView.addView(inflate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getButtonText(AppnextAd appnextAd) {
        String buttonText = new BannerAdData(appnextAd).getButtonText();
        boolean c2 = com.appnext.core.f.c(this.context, getSelectedAd().getAdPackage());
        String str = com.appnext.core.a.b.hY;
        if (appnextAd != null && buttonText.equals("")) {
            if (c2) {
                return com.appnext.core.a.b.bp().b(getLanguage(), com.appnext.core.a.b.hY, d.S().get("existing_button_text"));
            }
            return com.appnext.core.a.b.bp().b(getLanguage(), com.appnext.core.a.b.hX, d.S().get("new_button_text"));
        }
        com.appnext.core.a.b bp = com.appnext.core.a.b.bp();
        String language = getLanguage();
        if (!c2) {
            str = com.appnext.core.a.b.hX;
        }
        return bp.b(language, str, buttonText);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getCreativeType(AppnextAd appnextAd) {
        return this.adRequest.getCreativeType().equals("all") ? b.hasVideo(appnextAd) ? 0 : 1 : (this.adRequest.getCreativeType().equals("video") && b.hasVideo(appnextAd)) ? 0 : 1;
    }

    @Override // com.appnext.banners.e
    public void impression() {
        synchronized (this) {
            if (this.loaded && !this.reportedImpression && getVisiblePercent(this.rootView) >= 50 && this.userAction != null) {
                this.reportedImpression = true;
                if (getSelectedAd() != null) {
                    this.mHandler.postDelayed(new Runnable() { // from class: com.appnext.banners.a.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            a.this.userAction.e(a.this.getSelectedAd());
                        }
                    }, Integer.parseInt(d.S().get("postpone_impression_sec")) * 1000);
                    report(com.appnext.ads.a.G);
                    com.appnext.core.j.bj().n(getSelectedAd().getBannerID(), getPlacementId());
                    if (Boolean.parseBoolean(d.S().get("pview"))) {
                        this.mHandler.postDelayed(new Runnable() { // from class: com.appnext.banners.a.6
                            @Override // java.lang.Runnable
                            public final void run() {
                                a.this.userAction.a(a.this.getSelectedAd(), a.this.getSelectedAd().getAppURL(), null);
                            }
                        }, Integer.parseInt(d.S().get("postpone_vta_sec")) * 1000);
                    }
                    if (getBannerListener() != null) {
                        getBannerListener().adImpression();
                    }
                }
            }
        }
    }

    @Override // com.appnext.banners.e
    public void click() {
        report(com.appnext.ads.a.V);
        if (getBannerListener() != null) {
            getBannerListener().onAdClicked();
        }
        this.userAction.a(getSelectedAd(), getSelectedAd().getAppURL(), getPlacementId(), new e.a() { // from class: com.appnext.banners.a.7
            @Override // com.appnext.core.e.a
            public final void error(String str) {
            }

            @Override // com.appnext.core.e.a
            public final void onMarket(String str) {
                try {
                    if (a.this.mediaPlayer == null || !a.this.mediaPlayer.isPlaying()) {
                        return;
                    }
                    a.this.pause();
                    ((ImageView) a.this.rootView.findViewById(R.id.media).findViewById(R.id.play)).setImageResource(R.drawable.apnxt_banner_pause);
                    a.this.rootView.findViewById(R.id.media).findViewById(R.id.play).setVisibility(0);
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.banners.e
    public void openLink(String str) {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null && mediaPlayer.isPlaying()) {
                pause();
                ((ImageView) this.rootView.findViewById(R.id.media).findViewById(R.id.play)).setImageResource(R.drawable.apnxt_banner_pause);
                this.rootView.findViewById(R.id.media).findViewById(R.id.play).setVisibility(0);
            }
        } catch (Throwable unused) {
        }
        try {
            super.openLink(str);
        } catch (Throwable unused2) {
            report(com.appnext.ads.a.y);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appnext.banners.a$8  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass8 implements Runnable {
        final /* synthetic */ ImageView cV;

        AnonymousClass8(ImageView imageView) {
            this.cV = imageView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            final Bitmap Y = com.appnext.core.f.Y(a.this.getSelectedAd().getWideImageURL());
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.banners.a.8.1
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass8.this.cV.setImageBitmap(Y);
                    AnonymousClass8.this.cV.setVisibility(0);
                    AnonymousClass8.this.cV.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.8.1.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            a.this.report(com.appnext.ads.a.ab);
                            a.this.click();
                        }
                    });
                }
            });
        }
    }

    private void createWideImage(ImageView imageView) {
        report(com.appnext.ads.a.ac);
        new Thread(new AnonymousClass8(imageView)).start();
    }

    private void createVideo(final ViewGroup viewGroup) {
        try {
            if (this.adRequest.isAutoPlay()) {
                report(com.appnext.ads.a.ae);
            } else {
                report(com.appnext.ads.a.af);
            }
            if (this.adRequest.isMute()) {
                report(com.appnext.ads.a.ag);
            } else {
                report(com.appnext.ads.a.ah);
            }
            this.userMute = this.adRequest.isMute();
            ((ImageView) viewGroup.findViewById(R.id.mute)).setImageResource(this.userMute ? R.drawable.apnxt_banner_unmute : R.drawable.apnxt_banner_mute);
            viewGroup.findViewById(R.id.mute).setVisibility(0);
            viewGroup.findViewById(R.id.mute).setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a aVar;
                    a.this.userMute = !aVar.userMute;
                    if (a.this.mediaPlayer != null) {
                        try {
                            MediaPlayer mediaPlayer = a.this.mediaPlayer;
                            float f2 = 0.0f;
                            float f3 = a.this.userMute ? 0.0f : 1.0f;
                            if (!a.this.userMute) {
                                f2 = 1.0f;
                            }
                            mediaPlayer.setVolume(f3, f2);
                            ((ImageView) viewGroup.findViewById(R.id.mute)).setImageResource(a.this.userMute ? R.drawable.apnxt_banner_unmute : R.drawable.apnxt_banner_mute);
                        } catch (Throwable unused) {
                        }
                    }
                }
            });
            this.videoView = new VideoView(this.context.getApplicationContext());
            this.videoView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            viewGroup.addView(this.videoView, 0);
            viewGroup.findViewById(R.id.click).setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (a.this.isClickEnabled() && a.this.mediaPlayer != null && a.this.mediaPlayer.isPlaying()) {
                        a.this.click();
                        return;
                    }
                    ((ImageView) viewGroup.findViewById(R.id.play)).setImageResource(R.drawable.apnxt_banner_pause);
                    viewGroup.findViewById(R.id.play).setVisibility(0);
                    a.this.pause();
                }
            });
            this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.appnext.banners.a.11
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer) {
                    a.this.mediaPlayer = mediaPlayer;
                    a.this.mediaPlayer.seekTo(a.this.currentPosition);
                    a.this.mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.appnext.banners.a.11.1
                        @Override // android.media.MediaPlayer.OnSeekCompleteListener
                        public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                            if (!a.this.adRequest.isAutoPlay() || a.this.finished || a.this.getVisiblePercent(a.this.rootView) <= 90 || a.this.mediaPlayer.isPlaying()) {
                                return;
                            }
                            a.this.play();
                            try {
                                a.this.rootView.findViewById(R.id.media).findViewById(R.id.play).setVisibility(8);
                            } catch (Throwable unused) {
                            }
                            if (a.this.started) {
                                return;
                            }
                            a.this.report(com.appnext.ads.a.I);
                            a.this.started = true;
                        }
                    });
                    if (a.this.adRequest.isAutoPlay() && !a.this.finished) {
                        a aVar = a.this;
                        if (aVar.getVisiblePercent(aVar.rootView) > 90) {
                            a.this.play();
                            try {
                                a.this.rootView.findViewById(R.id.media).findViewById(R.id.play).setVisibility(8);
                            } catch (Throwable unused) {
                            }
                            if (!a.this.started) {
                                a.this.report(com.appnext.ads.a.I);
                                a.this.started = true;
                            }
                        }
                    }
                    a.this.mHandler.postDelayed(a.this.tick, 33L);
                    if (a.this.userMute) {
                        a.this.mediaPlayer.setVolume(0.0f, 0.0f);
                    } else {
                        a.this.mediaPlayer.setVolume(1.0f, 1.0f);
                    }
                }
            });
            this.videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.appnext.banners.a.13
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    if (a.this.mediaPlayer == null || a.this.mediaPlayer.getCurrentPosition() == 0 || a.this.mediaPlayer.getDuration() == 0 || a.this.finished) {
                        return;
                    }
                    a.this.mediaPlayer.getCurrentPosition();
                    a.this.mediaPlayer.getDuration();
                    a.this.finished = true;
                    a.this.report(com.appnext.ads.a.M);
                }
            });
            this.videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.appnext.banners.a.14
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return true;
                }
            });
            this.videoView.setVideoURI(Uri.parse(getVideoUrl(getSelectedAd(), this.adRequest.getVideoLength())));
            viewGroup.findViewById(R.id.play).setOnClickListener(new View.OnClickListener() { // from class: com.appnext.banners.a.15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    viewGroup.findViewById(R.id.wide_image).setVisibility(8);
                    viewGroup.findViewById(R.id.play).setVisibility(8);
                    a.this.play();
                }
            });
            if (this.adRequest.isAutoPlay()) {
                return;
            }
            viewGroup.findViewById(R.id.play).setVisibility(0);
            new Thread(new Runnable() { // from class: com.appnext.banners.a.16
                @Override // java.lang.Runnable
                public final void run() {
                    final Bitmap Y = com.appnext.core.f.Y(a.this.getSelectedAd().getWideImageURL());
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.banners.a.16.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((ImageView) viewGroup.findViewById(R.id.wide_image)).setImageBitmap(Y);
                            viewGroup.findViewById(R.id.wide_image).setVisibility(0);
                        }
                    });
                }
            }).start();
        } catch (Throwable unused) {
        }
    }

    protected String getVideoUrl(AppnextAd appnextAd, String str) {
        if (str.equals("30")) {
            String videoUrl30Sec = appnextAd.getVideoUrl30Sec();
            if (videoUrl30Sec.equals("")) {
                videoUrl30Sec = appnextAd.getVideoUrl();
            }
            if (videoUrl30Sec.equals("")) {
                videoUrl30Sec = appnextAd.getVideoUrlHigh30Sec();
            }
            return videoUrl30Sec.equals("") ? appnextAd.getVideoUrlHigh() : videoUrl30Sec;
        }
        String videoUrl = appnextAd.getVideoUrl();
        if (videoUrl.equals("")) {
            videoUrl = appnextAd.getVideoUrl30Sec();
        }
        if (videoUrl.equals("")) {
            videoUrl = appnextAd.getVideoUrlHigh();
        }
        return videoUrl.equals("") ? appnextAd.getVideoUrlHigh30Sec() : videoUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkProgress() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                int currentPosition = (int) ((mediaPlayer.getCurrentPosition() / this.mediaPlayer.getDuration()) * 100.0f);
                if (currentPosition > 25 && this.lastProgress == 0) {
                    this.lastProgress = 25;
                    report(com.appnext.ads.a.J);
                } else if (currentPosition > 50 && this.lastProgress == 25) {
                    this.lastProgress = 50;
                    report(com.appnext.ads.a.K);
                } else if (currentPosition > 75 && this.lastProgress == 50) {
                    this.lastProgress = 75;
                    report(com.appnext.ads.a.L);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.banners.e
    public void onScrollChanged(int i) {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || this.finished) {
                return;
            }
            if (mediaPlayer.isPlaying() && i < 90) {
                try {
                    this.rootView.findViewById(R.id.media).findViewById(R.id.play).setVisibility(0);
                } catch (Throwable unused) {
                }
                pause();
            }
            if (this.mediaPlayer.isPlaying() || i <= 90 || !this.adRequest.isAutoPlay()) {
                return;
            }
            this.mediaPlayer.getCurrentPosition();
            this.mediaPlayer.getDuration();
            play();
            try {
                this.rootView.findViewById(R.id.media).findViewById(R.id.play).setVisibility(8);
            } catch (Throwable unused2) {
            }
            if (this.started) {
                return;
            }
            report(com.appnext.ads.a.I);
            this.started = true;
        } catch (Throwable unused3) {
        }
    }

    @Override // com.appnext.banners.e
    public void destroy() {
        super.destroy();
        try {
            this.userAction.destroy();
        } catch (Throwable unused) {
        }
        try {
            VideoView videoView = this.videoView;
            if (videoView != null) {
                videoView.setOnCompletionListener(null);
                this.videoView.setOnErrorListener(null);
                this.videoView.setOnPreparedListener(null);
                this.videoView.suspend();
                this.videoView = null;
                this.mediaPlayer.release();
                this.mediaPlayer = null;
            }
        } catch (Throwable unused2) {
        }
        try {
            i iVar = this.serviceHelper;
            if (iVar != null) {
                iVar.a(this.context);
            }
            this.serviceHelper = null;
        } catch (Throwable unused3) {
        }
        try {
            this.bannerAd.destroy();
            this.bannerAd = null;
        } catch (Throwable unused4) {
        }
        this.adRequest = null;
        try {
            this.mHandler.removeCallbacksAndMessages(null);
        } catch (Throwable unused5) {
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        destroy();
    }

    @Override // com.appnext.banners.e
    public void play() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null || mediaPlayer.isPlaying()) {
            return;
        }
        this.mediaPlayer.start();
    }

    @Override // com.appnext.banners.e
    public void pause() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.mediaPlayer.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void report(String str) {
        try {
            BannerAd bannerAd = this.bannerAd;
            if (bannerAd != null) {
                com.appnext.core.f.a(bannerAd.getTID(), this.bannerAd.getVID(), this.bannerAd.getAUID(), getPlacementId() == null ? "" : getPlacementId(), this.bannerAd.getSessionId(), str, this.template, getSelectedAd() != null ? getSelectedAd().getBannerID() : "", getSelectedAd() != null ? getSelectedAd().getCampaignID() : "");
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.banners.e
    public boolean isClickEnabled() {
        return this.clickEnabled;
    }

    @Override // com.appnext.banners.e
    public void setClickEnabled(boolean z) {
        this.clickEnabled = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BannerAd getBannerAd() {
        return this.bannerAd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BannerAdData getSelectedAd() {
        return this.currentAd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSelectedAd(BannerAdData bannerAdData) {
        this.currentAd = bannerAdData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BannerAdRequest getAdRequest() {
        return this.adRequest;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setReportedImpression(boolean z) {
        this.reportedImpression = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isReportedImpression() {
        return this.reportedImpression;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public q getUserAction() {
        return this.userAction;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ArrayList<AppnextAd> getAds() {
        return this.ads;
    }
}
