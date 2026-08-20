.class public final Lcom/facebook/ads/redexgen/X/LZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TL;
    }
.end annotation


# static fields
.field public static A02:Lcom/facebook/ads/redexgen/X/LZ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/TL;

.field public final A01:Lcom/facebook/ads/redexgen/X/Lb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8A;)V
    .locals 1

    .line 43569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43570
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lb;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Lb;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A01:Lcom/facebook/ads/redexgen/X/Lb;

    .line 43571
    new-instance v0, Lcom/facebook/ads/redexgen/X/TL;

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/TL;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A00:Lcom/facebook/ads/redexgen/X/TL;

    .line 43572
    return-void
.end method

.method private A00()V
    .locals 2

    .line 43573
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LZ;->A01:Lcom/facebook/ads/redexgen/X/Lb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A00:Lcom/facebook/ads/redexgen/X/TL;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lb;->A03(Lcom/facebook/ads/redexgen/X/La;)V

    .line 43574
    return-void
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8A;)V
    .locals 1

    .line 43575
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A17(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43576
    return-void

    .line 43577
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/LZ;->A02:Lcom/facebook/ads/redexgen/X/LZ;

    if-nez v0, :cond_1

    .line 43578
    new-instance v0, Lcom/facebook/ads/redexgen/X/LZ;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/LZ;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8A;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/LZ;->A02:Lcom/facebook/ads/redexgen/X/LZ;

    .line 43579
    sget-object v0, Lcom/facebook/ads/redexgen/X/LZ;->A02:Lcom/facebook/ads/redexgen/X/LZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LZ;->A00()V

    .line 43580
    :goto_0
    return-void

    .line 43581
    :cond_1
    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/LZ;->A02(Lcom/facebook/ads/redexgen/X/8A;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/8A;)V
    .locals 1

    .line 43582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LZ;->A00:Lcom/facebook/ads/redexgen/X/TL;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/TL;->A08(Lcom/facebook/ads/redexgen/X/TL;Lcom/facebook/ads/redexgen/X/8A;)V

    .line 43583
    return-void
.end method
