.class public final Lcom/facebook/ads/redexgen/X/RS;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7E;->A0C(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7E;)V
    .locals 0

    .line 50705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 50706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A05(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/7E;->A05(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0F(Lcom/facebook/ads/redexgen/X/7E;Lcom/facebook/ads/redexgen/X/LD;)V

    .line 50708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A09(Lcom/facebook/ads/redexgen/X/7E;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50709
    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    .line 50710
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    .line 50711
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A05(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    .line 50712
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 50713
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v2

    .line 50714
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A04(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A09(Lcom/facebook/ads/redexgen/X/7E;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ia;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 50715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A03(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 50716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/7E;

    .line 50717
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A02(Lcom/facebook/ads/redexgen/X/7E;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0I()Ljava/lang/String;

    move-result-object v0

    .line 50718
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/29;->A00(Ljava/lang/String;)V

    .line 50719
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
