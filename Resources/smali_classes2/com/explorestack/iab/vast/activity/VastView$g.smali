.class public Lcom/explorestack/iab/vast/activity/VastView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p2}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onSurfaceTextureAvailable"

    invoke-static {p2, p3}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p2, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/activity/VastView;Z)Z

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->o(Lcom/explorestack/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/activity/VastView;Z)Z

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1, p3}, Lcom/explorestack/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p2, p1, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->p(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/activity/VastView;Z)Z

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->q(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_0
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$g;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
