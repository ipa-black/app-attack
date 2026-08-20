.class public final Lcom/facebook/ads/redexgen/X/95;
.super Lcom/facebook/ads/redexgen/X/Oj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0

    .line 20085
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/95;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oj;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/P8;)V
    .locals 2

    .line 20086
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nc;-><init>(Lcom/facebook/ads/redexgen/X/95;)V

    .line 20087
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20088
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 20089
    check-cast p1, Lcom/facebook/ads/redexgen/X/P8;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/95;->A00(Lcom/facebook/ads/redexgen/X/P8;)V

    return-void
.end method
