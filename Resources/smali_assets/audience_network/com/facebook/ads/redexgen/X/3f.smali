.class public final Lcom/facebook/ads/redexgen/X/3f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ED;,
        Lcom/facebook/ads/redexgen/X/EE;,
        Lcom/facebook/ads/redexgen/X/Yi;,
        Lcom/facebook/ads/redexgen/X/3e;
    }
.end annotation


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/3e;


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 10396
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 10397
    new-instance v0, Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ED;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lcom/facebook/ads/redexgen/X/3e;

    .line 10398
    :goto_0
    return-void

    .line 10399
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 10400
    new-instance v0, Lcom/facebook/ads/redexgen/X/EE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EE;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lcom/facebook/ads/redexgen/X/3e;

    goto :goto_0

    .line 10401
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Yi;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lcom/facebook/ads/redexgen/X/3e;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .line 10402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10403
    sget-object v0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/3e;->A9t(Lcom/facebook/ads/redexgen/X/3f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:Ljava/lang/Object;

    .line 10404
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 10405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10406
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:Ljava/lang/Object;

    .line 10407
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/3d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10408
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/3d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10409
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02()Ljava/lang/Object;
    .locals 1

    .line 10410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3d;",
            ">;"
        }
    .end annotation

    .line 10411
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04(IILandroid/os/Bundle;)Z
    .locals 1

    .line 10412
    const/4 v0, 0x0

    return v0
.end method
