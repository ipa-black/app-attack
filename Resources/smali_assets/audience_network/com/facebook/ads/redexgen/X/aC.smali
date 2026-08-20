.class public final Lcom/facebook/ads/redexgen/X/aC;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aA;->A0B(ILcom/facebook/ads/redexgen/X/8B;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aA;)V
    .locals 0

    .line 71925
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aC;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$3;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 71926
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aC;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$3;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 71928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A01(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Zy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3a(Z)V

    .line 71929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 71930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 71931
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A02(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/F3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0I()Ljava/lang/String;

    move-result-object v0

    .line 71932
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/29;->A00(Ljava/lang/String;)V

    .line 71933
    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 71934
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 71935
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 71936
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A02(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/F3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 71937
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v2

    .line 71938
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A04(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A02(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/F3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ia;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 71939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0V()V

    .line 71940
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 71941
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
