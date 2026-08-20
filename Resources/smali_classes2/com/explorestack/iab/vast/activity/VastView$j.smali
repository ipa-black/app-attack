.class public Lcom/explorestack/iab/vast/activity/VastView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer - onPrepared"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v1, v0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v1, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->fullscreen:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->r(Lcom/explorestack/iab/vast/activity/VastView;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Lcom/explorestack/iab/vast/activity/VastView;Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/explorestack/iab/vast/activity/VastView;->e(Lcom/explorestack/iab/vast/activity/VastView;Z)Z

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->s(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->t(Lcom/explorestack/iab/vast/activity/VastView;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->resume:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoResumed()V

    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->q(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_2
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->k:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->u(Lcom/explorestack/iab/vast/activity/VastView;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->shouldPreloadCompanion()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$j;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;Z)V

    :cond_3
    return-void
.end method
