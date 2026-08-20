.class public Lio/bidmachine/nativead/view/MediaView;
.super Landroid/widget/RelativeLayout;
.source "MediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;


# static fields
.field private static final ASPECT_MULTIPLIER_HEIGHT_TO_WIDTH:F = 1.7777778f

.field private static final ASPECT_MULTIPLIER_WIDTH_TO_HEIGHT:F = 0.5625f

.field public static listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;


# instance fields
.field private volatile error:Z

.field private finishedOrExpanded:Z

.field private hasVideo:Z

.field private imageView:Landroid/widget/ImageView;

.field isInitialized:Z

.field private isMuted:Z

.field private isVideoFinishNotified:Z

.field private isVideoStartNotified:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mediaPlayerPrepared:Z

.field private mediaPlayerPreparing:Z

.field private muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

.field nativeData:Lio/bidmachine/nativead/NativeData;

.field nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

.field nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

.field private playButton:Landroid/widget/ImageView;

.field private progressBarView:Landroid/widget/ProgressBar;

.field private quartile:I

.field private startPlayVideoWhenReady:Z

.field private state:Lio/bidmachine/nativead/view/NativeState;

.field private textureView:Landroid/view/TextureView;

.field private videoDuration:I

.field private videoHeight:I

.field private videoSizeWasChanged:Z

.field private videoVisibilityCheckerTimer:Ljava/util/Timer;

.field private videoWidth:I

.field private viewOnScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    .line 86
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    .line 87
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    .line 88
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 92
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    const/4 p2, 0x1

    .line 76
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    .line 86
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    .line 87
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    .line 88
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 92
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    const/4 p2, 0x1

    .line 76
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    .line 86
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    .line 87
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    .line 88
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 92
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    const/4 p2, 0x1

    .line 76
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    .line 86
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    .line 87
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    .line 88
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 92
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    return-void
.end method

