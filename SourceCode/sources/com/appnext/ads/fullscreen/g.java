package com.appnext.ads.fullscreen;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.appnext.R;
import com.appnext.core.k;
/* loaded from: classes.dex */
public final class g extends Fragment {
    private Circle ay;
    private j bB;
    private ImageView bu;
    private Button bv;
    private TextView bw;
    private ImageView bx;
    private Animation by;
    private ImageView bz;
    private MediaPlayer mediaPlayer;
    private VideoView videoView;
    private final int TICK = 330;
    private int currentPosition = 0;
    private boolean finished = false;
    private int lastProgress = 0;
    private boolean started = false;
    private boolean bA = false;
    Runnable tick = new Runnable() { // from class: com.appnext.ads.fullscreen.g.11
        @Override // java.lang.Runnable
        public final void run() {
            if (g.this.videoView != null) {
                g.this.videoView.getCurrentPosition();
                g.this.videoView.getDuration();
                if (g.this.videoView.getDuration() == -1) {
                    g.l(g.this);
                    return;
                }
                g.n(g.this);
                if (g.this.ay.getVisibility() == 0) {
                    com.appnext.ads.fullscreen.a aVar = new com.appnext.ads.fullscreen.a(g.this.ay, 360.0f - (((g.this.videoView.getCurrentPosition() + 1) / g.this.videoView.getDuration()) * 360.0f));
                    aVar.setDuration(330L);
                    g.this.ay.startAnimation(aVar);
                }
                if (g.this.videoView.getCurrentPosition() >= g.this.videoView.getDuration() || g.this.finished) {
                    return;
                }
                g.this.mHandler.postDelayed(g.this.tick, 330L);
            }
        }
    };
    Runnable bC = new Runnable() { // from class: com.appnext.ads.fullscreen.g.2
        @Override // java.lang.Runnable
        public final void run() {
            g.this.bw.setAlpha(1.0f);
            g.this.bw.animate().alpha(0.0f).setDuration(1000L);
        }
    };
    private Handler mHandler = new Handler();

    static /* synthetic */ boolean a(g gVar, boolean z) {
        gVar.bA = true;
        return true;
    }

    static /* synthetic */ boolean b(g gVar, boolean z) {
        gVar.started = true;
        return true;
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        this.bB = (j) activity;
        s();
    }

