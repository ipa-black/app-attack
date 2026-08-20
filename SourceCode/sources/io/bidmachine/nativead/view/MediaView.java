package io.bidmachine.nativead.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.view.CircleCountdownView;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.nativead.NativeAdObject;
import io.bidmachine.nativead.NativeData;
import io.bidmachine.nativead.NativeInteractor;
import io.bidmachine.nativead.NativeMediaPrivateData;
import io.bidmachine.nativead.tasks.DownloadVastVideoTask;
import io.bidmachine.nativead.tasks.DownloadVideoTask;
import io.bidmachine.nativead.utils.ImageHelper;
import io.bidmachine.nativead.utils.NativeNetworkExecutor;
import io.bidmachine.nativead.view.VideoPlayerActivity;
import java.io.File;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes5.dex */
public class MediaView extends RelativeLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener, VideoPlayerActivity.VideoPlayerActivityListener {
    private static final float ASPECT_MULTIPLIER_HEIGHT_TO_WIDTH = 1.7777778f;
    private static final float ASPECT_MULTIPLIER_WIDTH_TO_HEIGHT = 0.5625f;
    public static VideoPlayerActivity.VideoPlayerActivityListener listener;
    private volatile boolean error;
    private boolean finishedOrExpanded;
    private boolean hasVideo;
    private ImageView imageView;
    boolean isInitialized;
    private boolean isMuted;
    private boolean isVideoFinishNotified;
    private boolean isVideoStartNotified;
    private MediaPlayer mediaPlayer;
    private boolean mediaPlayerPrepared;
    private boolean mediaPlayerPreparing;
    private CircleCountdownView muteButton;
    NativeData nativeData;
    NativeInteractor nativeInteractor;
    NativeMediaPrivateData nativeMediaData;
    private ImageView playButton;
    private ProgressBar progressBarView;
    private int quartile;
    private boolean startPlayVideoWhenReady;
    private NativeState state;
    private TextureView textureView;
    private int videoDuration;
    private int videoHeight;
    private boolean videoSizeWasChanged;
    private Timer videoVisibilityCheckerTimer;
    private int videoWidth;
    private boolean viewOnScreen;

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    static /* synthetic */ int access$1608(MediaView mediaView) {
        int i = mediaView.quartile;
        mediaView.quartile = i + 1;
        return i;
    }

