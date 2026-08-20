.class public final Lcom/facebook/ads/redexgen/X/RP;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RM;->A08(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ia;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/LD;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/On;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/RM;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RM;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 0

    .line 50683
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RP;->A03:Lcom/facebook/ads/redexgen/X/RM;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RP;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RP;->A02:Lcom/facebook/ads/redexgen/X/On;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RP;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 4

    .line 50684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A03:Lcom/facebook/ads/redexgen/X/RM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RM;->A04(Lcom/facebook/ads/redexgen/X/RM;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0Z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A04:Ljava/lang/String;

    .line 50685
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A03:Lcom/facebook/ads/redexgen/X/RM;

    .line 50686
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RM;->A03(Lcom/facebook/ads/redexgen/X/RM;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A02:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50687
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RP;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A03:Lcom/facebook/ads/redexgen/X/RM;

    .line 50688
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RM;->A07(Lcom/facebook/ads/redexgen/X/RM;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A01:Lcom/facebook/ads/redexgen/X/LD;

    .line 50689
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 50690
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 50691
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 50692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A03:Lcom/facebook/ads/redexgen/X/RM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RM;->A03(Lcom/facebook/ads/redexgen/X/RM;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A02:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 50693
    :cond_0
    return-void
.end method
