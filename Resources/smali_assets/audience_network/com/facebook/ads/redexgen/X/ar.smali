.class public final Lcom/facebook/ads/redexgen/X/ar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fr;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/b2;

.field public final A01:Lcom/facebook/ads/redexgen/X/b0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b7;Lcom/facebook/ads/redexgen/X/b0;Lcom/facebook/ads/redexgen/X/b2;)V
    .locals 2

    .line 73102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73103
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ar;->A00:Lcom/facebook/ads/redexgen/X/b2;

    .line 73104
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ar;->A01:Lcom/facebook/ads/redexgen/X/b0;

    .line 73105
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fr;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/redexgen/X/Fr;-><init>(Lcom/facebook/ads/redexgen/X/b0;Lcom/facebook/ads/redexgen/X/as;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/b7;->A02(Lcom/facebook/ads/redexgen/X/b8;)V

    .line 73106
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/b7;Lcom/facebook/ads/redexgen/X/bB;Lcom/facebook/ads/redexgen/X/Fs;)Lcom/facebook/ads/redexgen/X/ar;
    .locals 7

    .line 73107
    new-instance v5, Lcom/facebook/ads/redexgen/X/b2;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/b2;-><init>()V

    .line 73108
    .local v0, "viewpointRegistry":Lcom/facebook/ads/redexgen/X/b2;
    new-instance v1, Lcom/facebook/ads/redexgen/X/b0;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Fy;-><init>()V

    .line 73109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/b0;-><init>(Lcom/facebook/ads/redexgen/X/bB;Lcom/facebook/ads/redexgen/X/RO;Lcom/facebook/ads/redexgen/X/Fs;Lcom/facebook/ads/redexgen/X/b2;Landroid/os/Handler;)V

    .line 73110
    .local v1, "viewpointScanner":Lcom/facebook/ads/redexgen/X/b0;
    new-instance v0, Lcom/facebook/ads/redexgen/X/ar;

    invoke-direct {v0, p0, v1, v5}, Lcom/facebook/ads/redexgen/X/ar;-><init>(Lcom/facebook/ads/redexgen/X/b7;Lcom/facebook/ads/redexgen/X/b0;Lcom/facebook/ads/redexgen/X/b2;)V

    return-object v0
.end method


# virtual methods
.method public final A01(Landroid/view/View;)V
    .locals 1

    .line 73111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ar;->A00:Lcom/facebook/ads/redexgen/X/b2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/b2;->A01(Landroid/view/View;)V

    .line 73112
    return-void
.end method

.method public final A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/b9;)V
    .locals 1

    .line 73113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ar;->A00:Lcom/facebook/ads/redexgen/X/b2;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/b2;->A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/b9;)V

    .line 73114
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/b6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ar;->A01:Lcom/facebook/ads/redexgen/X/b0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/b0;->A09(Lcom/facebook/ads/redexgen/X/b6;)V

    .line 73116
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/b4;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/b4;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ar;->A01:Lcom/facebook/ads/redexgen/X/b0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/b0;->A0A(Lcom/facebook/ads/redexgen/X/b4;)V

    .line 73118
    return-void
.end method
