package com.appodeal.ads;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.appodeal.ads.utils.Log;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.vast.view.CircleCountdownView;
/* loaded from: classes.dex */
public class VideoPlayerActivity extends Activity implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f6410d = 0;

    /* renamed from: a  reason: collision with root package name */
    public int f6411a;

    /* renamed from: b  reason: collision with root package name */
    public VideoView f6412b;

    /* renamed from: c  reason: collision with root package name */
    public a f6413c;

    /* loaded from: classes.dex */
    public interface a {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        try {
            getWindow().clearFlags(128);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public final void a() {
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.VideoPlayerActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerActivity.this.b();
            }
        });
        finish();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.f6413c != null) {
            ((g2) this.f6413c).a(this.f6412b.isPlaying() ? this.f6412b.getCurrentPosition() : 0, false);
        }
        a();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        a aVar = this.f6413c;
        if (aVar != null) {
            ((g2) aVar).a(0, true);
        }
        a();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("com.appodeal.ads.fileUri");
        int intExtra = intent.getIntExtra("com.appodeal.ads.seekTo", 0);
        this.f6411a = intExtra;
        Log.log("VideoPlayerActivity", "Start", String.format("position: %s", Integer.valueOf(intExtra)));
        if (stringExtra == null) {
            return;
        }
        this.f6413c = g2.y;
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f6412b = new VideoView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f6412b.setLayoutParams(layoutParams);
        this.f6412b.setOnCompletionListener(this);
        this.f6412b.setOnPreparedListener(this);
        this.f6412b.setVideoPath(stringExtra);
        relativeLayout.addView(this.f6412b);
        CircleCountdownView circleCountdownView = new CircleCountdownView(this);
        circleCountdownView.setColors(Assets.mainAssetsColor, Assets.backgroundColor);
        int a2 = f1.a(this, 24.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(a2, a2);
        layoutParams2.addRule(11, -1);
        layoutParams2.addRule(10, -1);
        int a3 = f1.a(this, 8.0f);
        layoutParams2.setMargins(a3, a3, a3, a3);
        circleCountdownView.setImage(Assets.getBitmapFromBase64(Assets.close));
        circleCountdownView.setLayoutParams(layoutParams2);
        circleCountdownView.setOnClickListener(new View.OnClickListener() { // from class: com.appodeal.ads.VideoPlayerActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayerActivity.this.a(view);
            }
        });
        relativeLayout.addView(circleCountdownView);
        setContentView(relativeLayout);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        a();
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        VideoView videoView = this.f6412b;
        if (videoView == null || !videoView.canSeekForward()) {
            return;
        }
        this.f6412b.seekTo(this.f6411a);
        this.f6412b.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (this.f6413c != null) {
            ((g2) this.f6413c).a(this.f6412b.isPlaying() ? this.f6412b.getCurrentPosition() : 0, false);
        }
        a();
    }
}
