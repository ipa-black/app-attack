.class public final Lcom/appodeal/ads/f2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/g2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->a(Lcom/appodeal/ads/g2;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/f2$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/f2$a;-><init>(Lcom/appodeal/ads/f2;)V

    invoke-static {v0}, Lcom/appodeal/ads/h5;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->b(Lcom/appodeal/ads/g2;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/appodeal/ads/f2$b;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/f2$b;-><init>(Lcom/appodeal/ads/f2;)V

    :goto_0
    invoke-static {v0}, Lcom/appodeal/ads/h5;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->f(Lcom/appodeal/ads/g2;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->g(Lcom/appodeal/ads/g2;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->c(Lcom/appodeal/ads/g2;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->g(Lcom/appodeal/ads/g2;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/g2;->a(Lcom/appodeal/ads/g2;I)V

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->c(Lcom/appodeal/ads/g2;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->g(Lcom/appodeal/ads/g2;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v1}, Lcom/appodeal/ads/g2;->c(Lcom/appodeal/ads/g2;)I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v1}, Lcom/appodeal/ads/g2;->d(Lcom/appodeal/ads/g2;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v1}, Lcom/appodeal/ads/g2;->d(Lcom/appodeal/ads/g2;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Video"

    if-nez v1, :cond_3

    :try_start_1
    sget-object v1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v3, "started: %s%%"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->start:Lcom/explorestack/iab/vast/TrackingEvent;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v1}, Lcom/appodeal/ads/g2;->d(Lcom/appodeal/ads/g2;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    sget-object v1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v3, "at first quartile: %s%%"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->firstQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v1}, Lcom/appodeal/ads/g2;->d(Lcom/appodeal/ads/g2;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v3, "at midpoint: %s%%"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->midpoint:Lcom/explorestack/iab/vast/TrackingEvent;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v1}, Lcom/appodeal/ads/g2;->d(Lcom/appodeal/ads/g2;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    sget-object v1, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v3, "at third quartile: %s%%"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->thirdQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    :goto_1
    invoke-static {v0, v1}, Lcom/appodeal/ads/g2;->a(Lcom/appodeal/ads/g2;Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_6
    iget-object v0, p0, Lcom/appodeal/ads/f2;->a:Lcom/appodeal/ads/g2;

    invoke-static {v0}, Lcom/appodeal/ads/g2;->e(Lcom/appodeal/ads/g2;)V

    :cond_7
    new-instance v0, Lcom/appodeal/ads/f2$c;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/f2$c;-><init>(Lcom/appodeal/ads/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/appodeal/ads/f2$d;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/f2$d;-><init>(Lcom/appodeal/ads/f2;)V

    invoke-static {v0}, Lcom/appodeal/ads/h5;->a(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
