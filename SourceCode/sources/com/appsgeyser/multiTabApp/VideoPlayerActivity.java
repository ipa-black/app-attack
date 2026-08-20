package com.appsgeyser.multiTabApp;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.VideoView;
import com.appsgeyser.multiTabApp.utils.ThemeUtils;
/* loaded from: classes2.dex */
public class VideoPlayerActivity extends Activity {
    private VideoView mVideo = null;
    private ProgressBar progressBar;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Uri data = getIntent().getData();
        ThemeUtils.setCurrentThemeWithActionBar(this);
        setContentView(com.w_19998775.R.layout.video_layout);
        this.mVideo = (VideoView) findViewById(com.w_19998775.R.id.video);
        this.progressBar = (ProgressBar) findViewById(com.w_19998775.R.id.video_progress_bar);
        this.mVideo.setVideoURI(data);
        this.mVideo.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.appsgeyser.multiTabApp.VideoPlayerActivity.1
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                VideoPlayerActivity.this.mVideo.setOnErrorListener(null);
                Intent intent = VideoPlayerActivity.this.getIntent();
                if (intent != null) {
                    Intent intent2 = new Intent("android.intent.action.VIEW", intent.getData());
                    intent2.setFlags(268435456);
                    VideoPlayerActivity.this.getApplicationContext().startActivity(intent2);
                    VideoPlayerActivity.this.finish();
                    return false;
                }
                return false;
            }
        });
        MediaController mediaController = new MediaController(this);
        mediaController.setAnchorView(this.mVideo);
        this.mVideo.setMediaController(mediaController);
        this.mVideo.start();
        this.progressBar.setVisibility(0);
        this.mVideo.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.appsgeyser.multiTabApp.VideoPlayerActivity.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VideoPlayerActivity.this.progressBar.setVisibility(8);
                mediaPlayer.start();
                mediaPlayer.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.appsgeyser.multiTabApp.VideoPlayerActivity.2.1
                    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
                    public void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i, int i2) {
                        VideoPlayerActivity.this.progressBar.setVisibility(8);
                        mediaPlayer2.start();
                    }
                });
            }
        });
    }
}
