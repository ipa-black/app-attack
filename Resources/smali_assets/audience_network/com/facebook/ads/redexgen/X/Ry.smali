.class public final Lcom/facebook/ads/redexgen/X/Ry;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ru;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ru;)V
    .locals 0

    .line 51564
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 51565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A06:Lcom/facebook/ads/redexgen/X/LD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A06:Lcom/facebook/ads/redexgen/X/LD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 51567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51568
    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A0A:Lcom/facebook/ads/redexgen/X/QA;

    .line 51569
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A06:Lcom/facebook/ads/redexgen/X/LD;

    .line 51570
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51571
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 51572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v2

    .line 51573
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ru;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ia;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 51574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 51575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A01:Lcom/facebook/ads/redexgen/X/Zs;

    .line 51576
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0I()Ljava/lang/String;

    move-result-object v0

    .line 51577
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/29;->A00(Ljava/lang/String;)V

    .line 51578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ru;->A08:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A09:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 51579
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