.method static synthetic access$002(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    return p1
.end method

.method static synthetic access$100(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    return-void
.end method

.method static synthetic access$1000(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    return p0
.end method

.method static synthetic access$1002(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    return p1
.end method

.method static synthetic access$1100(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->updateMuteButton()V

    return-void
.end method

.method static synthetic access$1200(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    return p0
.end method

.method static synthetic access$1300(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->clearPlayerOnError()V

    return-void
.end method

.method static synthetic access$1400(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isAdOnScreen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lio/bidmachine/nativead/view/MediaView;)I
    .locals 0

    .line 48
    iget p0, p0, Lio/bidmachine/nativead/view/MediaView;->videoDuration:I

    return p0
.end method

.method static synthetic access$1502(Lio/bidmachine/nativead/view/MediaView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoDuration:I

    return p1
.end method

.method static synthetic access$1600(Lio/bidmachine/nativead/view/MediaView;)I
    .locals 0

    .line 48
    iget p0, p0, Lio/bidmachine/nativead/view/MediaView;->quartile:I

    return p0
.end method

.method static synthetic access$1608(Lio/bidmachine/nativead/view/MediaView;)I
    .locals 2

    .line 48
    iget v0, p0, Lio/bidmachine/nativead/view/MediaView;->quartile:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/bidmachine/nativead/view/MediaView;->quartile:I

    return v0
.end method

.method static synthetic access$1700(Lio/bidmachine/nativead/view/MediaView;Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->processEvent(Lcom/explorestack/iab/vast/TrackingEvent;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lio/bidmachine/nativead/view/MediaView;->finishedOrExpanded:Z

    return p0
.end method

.method static synthetic access$202(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->finishedOrExpanded:Z

    return p1
.end method

.method static synthetic access$300(Lio/bidmachine/nativead/view/MediaView;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->pausePlayer()V

    return-void
.end method

.method static synthetic access$600(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->prepareMediaPlayer()V

    return-void
.end method

.method static synthetic access$700(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    return-void
.end method

.method static synthetic access$802(Lio/bidmachine/nativead/view/MediaView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    return p1
.end method

.method static synthetic access$900(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->cleanUpMediaPlayer()V

    return-void
.end method

.method private cleanUpMediaPlayer()V
    .locals 2

    .line 322
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 324
    :try_start_0
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 328
    :cond_0
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 331
    :cond_1
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 332
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 333
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 334
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 335
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 337
    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 339
    :goto_0
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method

.method private clearPlayerOnError()V
    .locals 2

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    .line 525
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->cleanUpMediaPlayer()V

    .line 526
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    .line 527
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    const/4 v1, 0x1

    .line 528
    iput-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    .line 529
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    .line 530
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->processErrorEvent()V

    return-void
.end method

.method private createMediaPlayer()V
    .locals 2

    .line 296
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 298
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 299
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 300
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 301
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 302
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->updateVolume()V

    return-void
.end method

.method private createMuteButton()V
    .locals 5

    .line 608
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 609
    invoke-static {v0}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v2, v1

    .line 610
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v1, v3

    .line 611
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 612
    new-instance v3, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-direct {v3, v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    .line 613
    sget v0, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    sget v4, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    invoke-virtual {v3, v0, v4}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setColors(II)V

    .line 614
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setPadding(IIII)V

    .line 615
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 616
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 617
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 618
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {v1, v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->updateMuteButton()V

    .line 620
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    new-instance v1, Lio/bidmachine/nativead/view/MediaView$6;

    invoke-direct {v1, p0}, Lio/bidmachine/nativead/view/MediaView$6;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 754
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fireUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 786
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 787
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->httpGetURL(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isAdOnScreen()Z
    .locals 3

    .line 659
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 660
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->isShown()Z

    move-result v1

    .line 662
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->hasWindowFocus()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMediaPlayerAvailable()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyVideoFinished()V
    .locals 1

    .line 600
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoFinishNotified:Z

    if-nez v0, :cond_0

    .line 601
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->processEvent(Lcom/explorestack/iab/vast/TrackingEvent;)V

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoFinishNotified:Z

    .line 603
    const-string v0, "MediaView: video finished"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyVideoStarted()V
    .locals 1

    .line 592
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoStartNotified:Z

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->processImpressions()V

    const/4 v0, 0x1

    .line 594
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isVideoStartNotified:Z

    .line 595
    const-string v0, "MediaView: video started"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private pausePlayer()V
    .locals 2

    .line 284
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 287
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    if-eq v0, v1, :cond_1

    .line 288
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareMediaPlayer()V
    .locals 3

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPreparing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->error:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 313
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPreparing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private processErrorEvent()V
    .locals 2

    .line 792
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V

    :cond_0
    return-void
.end method

.method private processEvent(Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 1

    .line 769
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_0

    .line 770
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 771
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 773
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    .line 774
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 775
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->fireUrls(Ljava/util/List;)V

    .line 777
    :cond_0
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

    if-eqz p1, :cond_1

    .line 778
    invoke-interface {p1}, Lio/bidmachine/nativead/NativeInteractor;->dispatchVideoPlayFinished()V

    :cond_1
    return-void
.end method

.method private processImpressions()V
    .locals 1

    .line 758
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 760
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVastRequest()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getImpressionUrlList()Ljava/util/List;

    move-result-object v0

    .line 764
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->fireUrls(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private tryPlayVideo()V
    .locals 2

    .line 344
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->createMediaPlayer()V

    .line 347
    :cond_0
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    if-nez v0, :cond_1

    .line 348
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->prepareMediaPlayer()V

    .line 350
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->viewOnScreen:Z

    if-eqz v0, :cond_3

    .line 353
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isAdOnScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 356
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->notifyVideoStarted()V

    .line 357
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 358
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->startVideoVisibilityCheckerTimer()V

    .line 361
    :cond_2
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    if-eq v0, v1, :cond_3

    .line 362
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    :cond_3
    return-void
.end method

.method private updateMuteButton()V
    .locals 2

    .line 649
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    if-eqz v0, :cond_1

    .line 650
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    if-eqz v1, :cond_0

    .line 651
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAwFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALOy8QAAAAQHRSTlMAT5vPRxSr/1OTn4c4s9cYEMu/XwTDu3fbYwjvt+NA8wwg3/fHKOdLj/tbPDBv03+jl4sca2d7NCTrLINDr6dz72VdRQAAA8FJREFUeAHt2dWW6zgURdEd3GFmZqZi7O7//6rmW7ZiK2VHkYo8X0MreI5GENAiEAgEAoFAIBAIhSORcBSfRSzOf8VjOFMimUpncDFZ/i+XxzkKRZJkKYrLKJNKRZUq/xdJVKAONaoV1WlpNFtQ1qZaUYd23R5U9alUVOlTlBxATZVKRUMeG/WgpE61ojEF6i9SJaJWNKHTKAMF05lSUYgu+vMPLFrQxXJlpGhdLm/gsG3TxVZ/UbRLkrsejhX2bkkL3UVb/meZgLekQ0VrUb7P/43z8JZ0Ba1F67eia7i5qfFY01DRBO5uxxQte2aK2pCYFimaDc0UQaaSpCgyMFIEuT1FcZgowglbiu5MFOGU1ZJ27ZiBIpyUEIvC0F+E0+5pt3zQX4R3xGk3gfYivGOwo11TU5EPj23aPBVMFk0e4CJBuz0MFpHh2DvnT3YrBotIjjZweF7SZg5zRSQ5LsMhSZsslKV4XDSAK9kGXXiizRCKFnSouhdRVnRHmzQ8qzRrI0p4KZIO0VabllkFHuWLFPgukk+IJG1C8KhEqhXxl9EAoudzFv47UrGIbw6njv0ReFOjalGfb9YQlWlTgCdtqhatraISRK2x/w8Recmi0IkPaNp/kHpRCaIX/1sRL1s0hCBKy7LlP0i9aA9BgTYZfUHyohxEEVrKGoPkRTH5j/WtziBp0Vx+jt1rDZIVvcgHwZXeIElRHIIVLQe9QZKiEgQ9Wkp6gyRFOwg2vscrL1w0kv8TMtIYJC/KQXBDS1djkLxoqucVUijSH6RUtKZlpx6kXhTS8rVXKLqlJaUepF6UpOVaPUi9qErLncagmdeiPi2vGoOmHos2tIlpDILHojtautAZ5LEoS8tveoM8FbX6tNThSYPngLeikP9DB154DngpEq/RhjeFEc8A/0UHeDSN0D/4L1rBq0q92qdP8F00HkDNgqfAd9HvgM4i+C6KQmsR/BZ1Aa1F8Fv0B/QWwWdRrgC9RfBZNAD0FsFvETQX4bMV4bMV4bMV4bMV4bMV4bMV4bMV4ZMVtSHxyo8pKsLd/IkfU5SEm1iKFqNFy0c4VZpP5AcVNeEU2pE0XXQ3JsluAsdazRwtBosGq/19tIVjqyeSxovk7kl+pqIH8nMVxen01JxRlIQxT3So3jinyBqm8NjyvgI4ihYwpU9RceM6aaswpUO79l0FEIqMB73SMl4UZNvIAsak33KSefl+tIY5t22SnL2IOWJREia1Qvf3vRZcPE74r9QAn0TlNvvUiEcRCAQCgUAgEAgEdPgLbm7XQrhD8bcAAAAASUVORK5CYII="

    invoke-static {v1}, Lcom/explorestack/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 653
    :cond_0
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAw1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAcKsgAAAAQXRSTlMABFeXn38wGNP/u0AMw8tP11+/3/eTOPNH+0tnc3fvb+tDi49TEKMcY8drKCCvFJt7qyQ047eHCCw8g89bp9vns9m2qsEAAAOSSURBVHgB7drVYuNKEEXR03YMJ0aBQXHAYWbm/P9PXZyZBimOHiTVQK9H4zZDFTzP8zzP8zzP83JQtfpSo4mfRqvNfy138HPo9vhNf4CfQYPaMFAQF9IUdSAtpm3UhSza5O+kmBb5O6nPtGgMOQNmmEwhp84MSQ0VUCuz1bGCQ62tM8MGSlebk+RwE67WVlbSNkq2xf8lO0jZbWQk7SmUaZvfxS3kS6pX00NuIct+SNdBNT08RLajmLakU0kP1/GJ40Pa5idV9JD4jBrR1u5W0UN8rkHbaRU9xAIbtM0q6CEWqSU0rZ+V30MstGMXnZffQyx2Qcu49B7iC5c09UvvIb7QbdN0UHYP8ZWrdRrmuyX3EIbDa2TYoalRcg9hIM/PkLZMw40qt8cJYtREynFCw6DcHjeIcfDF+W/L7UkFkRtw7c5pOCm1xw3KLprRcIfc1MFyxMXyBHEGx/06tfk9cmr1SRYRlFzDMaJhBzmFLCiIURe2BxrqyGfGwoK4B8chtTbyWS4wiI+wBTTsIpf1IoNC2O5jagPkwiKDOFjwBN2SCAphe6J2KBHEE1im1JJ7iaAGLLs0jCWChrA9UwskgngGy4jakUjQCiwNag2RoCdYZtTqIkGXsLxQ2xMJCmHpUAtFgtqwNKk9iwRFsJxQi0SCbmDZt46SCBrC8uA+mv5JfQpLjdqrSNAWLAfUzkWCBj/bR8c+LNvUNiSCItgOpb9+bMHSTah1JIIeYOnQsCsQ1IftgtozBIIC2G6pbQsEPStY1IRaDbm8FRm0AtsODS3k8lRg0C0WPGJvyGc3KizovQXbCQ1LyOn4uaigKRx3NATIS631JkUEPcGh3qlNulX/6bkNV42GUdV/C6d77iMaHqr94zy5+GJodljtaGG+iZT9mIaXSocvp/tIe6Vhfl/heGq4iQwdmraqHOApZGjd0DDZlx5xqpCmNfEh8IimNyU9Jg9omUovEjzGNJ1Kr1o8TmiKT4SXUXYSWi6E13UCp6enRBeasErbTUt05evskrZJE6igqI9sK3M6akAVRSNk6S7R1QCqKEqukKaCiK5ToJKig6ycN6aEXZRrFpPkzQ5c90dvTLtUKFv3pXExvYfrJWKGbQUh28yy9nOtwCcHENNj2voAciZM+diHILrWA4gSv3tc7/J3j61u5jTOIG5/zm/eN+7xM7i+4b/eAoWfRHf1I1wawPM8z/M8z/M872/KUtAsVj+VvQAAAABJRU5ErkJggg=="

    invoke-static {v1}, Lcom/explorestack/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextureLayoutParams()V
    .locals 5

    .line 554
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getWidth()I

    move-result v0

    .line 555
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 559
    :cond_0
    iget-boolean v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    if-eqz v2, :cond_3

    iget v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 562
    iput-boolean v2, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 564
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 565
    iget v3, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    iget v4, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    if-le v3, v4, :cond_2

    .line 566
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 567
    iget v1, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    div-int/2addr v0, v1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    mul-int/2addr v3, v1

    .line 569
    div-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 570
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 572
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateViewState(Lio/bidmachine/nativead/view/NativeState;)V
    .locals 3

    .line 368
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    .line 369
    sget-object v0, Lio/bidmachine/nativead/view/MediaView$8;->$SwitchMap$io$bidmachine$nativead$view$NativeState:[I

    invoke-virtual {p1}, Lio/bidmachine/nativead/view/NativeState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 414
    :cond_1
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_8

    .line 415
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 417
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p1, v2}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setVisibility(I)V

    goto/16 :goto_0

    .line 396
    :cond_2
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 397
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    :cond_3
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_8

    .line 400
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 401
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->bringToFront()V

    .line 402
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setVisibility(I)V

    .line 403
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->bringToFront()V

    .line 404
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->updateMuteButton()V

    .line 405
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_4
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 384
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 387
    :cond_5
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_8

    .line 388
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 390
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 391
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p1, v2}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setVisibility(I)V

    goto :goto_0

    .line 371
    :cond_6
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 372
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 375
    :cond_7
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz p1, :cond_8

    .line 376
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 378
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->muteButton:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p1, v2}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method private updateVolume()V
    .locals 2

    .line 639
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isMuted:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 643
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private videoFinished()V
    .locals 2

    .line 507
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->notifyVideoFinished()V

    .line 508
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    .line 509
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->pausePlayer()V

    .line 510
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->finishedOrExpanded:Z

    return-void
.end method


# virtual methods
.method public applyNative(Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;Lio/bidmachine/nativead/NativeInteractor;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 119
    iput-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 120
    iput-object p3, p0, Lio/bidmachine/nativead/view/MediaView;->nativeInteractor:Lio/bidmachine/nativead/NativeInteractor;

    .line 122
    invoke-interface {p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    .line 123
    invoke-interface {p1}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 124
    invoke-interface {p1}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    .line 127
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->createView()V

    return-void
.end method

.method createView()V
    .locals 7

    .line 131
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->isInitialized:Z

    .line 133
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    .line 134
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 138
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->addView(Landroid/view/View;)V

    .line 140
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 142
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x101007a

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    .line 145
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 147
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    iget-object v5, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    const-string v5, "#6b000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 150
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lio/bidmachine/nativead/view/MediaView;->addView(Landroid/view/View;)V

    .line 153
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    const v6, 0x1080024

    .line 154
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    new-instance v2, Lio/bidmachine/nativead/view/MediaView$1;

    invoke-direct {v2, p0}, Lio/bidmachine/nativead/view/MediaView$1;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->addView(Landroid/view/View;)V

    .line 169
    new-instance v1, Landroid/view/TextureView;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    .line 170
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 171
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    new-instance v2, Lio/bidmachine/nativead/view/MediaView$2;

    invoke-direct {v2, p0}, Lio/bidmachine/nativead/view/MediaView$2;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->addView(Landroid/view/View;)V

    .line 196
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->createMuteButton()V

    .line 197
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->createMediaPlayer()V

    .line 198
    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v1, :cond_0

    .line 199
    invoke-interface {v1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 200
    invoke-interface {v1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 201
    invoke-interface {v2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    if-eqz v0, :cond_3

    .line 204
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    .line 205
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$3;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$3;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 221
    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 223
    invoke-interface {v3}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 225
    new-instance v0, Lio/bidmachine/nativead/view/MediaView$4;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/MediaView$4;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    .line 243
    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 245
    invoke-interface {v3}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, v1}, Lio/bidmachine/nativead/view/MediaView;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    .line 252
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 255
    invoke-interface {v2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 256
    invoke-interface {v3}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 253
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/nativead/utils/ImageHelper;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 503
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->videoFinished()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 518
    const-string p1, "MediaView: onError"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->clearPlayerOnError()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 465
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 467
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->updateTextureLayoutParams()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 429
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 431
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 432
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 434
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getMeasuredWidth()I

    move-result v4

    .line 435
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_1

    .line 442
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const/high16 v0, 0x3f100000    # 0.5625f

    int-to-float v7, v2

    mul-float/2addr v7, v0

    float-to-int v0, v7

    if-ne v1, v6, :cond_2

    if-ge v3, v0, :cond_2

    const v0, 0x3fe38e39

    int-to-float v1, v3

    mul-float/2addr v1, v0

    float-to-int v2, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    sub-int v0, v3, v5

    .line 454
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    sub-int v0, v2, v4

    .line 455
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 456
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 535
    const-string p1, "MediaView: onPrepared"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 536
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayerPrepared:Z

    .line 537
    iget-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    if-eqz p1, :cond_0

    .line 538
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    goto :goto_0

    .line 540
    :cond_0
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 473
    :try_start_0
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p2, :cond_0

    .line 474
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->createMediaPlayer()V

    .line 476
    :cond_0
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 477
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 478
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->prepareMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 480
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 481
    sget-object p1, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, p1}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    const/4 p1, 0x0

    .line 482
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 546
    iput p2, p0, Lio/bidmachine/nativead/view/MediaView;->videoWidth:I

    .line 547
    iput p3, p0, Lio/bidmachine/nativead/view/MediaView;->videoHeight:I

    const/4 p1, 0x1

    .line 548
    iput-boolean p1, p0, Lio/bidmachine/nativead/view/MediaView;->videoSizeWasChanged:Z

    .line 550
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->updateTextureLayoutParams()V

    return-void
.end method

.method public onViewAppearOnScreen()V
    .locals 2

    .line 576
    const-string v0, "MediaView: onViewAppearOnScreen"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->viewOnScreen:Z

    .line 578
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->state:Lio/bidmachine/nativead/view/NativeState;

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    if-eq v0, v1, :cond_1

    .line 582
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    invoke-direct {p0, v0}, Lio/bidmachine/nativead/view/MediaView;->updateViewState(Lio/bidmachine/nativead/view/NativeState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 272
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->startPlayVideoWhenReady:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->tryPlayVideo()V

    goto :goto_0

    .line 276
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->pausePlayer()V

    .line 279
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/bidmachine/nativead/view/MediaView$5;

    invoke-direct {v1, p0}, Lio/bidmachine/nativead/view/MediaView$5;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setNativeAdObject(Lio/bidmachine/nativead/NativeAdObject;)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1, p1, p1}, Lio/bidmachine/nativead/view/MediaView;->applyNative(Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;Lio/bidmachine/nativead/NativeInteractor;)V

    return-void
.end method

.method public startVideoVisibilityCheckerTimer()V
    .locals 7

    .line 667
    iget-boolean v0, p0, Lio/bidmachine/nativead/view/MediaView;->hasVideo:Z

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    .line 672
    new-instance v2, Lio/bidmachine/nativead/view/MediaView$7;

    invoke-direct {v2, p0}, Lio/bidmachine/nativead/view/MediaView$7;-><init>(Lio/bidmachine/nativead/view/MediaView;)V

    const-wide/16 v3, 0x0

    const/16 v0, 0x1f4

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopVideoVisibilityCheckerTimer()V
    .locals 1

    .line 747
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 749
    iput-object v0, p0, Lio/bidmachine/nativead/view/MediaView;->videoVisibilityCheckerTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public videoPlayerActivityClosed(IZ)V
    .locals 2

    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 801
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 799
    const-string v1, "MediaView videoPlayerActivityClosed, position: %s, finished: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 804
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->videoFinished()V

    goto :goto_0

    .line 805
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/nativead/view/MediaView;->isMediaPlayerAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 806
    iget-object p2, p0, Lio/bidmachine/nativead/view/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 809
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 811
    sput-object p1, Lio/bidmachine/nativead/view/MediaView;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

    return-void
.end method
