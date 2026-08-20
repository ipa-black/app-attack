.class public final Lcom/appodeal/ads/g2;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/appodeal/ads/VideoPlayerActivity$a;


# static fields
.field public static final x:Ljava/lang/String; = "g2"

.field public static y:Lcom/appodeal/ads/g2;


# instance fields
.field public a:Lcom/appodeal/ads/l2;

.field public b:Z

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ProgressBar;

.field public e:Landroid/widget/ImageView;

.field public f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

.field public g:Landroid/media/MediaPlayer;

.field public h:Landroid/view/TextureView;

.field public i:Ljava/util/Timer;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public volatile r:Z

.field public s:Z

.field public t:Lcom/explorestack/iab/vast/VastRequest;

.field public u:I

.field public v:I

.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appodeal/ads/g2;->b:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/g2;->l:Z

    iput p1, p0, Lcom/appodeal/ads/g2;->w:I

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/g2;I)V
    .locals 0

    iput p1, p0, Lcom/appodeal/ads/g2;->u:I

    return-void
.end method

.method public static a(Lcom/appodeal/ads/g2;Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    invoke-static {v1, v2}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/s;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/l2;->g()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/g2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appodeal/ads/g2;->r:Z

    return p0
.end method

.method public static b(Lcom/appodeal/ads/g2;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic c(Lcom/appodeal/ads/g2;)I
    .locals 0

    iget p0, p0, Lcom/appodeal/ads/g2;->u:I

    return p0
.end method

.method public static synthetic d(Lcom/appodeal/ads/g2;)I
    .locals 0

    iget p0, p0, Lcom/appodeal/ads/g2;->v:I

    return p0
.end method

.method public static synthetic e(Lcom/appodeal/ads/g2;)V
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/g2;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/g2;->v:I

    return-void
.end method

.method public static synthetic f(Lcom/appodeal/ads/g2;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/appodeal/ads/g2;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/g2;->p:Z

    .line 5
    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/appodeal/ads/g2;->r:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    iput-object v2, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    :cond_2
    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->h()V

    .line 7
    iget-object v3, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    .line 8
    :cond_3
    iput-boolean v1, p0, Lcom/appodeal/ads/g2;->r:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/g2;->q:Z

    .line 9
    iget-object v0, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_4

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V

    :cond_4
    return-void
.end method

.method public final a(IZ)V
    .locals 4

    sget-object v0, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "videoPlayerActivityClosed, position: %s, finished: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "State"

    invoke-static {v0, v2, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 10
    :try_start_0
    iget-boolean p1, p0, Lcom/appodeal/ads/g2;->k:Z

    const/4 p2, 0x1

    if-nez p1, :cond_2

    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 11
    iget-object v1, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    invoke-static {v2, v3}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/s;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->g()V

    .line 14
    :cond_1
    iput-boolean p2, p0, Lcom/appodeal/ads/g2;->k:Z

    sget-object p1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v1, "Video"

    const-string v2, "finished"

    invoke-static {p1, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iput-object v0, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->d()V

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_4
    iput-boolean p2, p0, Lcom/appodeal/ads/g2;->s:Z

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    sput-object v0, Lcom/appodeal/ads/g2;->y:Lcom/appodeal/ads/g2;

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2
    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/g2;->w:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->h()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    .line 3
    iget-object v2, v2, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/g2;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->b()V

    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->e()V

    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->m:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->o:Z

    if-eqz v0, :cond_5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->h()V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->j:Z

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getImpressionUrlList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    invoke-static {v1, v2}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/s;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/appodeal/ads/g2;->j:Z

    sget-object v0, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v1, "Video"

    const-string v2, "started"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-nez v0, :cond_5

    .line 8
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->q:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    new-instance v2, Lcom/appodeal/ads/f2;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/f2;-><init>(Lcom/appodeal/ads/g2;)V

    const/16 v0, 0x1f4

    int-to-long v5, v0

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/appodeal/ads/g2;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAwFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALOy8QAAAAQHRSTlMAT5vPRxSr/1OTn4c4s9cYEMu/XwTDu3fbYwjvt+NA8wwg3/fHKOdLj/tbPDBv03+jl4sca2d7NCTrLINDr6dz72VdRQAAA8FJREFUeAHt2dWW6zgURdEd3GFmZqZi7O7//6rmW7ZiK2VHkYo8X0MreI5GENAiEAgEAoFAIBAIhSORcBSfRSzOf8VjOFMimUpncDFZ/i+XxzkKRZJkKYrLKJNKRZUq/xdJVKAONaoV1WlpNFtQ1qZaUYd23R5U9alUVOlTlBxATZVKRUMeG/WgpE61ojEF6i9SJaJWNKHTKAMF05lSUYgu+vMPLFrQxXJlpGhdLm/gsG3TxVZ/UbRLkrsejhX2bkkL3UVb/meZgLekQ0VrUb7P/43z8JZ0Ba1F67eia7i5qfFY01DRBO5uxxQte2aK2pCYFimaDc0UQaaSpCgyMFIEuT1FcZgowglbiu5MFOGU1ZJ27ZiBIpyUEIvC0F+E0+5pt3zQX4R3xGk3gfYivGOwo11TU5EPj23aPBVMFk0e4CJBuz0MFpHh2DvnT3YrBotIjjZweF7SZg5zRSQ5LsMhSZsslKV4XDSAK9kGXXiizRCKFnSouhdRVnRHmzQ8qzRrI0p4KZIO0VabllkFHuWLFPgukk+IJG1C8KhEqhXxl9EAoudzFv47UrGIbw6njv0ReFOjalGfb9YQlWlTgCdtqhatraISRK2x/w8Recmi0IkPaNp/kHpRCaIX/1sRL1s0hCBKy7LlP0i9aA9BgTYZfUHyohxEEVrKGoPkRTH5j/WtziBp0Vx+jt1rDZIVvcgHwZXeIElRHIIVLQe9QZKiEgQ9Wkp6gyRFOwg2vscrL1w0kv8TMtIYJC/KQXBDS1djkLxoqucVUijSH6RUtKZlpx6kXhTS8rVXKLqlJaUepF6UpOVaPUi9qErLncagmdeiPi2vGoOmHos2tIlpDILHojtautAZ5LEoS8tveoM8FbX6tNThSYPngLeikP9DB154DngpEq/RhjeFEc8A/0UHeDSN0D/4L1rBq0q92qdP8F00HkDNgqfAd9HvgM4i+C6KQmsR/BZ1Aa1F8Fv0B/QWwWdRrgC9RfBZNAD0FsFvETQX4bMV4bMV4bMV4bMV4bMV4bMV4bMV4ZMVtSHxyo8pKsLd/IkfU5SEm1iKFqNFy0c4VZpP5AcVNeEU2pE0XXQ3JsluAsdazRwtBosGq/19tIVjqyeSxovk7kl+pqIH8nMVxen01JxRlIQxT3So3jinyBqm8NjyvgI4ihYwpU9RceM6aaswpUO79l0FEIqMB73SMl4UZNvIAsak33KSefl+tIY5t22SnL2IOWJREia1Qvf3vRZcPE74r9QAn0TlNvvUiEcRCAQCgUAgEAgEdPgLbm7XQrhD8bcAAAAASUVORK5CYII="

    goto :goto_0

    :cond_0
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAw1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAcKsgAAAAQXRSTlMABFeXn38wGNP/u0AMw8tP11+/3/eTOPNH+0tnc3fvb+tDi49TEKMcY8drKCCvFJt7qyQ047eHCCw8g89bp9vns9m2qsEAAAOSSURBVHgB7drVYuNKEEXR03YMJ0aBQXHAYWbm/P9PXZyZBimOHiTVQK9H4zZDFTzP8zzP8zzP83JQtfpSo4mfRqvNfy138HPo9vhNf4CfQYPaMFAQF9IUdSAtpm3UhSza5O+kmBb5O6nPtGgMOQNmmEwhp84MSQ0VUCuz1bGCQ62tM8MGSlebk+RwE67WVlbSNkq2xf8lO0jZbWQk7SmUaZvfxS3kS6pX00NuIct+SNdBNT08RLajmLakU0kP1/GJ40Pa5idV9JD4jBrR1u5W0UN8rkHbaRU9xAIbtM0q6CEWqSU0rZ+V30MstGMXnZffQyx2Qcu49B7iC5c09UvvIb7QbdN0UHYP8ZWrdRrmuyX3EIbDa2TYoalRcg9hIM/PkLZMw40qt8cJYtREynFCw6DcHjeIcfDF+W/L7UkFkRtw7c5pOCm1xw3KLprRcIfc1MFyxMXyBHEGx/06tfk9cmr1SRYRlFzDMaJhBzmFLCiIURe2BxrqyGfGwoK4B8chtTbyWS4wiI+wBTTsIpf1IoNC2O5jagPkwiKDOFjwBN2SCAphe6J2KBHEE1im1JJ7iaAGLLs0jCWChrA9UwskgngGy4jakUjQCiwNag2RoCdYZtTqIkGXsLxQ2xMJCmHpUAtFgtqwNKk9iwRFsJxQi0SCbmDZt46SCBrC8uA+mv5JfQpLjdqrSNAWLAfUzkWCBj/bR8c+LNvUNiSCItgOpb9+bMHSTah1JIIeYOnQsCsQ1IftgtozBIIC2G6pbQsEPStY1IRaDbm8FRm0AtsODS3k8lRg0C0WPGJvyGc3KizovQXbCQ1LyOn4uaigKRx3NATIS631JkUEPcGh3qlNulX/6bkNV42GUdV/C6d77iMaHqr94zy5+GJodljtaGG+iZT9mIaXSocvp/tIe6Vhfl/heGq4iQwdmraqHOApZGjd0DDZlx5xqpCmNfEh8IimNyU9Jg9omUovEjzGNJ1Kr1o8TmiKT4SXUXYSWi6E13UCp6enRBeasErbTUt05evskrZJE6igqI9sK3M6akAVRSNk6S7R1QCqKEqukKaCiK5ToJKig6ycN6aEXZRrFpPkzQ5c90dvTLtUKFv3pXExvYfrJWKGbQUh28yy9nOtwCcHENNj2voAciZM+diHILrWA4gSv3tc7/J3j61u5jTOIG5/zm/eN+7xM7i+4b/eAoWfRHf1I1wawPM8z/M8z/M872/KUtAsVj+VvQAAAABJRU5ErkJggg=="

    :goto_0
    invoke-static {v1}, Lcom/explorestack/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 4

    iget v0, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-static {v0}, Lcom/appodeal/ads/m;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->q:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_3
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->q:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->q:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->bringToFront()V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->bringToFront()V

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->g()V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_7
    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->q:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/appodeal/ads/g2;->k:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    invoke-static {v2, v3}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/s;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->g()V

    .line 5
    :cond_1
    iput-boolean v0, p0, Lcom/appodeal/ads/g2;->k:Z

    sget-object p1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v1, "Video"

    const-string v2, "finished"

    invoke-static {p1, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appodeal/ads/g2;->i:Ljava/util/Timer;

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->d()V

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_4
    iput-boolean v0, p0, Lcom/appodeal/ads/g2;->s:Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    sget-object p1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "what: %s, extra: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Player Error"

    invoke-static {p1, p3, p2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    int-to-float v0, v2

    const/high16 v7, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    if-ne v1, v6, :cond_2

    if-ge v3, v0, :cond_2

    int-to-float v0, v3

    const v1, 0x3fe38e39

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    sub-int v0, v3, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    sub-int v0, v2, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    sget-object p1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v0, "Player"

    const-string v1, "prepared"

    invoke-static {p1, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/g2;->m:Z

    sget-object p1, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v0, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/appodeal/ads/g2;->p:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->f()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    iput p1, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    :try_start_0
    sget-object p2, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object p3, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->b()V

    :cond_1
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->g:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->h()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appodeal/ads/g2;->q:Z

    :goto_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p2, p3, :cond_1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v0, p3

    div-int/2addr v0, p2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    mul-int/2addr p2, v1

    div-int/2addr p2, p3

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object p2, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    :goto_1
    sget-object p1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string p2, "Video"

    const-string p3, "onVideoSizeChanged - skip: width or height is 0"

    invoke-static {p1, p2, p3}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/g2;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->d()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setNativeAd(Lcom/appodeal/ads/l2;)V
    .locals 5

    iput-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    sget-object v0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/appodeal/ads/g2;->q:Z

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->c()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->c()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    .line 1
    :cond_2
    iget-boolean p1, p0, Lcom/appodeal/ads/g2;->b:Z

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/appodeal/ads/g2;->b:Z

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/appodeal/ads/g2;->q:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result p1

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    const-string v3, "#6b000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/appodeal/ads/g2;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    const v4, 0x1080024

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/appodeal/ads/a2;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/a2;-><init>(Lcom/appodeal/ads/g2;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    new-instance v0, Lcom/appodeal/ads/b2;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/b2;-><init>(Lcom/appodeal/ads/g2;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->h:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    sget v0, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    sget v1, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setColors(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lcom/appodeal/ads/f1;->a(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {v0, p1, p1, p1, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/appodeal/ads/f1;->a(Landroid/content/Context;F)I

    move-result p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->g()V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    new-instance v0, Lcom/appodeal/ads/e2;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/e2;-><init>(Lcom/appodeal/ads/g2;)V

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->f:Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->b()V

    sget-object p1, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v0, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->b()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    invoke-virtual {v0}, Lcom/appodeal/ads/l2;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/appodeal/ads/Native;->e:Z

    iput-boolean p1, p0, Lcom/appodeal/ads/g2;->p:Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    iput p1, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->h()V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/appodeal/ads/utils/m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/c2;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/c2;-><init>(Lcom/appodeal/ads/g2;)V

    iget-object v2, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    invoke-virtual {v2}, Lcom/appodeal/ads/l2;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/appodeal/ads/utils/m;-><init>(Landroid/content/Context;Lcom/appodeal/ads/utils/m$b;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    invoke-virtual {p1}, Lcom/appodeal/ads/l2;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/appodeal/ads/utils/n;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/d2;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/d2;-><init>(Lcom/appodeal/ads/g2;)V

    iget-object v2, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    invoke-virtual {v2}, Lcom/appodeal/ads/l2;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/appodeal/ads/utils/n;-><init>(Landroid/content/Context;Lcom/appodeal/ads/utils/n$b;Ljava/lang/String;)V

    .line 4
    :goto_0
    sget-object v0, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    .line 5
    iget-object v0, v0, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_5
    iput v2, p0, Lcom/appodeal/ads/g2;->w:I

    invoke-virtual {p0}, Lcom/appodeal/ads/g2;->h()V

    iget-object p1, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/appodeal/ads/g2;->c:Landroid/widget/ImageView;

    .line 8
    iget-object v1, p1, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/appodeal/ads/l2;->m:Landroid/graphics/Bitmap;

    .line 10
    invoke-static {v0, v1, p1}, Lcom/appodeal/ads/l2;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method
