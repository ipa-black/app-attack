.class public final Lcom/facebook/ads/redexgen/X/b3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/b4;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/b6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/b4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/ar;

.field public final A03:Lcom/facebook/ads/redexgen/X/b4;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/bD;

.field public final A05:Lcom/facebook/ads/redexgen/X/b5;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bD;Lcom/facebook/ads/redexgen/X/b5;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/b5;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73265
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A06:Ljava/util/LinkedHashMap;

    .line 73266
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ft;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ft;-><init>(Lcom/facebook/ads/redexgen/X/b3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A03:Lcom/facebook/ads/redexgen/X/b4;

    .line 73267
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Lcom/facebook/ads/redexgen/X/bD;

    .line 73268
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b3;->A05:Lcom/facebook/ads/redexgen/X/b5;

    .line 73269
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/b3;)Lcom/facebook/ads/redexgen/X/b4;
    .locals 0

    .line 73270
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Lcom/facebook/ads/redexgen/X/b4;

    return-object p0
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/b3;
    .locals 3

    .line 73271
    new-instance v2, Lcom/facebook/ads/redexgen/X/Fx;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Fx;-><init>()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/b3;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/b3;-><init>(Lcom/facebook/ads/redexgen/X/bD;Lcom/facebook/ads/redexgen/X/b5;)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/b3;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 73272
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b3;->A06:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/b7;Lcom/facebook/ads/redexgen/X/bB;Lcom/facebook/ads/redexgen/X/Fs;)V
    .locals 2

    .line 73273
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ar;->A00(Lcom/facebook/ads/redexgen/X/b7;Lcom/facebook/ads/redexgen/X/bB;Lcom/facebook/ads/redexgen/X/Fs;)Lcom/facebook/ads/redexgen/X/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/ar;

    .line 73274
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/b6;

    if-eqz v1, :cond_0

    .line 73275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/ar;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ar;->A03(Lcom/facebook/ads/redexgen/X/b6;)V

    .line 73276
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/ar;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A03:Lcom/facebook/ads/redexgen/X/b4;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ar;->A04(Lcom/facebook/ads/redexgen/X/b4;)V

    .line 73277
    return-void
.end method


# virtual methods
.method public final A04(Landroid/view/View;)V
    .locals 1

    .line 73278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/ar;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ar;->A01(Landroid/view/View;)V

    .line 73279
    return-void
.end method

.method public final A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/b9;)V
    .locals 1

    .line 73280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/ar;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ar;->A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/b9;)V

    .line 73281
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/b7;Landroid/view/View;)V
    .locals 3

    .line 73282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Lcom/facebook/ads/redexgen/X/bD;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Fw;

    invoke-direct {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/Fw;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/bD;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b3;->A05:Lcom/facebook/ads/redexgen/X/b5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3m;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3m;-><init>(Lcom/facebook/ads/redexgen/X/b5;)V

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/b3;->A03(Lcom/facebook/ads/redexgen/X/b7;Lcom/facebook/ads/redexgen/X/bB;Lcom/facebook/ads/redexgen/X/Fs;)V

    .line 73283
    return-void
.end method
