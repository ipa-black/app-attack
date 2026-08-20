.class public Lcom/explorestack/iab/vast/activity/VastView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v1, v1, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_0

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v3}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$b0;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$b0;->a(IIF)V

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v3}, Lcom/explorestack/iab/vast/activity/VastView;->d(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$b0;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$b0;->a(IIF)V

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v3}, Lcom/explorestack/iab/vast/activity/VastView;->e(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$b0;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$b0;->a(IIF)V

    const/high16 v0, 0x42d20000    # 105.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback tracking: video hang detected"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->g(Lcom/explorestack/iab/vast/activity/VastView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Playback tracking exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$c;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
