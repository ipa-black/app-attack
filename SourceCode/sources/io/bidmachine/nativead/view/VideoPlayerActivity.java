package io.bidmachine.nativead.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.vast.view.CircleCountdownView;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
/* loaded from: classes5.dex */
public class VideoPlayerActivity extends Activity implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private static final String FILE_URI = "io.bidmachine.fileUri";
    private static final String SEEK_TO = "io.bidmachine.seekTo";
    private VideoPlayerActivityListener listener;
    private int seekTo;
    private VideoView videoView;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface VideoPlayerActivityListener {
        void videoPlayerActivityClosed(int i, boolean z);
    }

    public static Intent getIntent(Context context, String str, int i) {
        Intent intent = new Intent(context, VideoPlayerActivity.class);
        intent.putExtra(FILE_URI, str);
        intent.putExtra(SEEK_TO, i);
        return intent;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra(FILE_URI);
        int intExtra = intent.getIntExtra(SEEK_TO, 0);
        this.seekTo = intExtra;
        Logger.log(String.format("VideoPlayerActivity started, position: %s", Integer.valueOf(intExtra)));
        if (stringExtra == null) {
            return;
        }
        this.listener = MediaView.listener;
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.videoView = new VideoView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.videoView.setLayoutParams(layoutParams);
        this.videoView.setOnCompletionListener(this);
        this.videoView.setOnPreparedListener(this);
        this.videoView.setVideoPath(stringExtra);
        relativeLayout.addView(this.videoView);
        float screenDensity = Utils.getScreenDensity(this);
        int round = Math.round(24.0f * screenDensity);
        int round2 = Math.round(screenDensity * 8.0f);
        CircleCountdownView circleCountdownView = new CircleCountdownView(this);
        circleCountdownView.setColors(Assets.mainAssetsColor, Assets.backgroundColor);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(round, round);
        layoutParams2.addRule(11, -1);
        layoutParams2.addRule(10, -1);
        layoutParams2.setMargins(round2, round2, round2, round2);
        circleCountdownView.setImage(Assets.getBitmapFromBase64(Assets.close));
        circleCountdownView.setLayoutParams(layoutParams2);
        circleCountdownView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.VideoPlayerActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlayerActivity.this.closeClicked();
            }
        });
        relativeLayout.addView(circleCountdownView);
        setContentView(relativeLayout);
    }

    private void finishActivity() {
        runOnUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.VideoPlayerActivity.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    VideoPlayerActivity.this.getWindow().clearFlags(128);
                } catch (Exception e2) {
                    Logger.log(e2);
                }
            }
        });
        finish();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        VideoPlayerActivityListener videoPlayerActivityListener = this.listener;
        if (videoPlayerActivityListener != null) {
            videoPlayerActivityListener.videoPlayerActivityClosed(0, true);
        }
        finishActivity();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        finishActivity();
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        VideoView videoView = this.videoView;
        if (videoView == null || !videoView.canSeekForward()) {
            return;
        }
        this.videoView.seekTo(this.seekTo);
        this.videoView.start();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        closeClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeClicked() {
        if (this.listener != null) {
            this.listener.videoPlayerActivityClosed(this.videoView.isPlaying() ? this.videoView.getCurrentPosition() : 0, false);
        }
        finishActivity();
    }
}
