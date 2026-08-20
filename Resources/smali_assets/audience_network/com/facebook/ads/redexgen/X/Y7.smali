.class public final Lcom/facebook/ads/redexgen/X/Y7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ls;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y6;->setListener(Lcom/facebook/ads/MediaViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/MediaViewListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Y6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/MediaViewListener;)V
    .locals 0

    .line 67698
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAY()V
    .locals 2

    .line 67699
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onComplete(Lcom/facebook/ads/MediaView;)V

    .line 67700
    return-void
.end method

.method public final AAt()V
    .locals 2

    .line 67701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onEnterFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 67702
    return-void
.end method

.method public final AAz()V
    .locals 2

    .line 67703
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onExitFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 67704
    return-void
.end method

.method public final AB5()V
    .locals 2

    .line 67705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenBackground(Lcom/facebook/ads/MediaView;)V

    .line 67706
    return-void
.end method

.method public final AB7()V
    .locals 2

    .line 67707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenForeground(Lcom/facebook/ads/MediaView;)V

    .line 67708
    return-void
.end method

.method public final ABy()V
    .locals 2

    .line 67709
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    .line 67710
    return-void
.end method

.method public final ADC()V
    .locals 3

    .line 67711
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A01(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVolume()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/MediaViewListener;->onVolumeChange(Lcom/facebook/ads/MediaView;F)V

    .line 67712
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 67713
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    .line 67714
    return-void
.end method
