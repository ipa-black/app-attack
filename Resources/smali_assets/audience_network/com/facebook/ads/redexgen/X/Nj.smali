.class public final Lcom/facebook/ads/redexgen/X/Nj;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Nm;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46587
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v8

    .line 46588
    .local v1, "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Ng;->A00(Lcom/facebook/ads/redexgen/X/1C;)F

    move-result v0

    float-to-double v10, v0

    .line 46589
    .local v8, "aspectRatio":D
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0N()Z

    move-result v7

    .line 46590
    .local v10, "isWatchAndBrowse":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()I

    move-result v0

    .line 46591
    invoke-static {v1, v0, v10, v11}, Lcom/facebook/ads/redexgen/X/Ng;->A06(IID)Z

    move-result v4

    .line 46592
    .local v11, "renderFullscreen":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v5

    .line 46593
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A06()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v3

    .line 46594
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    .line 46595
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46596
    const-string v0, ""

    invoke-static {v5, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v6

    .line 46597
    .local p0, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v3, 0x1

    xor-int/2addr v5, v3

    .line 46598
    .local p1, "isVideo":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46599
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    .line 46600
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v2

    .line 46601
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A02()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    .line 46602
    invoke-interface {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Im;->AFp(Landroid/view/View;Ljava/lang/String;Z)V

    .line 46603
    :cond_0
    if-eqz v7, :cond_2

    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/FC;

    if-eqz v0, :cond_2

    .line 46604
    new-instance v7, Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/SG;-><init>(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 46605
    .local v2, "layout":Lcom/facebook/ads/redexgen/X/Ni;
    .local p2, "layout":Lcom/facebook/ads/redexgen/X/Ni;
    :goto_0
    if-eqz p2, :cond_1

    .line 46606
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v9

    .line 46607
    move-object p0, p1

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Ni;->A0c(Lcom/facebook/ads/redexgen/X/1C;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 46608
    :cond_1
    return-object v7

    .line 46609
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/Ni;
    :cond_2
    if-eqz v5, :cond_3

    .line 46610
    new-instance v7, Lcom/facebook/ads/redexgen/X/93;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/93;-><init>(Lcom/facebook/ads/redexgen/X/Nm;)V

    .restart local v2    # "layout":Lcom/facebook/ads/redexgen/X/Ni;
    goto :goto_0

    .line 46611
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/Ni;
    :cond_3
    if-nez v5, :cond_4

    .line 46612
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46613
    new-instance v7, Lcom/facebook/ads/redexgen/X/94;

    invoke-direct {v7, p0, v4}, Lcom/facebook/ads/redexgen/X/94;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .restart local v2    # "layout":Lcom/facebook/ads/redexgen/X/Ni;
    goto :goto_0

    .line 46614
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/Ni;
    :cond_4
    if-eqz v4, :cond_6

    .line 46615
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 46616
    .local v2, "isInLandscape":Z
    :goto_1
    new-instance v7, Lcom/facebook/ads/redexgen/X/SQ;

    invoke-direct {v7, p0, v3}, Lcom/facebook/ads/redexgen/X/SQ;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .line 46617
    .local v2, "layout":Lcom/facebook/ads/redexgen/X/Ni;
    goto :goto_0

    .line 46618
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 46619
    .end local v2    # "layout":Lcom/facebook/ads/redexgen/X/Ni;
    :cond_6
    nop

    .line 46620
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/Ng;->A04(D)Z

    move-result v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/SN;

    invoke-direct {v7, p0, v0}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    goto :goto_0
.end method
