.class public final Lcom/facebook/ads/redexgen/X/5M;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)Lcom/facebook/ads/redexgen/X/0R;
    .locals 0

    .line 14122
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5M;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object p0

    .line 14123
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/Xb;
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/7P;->A6p(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object p0

    .line 14124
    .local p1, "funnelModule":Lcom/facebook/ads/redexgen/X/0U;
    if-eqz p0, :cond_0

    .line 14125
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/0U;->A9f()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object p0

    return-object p0

    .line 14126
    :cond_0
    new-instance p0, Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;-><init>()V

    return-object p0
.end method

.method public static A01(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 3

    .line 14127
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5M;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 14128
    return-object v0
.end method

.method public static A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 3

    .line 14129
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/aO;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 3

    .line 14130
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5M;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 3

    .line 14131
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A0r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14132
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5M;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 14133
    return-object v0

    .line 14134
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5M;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 3

    .line 14135
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5M;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A06(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Dv;
    .locals 3

    .line 14136
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5M;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/7P;->A6p(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dv;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dv;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0U;)V

    .line 14137
    return-object v0
.end method

.method public static A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;
    .locals 2

    .line 14138
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A08()Lcom/facebook/ads/redexgen/X/7P;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xb;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Xb;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)V

    return-object v0
.end method

.method public static declared-synchronized A08()Lcom/facebook/ads/redexgen/X/7P;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/5M;

    monitor-enter v1

    .line 14139
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XA;->A02()Lcom/facebook/ads/redexgen/X/XA;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