    @Override // android.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.bB = (j) context;
        s();
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, final Bundle bundle) {
        try {
            RelativeLayout relativeLayout = (RelativeLayout) layoutInflater.inflate(this.bB.getTemplate("S2"), viewGroup, false);
            ImageView imageView = (ImageView) relativeLayout.findViewById(R.id.privacy);
            this.bz = (ImageView) relativeLayout.findViewById(R.id.close);
            this.bu = (ImageView) relativeLayout.findViewById(R.id.v_view);
            this.bv = (Button) relativeLayout.findViewById(R.id.install);
            this.ay = (Circle) relativeLayout.findViewById(R.id.circle);
            TextView textView = (TextView) relativeLayout.findViewById(R.id.click_txt);
            this.bw = textView;
            textView.setText("You will be redirected to " + (this.bB.isInstalled() ? "app" : "Google Play") + " once the ad will finish");
            this.bx = (ImageView) relativeLayout.findViewById(R.id.loader);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.g.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.this.bB.privacyClicked();
                }
            });
            if (k.a(this.bB.getSelectedAd(), this.bB.getConfigManager())) {
                k.a((Context) this.bB, imageView);
            }
            this.bz.setVisibility(8);
            if (this.bB.showClose()) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.appnext.ads.fullscreen.g.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.this.bz.setVisibility(0);
                    }
                }, this.bB.closeDelay());
            }
            this.bz.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.g.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.this.bB.closeClicked();
                }
            });
            if (getArguments() != null && getArguments().containsKey("showCta") && !getArguments().getBoolean("showCta")) {
                this.bv.setVisibility(8);
            }
            String ctaText = this.bB.getCtaText();
            int parseInt = Integer.parseInt(com.appnext.core.a.b.bp().b(this.bB.getLanguage(), com.appnext.core.a.b.hW, "len"));
            if (!TextUtils.isEmpty(ctaText) && ctaText.length() > parseInt) {
                ctaText = ctaText.substring(0, parseInt);
            }
            this.bv.setText(ctaText);
            this.bv.setTextSize(2, Integer.parseInt(com.appnext.core.a.b.bp().b(this.bB.getLanguage(), com.appnext.core.a.b.hW, "font_size_sp")));
            this.bv.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.g.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.this.bB.installClicked(g.this.bB.getSelectedAd());
                    g gVar = g.this;
                    a aVar = new a(gVar.bv, com.appnext.core.f.a(g.this.getActivity(), 40.0f), g.this.bv.getMeasuredWidth());
                    aVar.setDuration(300L);
                    aVar.setInterpolator(new AccelerateInterpolator());
                    aVar.setAnimationListener(new Animation.AnimationListener() { // from class: com.appnext.ads.fullscreen.g.6.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationStart(Animation animation) {
                            g.this.bv.setText("");
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationEnd(Animation animation) {
                            g.this.bu.setVisibility(0);
                        }
                    });
                    if (!g.this.bv.getText().equals("")) {
                        g.this.bv.startAnimation(aVar);
                    }
                    g.this.report(com.appnext.ads.a.N);
                }
            });
            this.bu.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.g.7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.this.bw.setVisibility(0);
                    g.this.bw.setAlpha(0.0f);
                    g.this.bw.animate().alpha(1.0f).setDuration(1000L);
                    if (!g.this.bA) {
                        g.a(g.this, true);
                        g.this.report(com.appnext.ads.a.O);
                    }
                    int captionTextTime = g.this.bB.getCaptionTextTime();
                    if (captionTextTime == -2) {
                        captionTextTime = Integer.parseInt(g.this.bB.getConfigManager().get("caption_text_time"));
                    }
                    if (captionTextTime > 0) {
                        g.this.mHandler.postDelayed(g.this.bC, captionTextTime * 1000);
                    }
                }
            });
            try {
                this.videoView = new VideoView(getActivity().getApplicationContext());
                this.videoView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                ((ViewGroup) relativeLayout.findViewById(R.id.media)).addView(this.videoView, 0);
                this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.appnext.ads.fullscreen.g.8
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer) {
                        g.this.mediaPlayer = mediaPlayer;
                        g.this.mediaPlayer.seekTo(g.this.currentPosition);
                        g.this.mediaPlayer.setOnBufferingUpdateListener(new MediaPlayer.OnBufferingUpdateListener() { // from class: com.appnext.ads.fullscreen.g.8.1
                            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
                            public final void onBufferingUpdate(MediaPlayer mediaPlayer2, int i) {
                                if (i < 100) {
                                    g.this.bx.setVisibility(0);
                                    g.this.bx.startAnimation(g.this.by);
                                    g.this.mediaPlayer.pause();
                                    return;
                                }
                                g.this.bx.clearAnimation();
                                g.this.bx.setVisibility(8);
                                g.this.mediaPlayer.start();
                            }
                        });
                        g.this.mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.appnext.ads.fullscreen.g.8.2
                            @Override // android.media.MediaPlayer.OnSeekCompleteListener
                            public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                                g.this.mediaPlayer.start();
                            }
                        });
                        g.this.mediaPlayer.start();
                        Bundle bundle2 = bundle;
                        if ((bundle2 == null || !bundle2.getBoolean("started")) && g.this.bB != null) {
                            g.b(g.this, true);
                            g.this.bB.videoStarted();
                            g.this.report(com.appnext.ads.a.I);
                        }
                        g.this.mHandler.postDelayed(g.this.tick, 33L);
                        if (g.this.bB.getMute()) {
                            g.this.mediaPlayer.setVolume(0.0f, 0.0f);
                        } else {
                            g.this.mediaPlayer.setVolume(1.0f, 1.0f);
                        }
                    }
                });
                this.videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.appnext.ads.fullscreen.g.9
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer) {
                        g.l(g.this);
                    }
                });
                this.videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.appnext.ads.fullscreen.g.10
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                        return true;
                    }
                });
                this.videoView.setVideoURI(this.bB.getSelectedVideoUri());
            } catch (Throwable unused) {
            }
            report(com.appnext.ads.a.F);
            return relativeLayout;
        } catch (Throwable unused2) {
            this.bB.closeClicked();
            return null;
        }
    }

    private void r() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || mediaPlayer.getCurrentPosition() == 0 || this.mediaPlayer.getDuration() == 0) {
                return;
            }
            if (this.finished) {
                return;
            }
            this.mediaPlayer.getCurrentPosition();
            this.mediaPlayer.getDuration();
            this.finished = true;
            j jVar = this.bB;
            if (jVar != null) {
                jVar.videoEnded();
            }
            report(com.appnext.ads.a.M);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        this.mHandler.removeCallbacks(this.tick);
        VideoView videoView = this.videoView;
        if (videoView != null) {
            videoView.pause();
            this.currentPosition = this.videoView.getCurrentPosition();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.videoView == null || this.finished) {
            return;
        }
        try {
            this.mediaPlayer.seekTo(this.currentPosition);
            this.mediaPlayer.start();
            this.mHandler.postDelayed(this.tick, 33L);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("currentPosition", this.currentPosition);
        bundle.putBoolean("started", this.started);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public final void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        if (bundle != null) {
            this.currentPosition = bundle.getInt("currentPosition");
        }
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        try {
            VideoView videoView = this.videoView;
            if (videoView != null) {
                videoView.setOnCompletionListener(null);
                this.videoView.setOnErrorListener(null);
                this.videoView.setOnPreparedListener(null);
                this.videoView.suspend();
                this.videoView = null;
            }
        } catch (Throwable unused) {
        }
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
                this.mediaPlayer = null;
            }
        } catch (Throwable unused2) {
        }
    }

    /* loaded from: classes.dex */
    private class a extends Animation {
        final int bH;
        int bI;
        View view;

        @Override // android.view.animation.Animation
        public final boolean willChangeBounds() {
            return true;
        }

        a(View view, int i, int i2) {
            this.view = view;
            this.bH = i;
            this.bI = i2;
        }

        @Override // android.view.animation.Animation
        protected final void applyTransformation(float f2, Transformation transformation) {
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            int i = this.bI;
            layoutParams.width = (int) (i + ((this.bH - i) * f2));
            this.view.requestLayout();
        }
    }

    private void checkProgress() {
        int currentPosition = (int) ((this.mediaPlayer.getCurrentPosition() / this.mediaPlayer.getDuration()) * 100.0f);
        if (currentPosition > 25 && this.lastProgress == 0) {
            this.lastProgress = 25;
            report(com.appnext.ads.a.J);
        } else if (currentPosition > 50 && this.lastProgress == 25) {
            this.lastProgress = 50;
            report(com.appnext.ads.a.K);
        } else if (currentPosition <= 75 || this.lastProgress != 50) {
        } else {
            this.lastProgress = 75;
            report(com.appnext.ads.a.L);
        }
    }

    private void s() {
        Animation loadAnimation = AnimationUtils.loadAnimation(getActivity(), R.anim.apnxt_stream_loader);
        this.by = loadAnimation;
        loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.appnext.ads.fullscreen.g.3
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                if (g.this.bx.getVisibility() != 8) {
                    g.this.bx.startAnimation(g.this.by);
                }
            }
        });
        this.by.setRepeatCount(-1);
        this.by.setRepeatMode(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void report(String str) {
        this.bB.report(str, "S2");
    }

    static /* synthetic */ void l(g gVar) {
        try {
            MediaPlayer mediaPlayer = gVar.mediaPlayer;
            if (mediaPlayer == null || mediaPlayer.getCurrentPosition() == 0 || gVar.mediaPlayer.getDuration() == 0) {
                return;
            }
            if (gVar.finished) {
                return;
            }
            gVar.mediaPlayer.getCurrentPosition();
            gVar.mediaPlayer.getDuration();
            gVar.finished = true;
            j jVar = gVar.bB;
            if (jVar != null) {
                jVar.videoEnded();
            }
            gVar.report(com.appnext.ads.a.M);
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ void n(g gVar) {
        int currentPosition = (int) ((gVar.mediaPlayer.getCurrentPosition() / gVar.mediaPlayer.getDuration()) * 100.0f);
        if (currentPosition > 25 && gVar.lastProgress == 0) {
            gVar.lastProgress = 25;
            gVar.report(com.appnext.ads.a.J);
        } else if (currentPosition > 50 && gVar.lastProgress == 25) {
            gVar.lastProgress = 50;
            gVar.report(com.appnext.ads.a.K);
        } else if (currentPosition <= 75 || gVar.lastProgress != 50) {
        } else {
            gVar.lastProgress = 75;
            gVar.report(com.appnext.ads.a.L);
        }
    }
}
