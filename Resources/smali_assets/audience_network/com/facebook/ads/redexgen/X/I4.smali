.class public final Lcom/facebook/ads/redexgen/X/I4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/I6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultDisplayListener"
.end annotation


# instance fields
.field public final A00:Landroid/hardware/display/DisplayManager;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/I6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I6;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 37839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I4;->A01:Lcom/facebook/ads/redexgen/X/I6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37840
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/I4;->A00:Landroid/hardware/display/DisplayManager;

    .line 37841
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 37842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I4;->A00:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 37843
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 37844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I4;->A00:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 37845
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 37846
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 37847
    if-nez p1, :cond_0

    .line 37848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I4;->A01:Lcom/facebook/ads/redexgen/X/I6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A05(Lcom/facebook/ads/redexgen/X/I6;)V

    .line 37849
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 37850
    return-void
.end method
