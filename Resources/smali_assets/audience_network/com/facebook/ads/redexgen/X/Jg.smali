.class public Lcom/facebook/ads/redexgen/X/Jg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jf;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8A;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/Jf;

.field public final A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jf;)V
    .locals 1

    .line 40714
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/Jg;-><init>(Lcom/facebook/ads/redexgen/X/Jf;Lcom/facebook/ads/redexgen/X/8A;Ljava/lang/String;)V

    .line 40715
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jf;Lcom/facebook/ads/redexgen/X/8A;Ljava/lang/String;)V
    .locals 0
    .param p2    # Lcom/facebook/ads/redexgen/X/8A;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40717
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A01:Lcom/facebook/ads/redexgen/X/Jf;

    .line 40718
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jg;->A00:Lcom/facebook/ads/redexgen/X/8A;

    .line 40719
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Jg;->A02:Ljava/lang/String;

    .line 40720
    return-void
.end method


# virtual methods
.method public A00()Lcom/facebook/ads/redexgen/X/8A;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A00:Lcom/facebook/ads/redexgen/X/8A;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Jf;
    .locals 1

    .line 40722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A01:Lcom/facebook/ads/redexgen/X/Jf;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A02:Ljava/lang/String;

    return-object v0
.end method
