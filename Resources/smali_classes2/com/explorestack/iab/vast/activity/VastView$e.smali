.class public Lcom/explorestack/iab/vast/activity/VastView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 5

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v1, v0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v2, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result v0

    if-le p2, v0, :cond_1

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p2, p2, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object p2

    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, p2, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    invoke-static {p2, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Z)V

    :cond_1
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, p2, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    int-to-float v2, v0

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v2, v4

    cmpl-float v2, p3, v2

    if-lez v2, :cond_7

    const-string v2, "%)"

    if-ne v0, v3, :cond_2

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Video at third quartile: ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p2, Lcom/explorestack/iab/vast/TrackingEvent;->thirdQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoThirdQuartile()V

    goto/16 :goto_1

    :cond_2
    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Video at start: ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p3, Lcom/explorestack/iab/vast/TrackingEvent;->start:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p2, p3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p2

    int-to-float p1, p1

    iget-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p3, p3, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean p3, p3, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_0

    :cond_3
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {p2, p1, p3}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoStarted(FF)V

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_5

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Video at first quartile: ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p2, Lcom/explorestack/iab/vast/TrackingEvent;->firstQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoFirstQuartile()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    if-ne v0, p1, :cond_6

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Video at midpoint: ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object p2, Lcom/explorestack/iab/vast/TrackingEvent;->midpoint:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoMidpoint()V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$e;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget p2, p1, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/explorestack/iab/vast/activity/VastView$c0;->c:I

    :cond_7
    return-void
.end method
