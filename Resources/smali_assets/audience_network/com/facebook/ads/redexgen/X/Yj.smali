.class public final Lcom/facebook/ads/redexgen/X/Yj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ED;->A9t(Lcom/facebook/ads/redexgen/X/3f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ED;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 69459
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yj;->A01:Lcom/facebook/ads/redexgen/X/3f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4G(I)Ljava/lang/Object;
    .locals 1

    .line 69460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A01:Lcom/facebook/ads/redexgen/X/3f;

    .line 69461
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3f;->A00(I)Lcom/facebook/ads/redexgen/X/3d;

    move-result-object v0

    .line 69462
    .local v0, "compatInfo":Lcom/facebook/ads/redexgen/X/3d;
    if-nez v0, :cond_0

    .line 69463
    const/4 v0, 0x0

    return-object v0

    .line 69464
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3d;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A5Q(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 69465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A01:Lcom/facebook/ads/redexgen/X/3f;

    .line 69466
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3f;->A03(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 69467
    .local v0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez v4, :cond_0

    .line 69468
    const/4 v0, 0x0

    return-object v0

    .line 69469
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69470
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 69471
    .local v2, "infoCount":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 69472
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3d;

    .line 69473
    .local v4, "infoCompat":Lcom/facebook/ads/redexgen/X/3d;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3d;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69474
    .end local v4    # "infoCompat":Lcom/facebook/ads/redexgen/X/3d;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69475
    .end local v3    # "i":I
    :cond_1
    return-object v3
.end method

.method public final A5R(I)Ljava/lang/Object;
    .locals 1

    .line 69476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A01:Lcom/facebook/ads/redexgen/X/3f;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3f;->A01(I)Lcom/facebook/ads/redexgen/X/3d;

    move-result-object v0

    .line 69477
    .local v0, "compatInfo":Lcom/facebook/ads/redexgen/X/3d;
    if-nez v0, :cond_0

    .line 69478
    const/4 v0, 0x0

    return-object v0

    .line 69479
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3d;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final ADR(IILandroid/os/Bundle;)Z
    .locals 1

    .line 69480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A01:Lcom/facebook/ads/redexgen/X/3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3f;->A04(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