    public MediaView(Context context) {
        super(context);
        this.isInitialized = false;
        this.isMuted = true;
        this.videoWidth = 0;
        this.videoHeight = 0;
        this.videoSizeWasChanged = true;
        this.state = NativeState.Image;
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isInitialized = false;
        this.isMuted = true;
        this.videoWidth = 0;
        this.videoHeight = 0;
        this.videoSizeWasChanged = true;
        this.state = NativeState.Image;
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isInitialized = false;
        this.isMuted = true;
        this.videoWidth = 0;
        this.videoHeight = 0;
        this.videoSizeWasChanged = true;
        this.state = NativeState.Image;
    }

    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.isInitialized = false;
        this.isMuted = true;
        this.videoWidth = 0;
        this.videoHeight = 0;
        this.videoSizeWasChanged = true;
        this.state = NativeState.Image;
    }

    public void setNativeAdObject(NativeAdObject nativeAdObject) {
        applyNative(nativeAdObject, nativeAdObject, nativeAdObject);
    }

    public void applyNative(NativeData nativeData, NativeMediaPrivateData nativeMediaPrivateData, NativeInteractor nativeInteractor) {
        this.nativeData = nativeData;
        this.nativeMediaData = nativeMediaPrivateData;
        this.nativeInteractor = nativeInteractor;
        if (nativeMediaPrivateData.getVideoUri() != null || !TextUtils.isEmpty(nativeData.getVideoUrl()) || !TextUtils.isEmpty(nativeData.getVideoAdm())) {
            this.hasVideo = true;
        }
        createView();
    }

    void createView() {
        if (!this.isInitialized) {
            this.isInitialized = true;
            ImageView imageView = new ImageView(getContext());
            this.imageView = imageView;
            imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.imageView.setAdjustViewBounds(true);
            addView(this.imageView);
            if (this.hasVideo) {
                int round = Math.round(Utils.getScreenDensity(getContext()) * 50.0f);
                this.progressBarView = new ProgressBar(getContext(), null, 16842874);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(round, round);
                layoutParams.addRule(13, -1);
                this.progressBarView.setLayoutParams(layoutParams);
                this.progressBarView.setBackgroundColor(Color.parseColor("#6b000000"));
                this.progressBarView.setVisibility(4);
                addView(this.progressBarView);
                ImageView imageView2 = new ImageView(getContext());
                this.playButton = imageView2;
                imageView2.setImageResource(17301540);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(round, round);
                layoutParams2.addRule(13, -1);
                this.playButton.setLayoutParams(layoutParams2);
                this.playButton.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.MediaView.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MediaView.this.startPlayVideoWhenReady = true;
                        MediaView.this.tryPlayVideo();
                    }
                });
                this.playButton.setVisibility(4);
                addView(this.playButton);
                TextureView textureView = new TextureView(getContext());
                this.textureView = textureView;
                textureView.setSurfaceTextureListener(this);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(13);
                this.textureView.setLayoutParams(layoutParams3);
                this.textureView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.MediaView.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MediaView.this.nativeMediaData == null || MediaView.this.nativeMediaData.getVideoUri() == null) {
                            return;
                        }
                        Logger.log("Video has been clicked");
                        MediaView.listener = MediaView.this;
                        MediaView.this.finishedOrExpanded = true;
                        int currentPosition = (MediaView.this.isMediaPlayerAvailable() && MediaView.this.mediaPlayer.isPlaying()) ? MediaView.this.mediaPlayer.getCurrentPosition() : 0;
                        MediaView.this.pausePlayer();
                        Utils.startActivity(MediaView.this.getContext(), VideoPlayerActivity.getIntent(MediaView.this.getContext(), MediaView.this.nativeMediaData.getVideoUri().getPath(), currentPosition));
                    }
                });
                addView(this.textureView);
                createMuteButton();
                createMediaPlayer();
                NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
                if (nativeMediaPrivateData != null && nativeMediaPrivateData.getVideoUri() != null && this.nativeMediaData.getVideoUri().getPath() != null && new File(this.nativeMediaData.getVideoUri().getPath()).exists()) {
                    this.startPlayVideoWhenReady = true;
                } else if (this.nativeData != null) {
                    updateViewState(NativeState.Loading);
                    if (!TextUtils.isEmpty(this.nativeData.getVideoUrl())) {
                        executeTask(new DownloadVideoTask(getContext(), new DownloadVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.view.MediaView.3
                            @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
                            public void onVideoLoaded(DownloadVideoTask downloadVideoTask, Uri uri) {
                                Logger.log("MediaView video is loaded");
                                MediaView.this.nativeMediaData.setVideoUri(uri);
                                MediaView.this.prepareMediaPlayer();
                            }

                            @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
                            public void onVideoLoadingError(DownloadVideoTask downloadVideoTask) {
                                Logger.log("MediaView video is not loaded");
                                MediaView.this.updateViewState(NativeState.Image);
                                MediaView.this.hasVideo = false;
                            }
                        }, this.nativeData.getVideoUrl()));
                    } else if (!TextUtils.isEmpty(this.nativeData.getVideoAdm())) {
                        executeTask(new DownloadVastVideoTask(getContext(), new DownloadVastVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.view.MediaView.4
                            @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
                            public void onVideoLoaded(DownloadVastVideoTask downloadVastVideoTask, Uri uri, VastRequest vastRequest) {
                                Logger.log("MediaView video is loaded");
                                MediaView.this.nativeMediaData.setVideoUri(uri);
                                MediaView.this.nativeMediaData.setVastRequest(vastRequest);
                                MediaView.this.prepareMediaPlayer();
                            }

                            @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
                            public void onVideoLoadingError(DownloadVastVideoTask downloadVastVideoTask) {
                                Logger.log("MediaView video is not loaded");
                                MediaView.this.updateViewState(NativeState.Image);
                                MediaView.this.hasVideo = false;
                            }
                        }, this.nativeData.getVideoAdm()));
                    }
                }
            } else {
                updateViewState(NativeState.Image);
            }
        }
        if (this.nativeMediaData != null) {
            ImageHelper.fillImageView(getContext(), this.imageView, this.nativeMediaData.getImageUri(), this.nativeMediaData.getImageDrawable());
        }
    }

    public void release() {
        new Thread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView.5
            @Override // java.lang.Runnable
            public void run() {
                MediaView.this.cleanUpMediaPlayer();
            }
        }).start();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        if (i == 0) {
            if (this.startPlayVideoWhenReady) {
                tryPlayVideo();
            }
        } else {
            pausePlayer();
        }
        super.onWindowVisibilityChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pausePlayer() {
        try {
            if (isMediaPlayerAvailable() && this.mediaPlayer.isPlaying()) {
                this.mediaPlayer.pause();
            }
            if (this.state != NativeState.Loading) {
                updateViewState(NativeState.Paused);
            }
        } catch (Exception e2) {
            Logger.log(e2);
        }
    }

    private void createMediaPlayer() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this);
        this.mediaPlayer.setOnErrorListener(this);
        this.mediaPlayer.setOnPreparedListener(this);
        this.mediaPlayer.setOnVideoSizeChangedListener(this);
        this.mediaPlayer.setAudioStreamType(3);
        updateVolume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareMediaPlayer() {
        NativeMediaPrivateData nativeMediaPrivateData;
        try {
            if (this.mediaPlayerPrepared || (nativeMediaPrivateData = this.nativeMediaData) == null || nativeMediaPrivateData.getVideoUri() == null || this.mediaPlayerPreparing || this.error) {
                return;
            }
            this.mediaPlayer.setDataSource(getContext(), this.nativeMediaData.getVideoUri());
            this.mediaPlayer.prepareAsync();
            this.mediaPlayerPreparing = true;
        } catch (Exception e2) {
            Logger.log(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanUpMediaPlayer() {
        if (this.mediaPlayer != null) {
            try {
                if (!this.error) {
                    if (this.mediaPlayer.isPlaying()) {
                        this.mediaPlayer.stop();
                    }
                    this.mediaPlayer.reset();
                }
                this.mediaPlayer.setOnCompletionListener(null);
                this.mediaPlayer.setOnErrorListener(null);
                this.mediaPlayer.setOnPreparedListener(null);
                this.mediaPlayer.setOnVideoSizeChangedListener(null);
                this.mediaPlayer.release();
            } catch (Exception e2) {
                Logger.log(e2);
            }
            this.mediaPlayer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryPlayVideo() {
        if (this.mediaPlayer == null) {
            createMediaPlayer();
        }
        if (!this.mediaPlayerPrepared) {
            prepareMediaPlayer();
        }
        if (isMediaPlayerAvailable() && this.mediaPlayerPrepared && this.viewOnScreen && isAdOnScreen()) {
            if (!this.mediaPlayer.isPlaying()) {
                this.mediaPlayer.start();
                notifyVideoStarted();
                if (this.videoVisibilityCheckerTimer == null) {
                    startVideoVisibilityCheckerTimer();
                }
            }
            if (this.mediaPlayer.getCurrentPosition() <= 0 || this.state == NativeState.Playing) {
                return;
            }
            updateViewState(NativeState.Playing);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.nativead.view.MediaView$8  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$nativead$view$NativeState;

        static {
            int[] iArr = new int[NativeState.values().length];
            $SwitchMap$io$bidmachine$nativead$view$NativeState = iArr;
            try {
                iArr[NativeState.Image.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$nativead$view$NativeState[NativeState.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$nativead$view$NativeState[NativeState.Playing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$bidmachine$nativead$view$NativeState[NativeState.Paused.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewState(NativeState nativeState) {
        this.state = nativeState;
        int i = AnonymousClass8.$SwitchMap$io$bidmachine$nativead$view$NativeState[nativeState.ordinal()];
        if (i == 1) {
            ImageView imageView = this.imageView;
            if (imageView != null) {
                imageView.setVisibility(0);
                this.imageView.bringToFront();
            }
            if (this.hasVideo) {
                this.textureView.setVisibility(4);
                this.progressBarView.setVisibility(4);
                this.playButton.setVisibility(4);
                this.muteButton.setVisibility(4);
            }
        } else if (i == 2) {
            ImageView imageView2 = this.imageView;
            if (imageView2 != null) {
                imageView2.setVisibility(0);
                this.imageView.bringToFront();
            }
            if (this.hasVideo) {
                this.progressBarView.setVisibility(0);
                this.progressBarView.bringToFront();
                this.textureView.setVisibility(4);
                this.playButton.setVisibility(4);
                this.muteButton.setVisibility(4);
            }
        } else if (i == 3) {
            ImageView imageView3 = this.imageView;
            if (imageView3 != null) {
                imageView3.setVisibility(4);
            }
            if (this.hasVideo) {
                this.textureView.setVisibility(0);
                this.textureView.bringToFront();
                this.muteButton.setVisibility(0);
                this.muteButton.bringToFront();
                updateMuteButton();
                this.progressBarView.setVisibility(4);
                this.playButton.setVisibility(4);
            }
        } else if (i != 4) {
        } else {
            ImageView imageView4 = this.imageView;
            if (imageView4 != null) {
                imageView4.setVisibility(0);
                this.imageView.bringToFront();
            }
            if (this.hasVideo) {
                this.playButton.setVisibility(0);
                this.playButton.bringToFront();
                this.textureView.setVisibility(4);
                this.progressBarView.setVisibility(4);
                this.muteButton.setVisibility(4);
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(size, measuredWidth) : measuredWidth;
        }
        int i3 = (int) (size * ASPECT_MULTIPLIER_WIDTH_TO_HEIGHT);
        if (mode2 != 1073741824 || size2 >= i3) {
            size2 = i3;
        } else {
            size = (int) (size2 * ASPECT_MULTIPLIER_HEIGHT_TO_WIDTH);
        }
        if (Math.abs(size2 - measuredHeight) >= 2 || Math.abs(size - measuredWidth) >= 2) {
            getLayoutParams().width = size;
            getLayoutParams().height = size2;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateTextureLayoutParams();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        try {
            if (this.mediaPlayer == null) {
                createMediaPlayer();
            }
            this.mediaPlayer.setSurface(new Surface(surfaceTexture));
            prepareMediaPlayer();
        } catch (Exception e2) {
            Logger.log(e2);
            updateViewState(NativeState.Image);
            this.hasVideo = false;
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        videoFinished();
    }

    private void videoFinished() {
        notifyVideoFinished();
        stopVideoVisibilityCheckerTimer();
        pausePlayer();
        if (isMediaPlayerAvailable()) {
            this.mediaPlayer.seekTo(0);
        }
        this.finishedOrExpanded = true;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Logger.log("MediaView: onError");
        clearPlayerOnError();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPlayerOnError() {
        this.startPlayVideoWhenReady = false;
        cleanUpMediaPlayer();
        updateViewState(NativeState.Image);
        stopVideoVisibilityCheckerTimer();
        this.error = true;
        this.hasVideo = false;
        processErrorEvent();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Logger.log("MediaView: onPrepared");
        this.mediaPlayerPrepared = true;
        if (this.startPlayVideoWhenReady) {
            tryPlayVideo();
        } else {
            updateViewState(NativeState.Paused);
        }
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.videoWidth = i;
        this.videoHeight = i2;
        this.videoSizeWasChanged = true;
        updateTextureLayoutParams();
    }

    private void updateTextureLayoutParams() {
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0 || !this.videoSizeWasChanged || this.videoWidth == 0 || this.videoHeight == 0) {
            return;
        }
        this.videoSizeWasChanged = false;
        ViewGroup.LayoutParams layoutParams = this.textureView.getLayoutParams();
        int i = this.videoWidth;
        int i2 = this.videoHeight;
        if (i > i2) {
            layoutParams.width = width;
            layoutParams.height = (width * this.videoHeight) / this.videoWidth;
        } else {
            layoutParams.width = (i * height) / i2;
            layoutParams.height = height;
        }
        this.textureView.setLayoutParams(layoutParams);
    }

    public void onViewAppearOnScreen() {
        Logger.log("MediaView: onViewAppearOnScreen");
        this.viewOnScreen = true;
        if (this.startPlayVideoWhenReady) {
            tryPlayVideo();
        } else if (this.state != NativeState.Loading) {
            updateViewState(NativeState.Paused);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMediaPlayerAvailable() {
        return (this.error || this.mediaPlayer == null) ? false : true;
    }

    private void notifyVideoStarted() {
        if (this.isVideoStartNotified) {
            return;
        }
        processImpressions();
        this.isVideoStartNotified = true;
        Logger.log("MediaView: video started");
    }

    private void notifyVideoFinished() {
        if (this.isVideoFinishNotified) {
            return;
        }
        processEvent(TrackingEvent.complete);
        this.isVideoFinishNotified = true;
        Logger.log("MediaView: video finished");
    }

    private void createMuteButton() {
        Context context = getContext();
        float screenDensity = Utils.getScreenDensity(context);
        int round = Math.round(40.0f * screenDensity);
        int round2 = Math.round(screenDensity * 8.0f);
        CircleCountdownView circleCountdownView = new CircleCountdownView(context);
        this.muteButton = circleCountdownView;
        circleCountdownView.setColors(Assets.mainAssetsColor, Assets.backgroundColor);
        this.muteButton.setPadding(round2, round2, round2, round2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(round, round);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        this.muteButton.setLayoutParams(layoutParams);
        updateMuteButton();
        this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.MediaView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaView.this.isMediaPlayerAvailable()) {
                    if (MediaView.this.isMuted) {
                        MediaView.this.mediaPlayer.setVolume(1.0f, 1.0f);
                        MediaView.this.isMuted = false;
                    } else {
                        MediaView.this.mediaPlayer.setVolume(0.0f, 0.0f);
                        MediaView.this.isMuted = true;
                    }
                    MediaView.this.updateMuteButton();
                }
            }
        });
        addView(this.muteButton);
    }

    private void updateVolume() {
        if (isMediaPlayerAvailable()) {
            if (this.isMuted) {
                this.mediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                this.mediaPlayer.setVolume(1.0f, 1.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMuteButton() {
        CircleCountdownView circleCountdownView = this.muteButton;
        if (circleCountdownView != null) {
            if (this.isMuted) {
                circleCountdownView.setImage(Assets.getBitmapFromBase64(Assets.unmute));
            } else {
                circleCountdownView.setImage(Assets.getBitmapFromBase64(Assets.mute));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAdOnScreen() {
        return getGlobalVisibleRect(new Rect()) && isShown() && hasWindowFocus();
    }

    public void startVideoVisibilityCheckerTimer() {
        if (this.hasVideo) {
            Timer timer = new Timer();
            this.videoVisibilityCheckerTimer = timer;
            timer.schedule(new TimerTask() { // from class: io.bidmachine.nativead.view.MediaView.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    int currentPosition;
                    try {
                        if (!MediaView.this.error) {
                            if (MediaView.this.isAdOnScreen()) {
                                try {
                                    if (MediaView.this.isMediaPlayerAvailable() && !MediaView.this.error && MediaView.this.mediaPlayer.isPlaying()) {
                                        if (MediaView.this.videoDuration == 0) {
                                            MediaView mediaView = MediaView.this;
                                            mediaView.videoDuration = mediaView.mediaPlayer.getDuration();
                                        }
                                        if (MediaView.this.videoDuration != 0 && (currentPosition = (MediaView.this.mediaPlayer.getCurrentPosition() * 100) / MediaView.this.videoDuration) >= MediaView.this.quartile * 25) {
                                            if (MediaView.this.quartile != 0) {
                                                if (MediaView.this.quartile != 1) {
                                                    if (MediaView.this.quartile != 2) {
                                                        if (MediaView.this.quartile == 3) {
                                                            Logger.log(String.format("Video at third quartile: %s%%", Integer.valueOf(currentPosition)));
                                                            MediaView.this.processEvent(TrackingEvent.thirdQuartile);
                                                        }
                                                    } else {
                                                        Logger.log(String.format("Video at midpoint: %s%%", Integer.valueOf(currentPosition)));
                                                        MediaView.this.processEvent(TrackingEvent.midpoint);
                                                    }
                                                } else {
                                                    Logger.log(String.format("Video at first quartile: %s%%", Integer.valueOf(currentPosition)));
                                                    MediaView.this.processEvent(TrackingEvent.firstQuartile);
                                                }
                                            } else {
                                                Logger.log(String.format("Video started: %s%%", Integer.valueOf(currentPosition)));
                                                MediaView.this.processEvent(TrackingEvent.start);
                                            }
                                            MediaView.access$1608(MediaView.this);
                                        }
                                    }
                                    Logger.log("MediaView is on screen");
                                    Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView.7.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            MediaView.this.tryPlayVideo();
                                        }
                                    });
                                    return;
                                } catch (IllegalStateException unused) {
                                    Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView.7.4
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            MediaView.this.clearPlayerOnError();
                                        }
                                    });
                                    return;
                                }
                            }
                            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView.7.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    MediaView.this.pausePlayer();
                                    if (MediaView.this.finishedOrExpanded) {
                                        MediaView.this.stopVideoVisibilityCheckerTimer();
                                    }
                                }
                            });
                            return;
                        }
                        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MediaView.this.clearPlayerOnError();
                            }
                        });
                    } catch (Throwable unused2) {
                        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView.7.5
                            @Override // java.lang.Runnable
                            public void run() {
                                MediaView.this.clearPlayerOnError();
                            }
                        });
                    }
                }
            }, 0L, 500);
        }
    }

    public void stopVideoVisibilityCheckerTimer() {
        Timer timer = this.videoVisibilityCheckerTimer;
        if (timer != null) {
            timer.cancel();
            this.videoVisibilityCheckerTimer = null;
        }
    }

    private void executeTask(Runnable runnable) {
        NativeNetworkExecutor.getInstance().execute(runnable);
    }

    private void processImpressions() {
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        if (nativeMediaPrivateData == null || nativeMediaPrivateData.getVastRequest() == null || this.nativeMediaData.getVastRequest().getVastAd() == null) {
            return;
        }
        fireUrls(this.nativeMediaData.getVastRequest().getVastAd().getImpressionUrlList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processEvent(TrackingEvent trackingEvent) {
        NativeInteractor nativeInteractor;
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        if (nativeMediaPrivateData != null && nativeMediaPrivateData.getVastRequest() != null && this.nativeMediaData.getVastRequest().getVastAd() != null) {
            fireUrls(this.nativeMediaData.getVastRequest().getVastAd().getTrackingEventListMap().get(trackingEvent));
        }
        if (trackingEvent != TrackingEvent.complete || (nativeInteractor = this.nativeInteractor) == null) {
            return;
        }
        nativeInteractor.dispatchVideoPlayFinished();
    }

    private void fireUrls(List<String> list) {
        if (list == null) {
            return;
        }
        for (String str : list) {
            Utils.httpGetURL(str, NativeNetworkExecutor.getInstance());
        }
    }

    private void processErrorEvent() {
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        if (nativeMediaPrivateData == null || nativeMediaPrivateData.getVastRequest() == null) {
            return;
        }
        this.nativeMediaData.getVastRequest().sendError(405);
    }

    @Override // io.bidmachine.nativead.view.VideoPlayerActivity.VideoPlayerActivityListener
    public void videoPlayerActivityClosed(int i, boolean z) {
        Logger.log(String.format("MediaView videoPlayerActivityClosed, position: %s, finished: %s", Integer.valueOf(i), Boolean.valueOf(z)));
        try {
            if (z) {
                videoFinished();
            } else if (isMediaPlayerAvailable()) {
                this.mediaPlayer.seekTo(i);
            }
        } catch (Exception e2) {
            Logger.log(e2);
        }
        listener = null;
    }
}
