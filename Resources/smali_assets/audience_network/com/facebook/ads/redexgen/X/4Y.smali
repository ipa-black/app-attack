.class public final Lcom/facebook/ads/redexgen/X/4Y;
.super Lcom/facebook/ads/redexgen/X/TO;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7L;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewabilityCheckRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/TO<",
        "Lcom/facebook/ads/redexgen/X/QA;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/7L;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Xc;

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 11556
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iVby5wy6H7l4dzY0Hld0xs9tuHtnGk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nr0U5YnFPaRVMsCPPiWFbDdqiRS3TX59"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NmHEOi9mcJk9OQjZmIqLk3AYwOx5ICK3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "j6OxXppfxNxejmkkIb10P2S2ED13bfax"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YxA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "okdCTGqDBxOQkU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XAA3rxsPdfTGxXL8JCFSxOB2RupP9g"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Mu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4Y;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1

    .line 11557
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TO;-><init>(Ljava/lang/Object;)V

    .line 11558
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    .line 11559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Z

    .line 11560
    return-void
.end method

.method private A00(I)V
    .locals 4

    .line 11561
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Z

    if-nez v0, :cond_0

    .line 11562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A39(I)V

    .line 11563
    :cond_0
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Y;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Y;->A02:[Ljava/lang/String;

    const-string v1, "k6Oe58jhR2JQ133LIP7LsY5lW6eco9l5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Z

    .line 11564
    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 11

    .line 11565
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TO;->A07()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/QA;

    .line 11566
    .local v0, "checker":Lcom/facebook/ads/redexgen/X/QA;
    const/4 v9, 0x0

    if-nez v4, :cond_0

    .line 11567
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/4Y;->A00(I)V

    .line 11568
    return-void

    .line 11569
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0C(Lcom/facebook/ads/redexgen/X/QA;)Landroid/view/View;

    move-result-object v3

    .line 11570
    .local v2, "adView":Landroid/view/View;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0I(Lcom/facebook/ads/redexgen/X/QA;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Q9;

    .line 11571
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/Q9;
    const/4 v6, 0x1

    if-nez v3, :cond_4

    const/4 v1, 0x1

    .line 11572
    .local v5, "viewIsNull":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_5

    .line 11573
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0P(Lcom/facebook/ads/redexgen/X/QA;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11574
    if-eqz v1, :cond_3

    .line 11575
    :goto_1
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/4Y;->A00(I)V

    .line 11576
    :cond_2
    return-void

    .line 11577
    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    .line 11578
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 11579
    :cond_5
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A03(Lcom/facebook/ads/redexgen/X/QA;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/QA;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v5

    .line 11580
    .local v6, "viewabilityResult":Lcom/facebook/ads/redexgen/X/QB;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/QB;->A04()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11581
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A05(Lcom/facebook/ads/redexgen/X/QA;)I

    .line 11582
    :goto_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A04(Lcom/facebook/ads/redexgen/X/QA;)I

    move-result v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A06(Lcom/facebook/ads/redexgen/X/QA;)I

    move-result v0

    if-le v1, v0, :cond_9

    const/4 v10, 0x1

    .line 11583
    .local v7, "isViewable":Z
    :goto_3
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0F(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0F(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QB;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 11584
    .local v8, "wasViewable":Z
    :goto_4
    if-nez v10, :cond_6

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/QB;->A04()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11585
    :cond_6
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/QA;->A0G(Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/QB;)Lcom/facebook/ads/redexgen/X/QB;

    .line 11586
    :cond_7
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/QB;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 11587
    .local v9, "resultCode":Ljava/lang/String;
    monitor-enter v4

    goto :goto_5

    .line 11588
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 11589
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 11590
    :cond_a
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/QA;->A07(Lcom/facebook/ads/redexgen/X/QA;I)I

    goto :goto_2

    .line 11591
    :goto_5
    :try_start_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0J(Lcom/facebook/ads/redexgen/X/QA;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0J(Lcom/facebook/ads/redexgen/X/QA;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 11592
    .local v1, "historicalCount":I
    :cond_b
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0J(Lcom/facebook/ads/redexgen/X/QA;)Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v0, v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11593
    .end local v1    # "historicalCount":I
    monitor-exit v4

    .line 11594
    if-eqz v10, :cond_e

    if-nez v8, :cond_e
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11595
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Z

    .line 11596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0A(Lcom/facebook/ads/redexgen/X/QA;J)J

    .line 11597
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0P(Lcom/facebook/ads/redexgen/X/QA;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A3A()V

    .line 11599
    :cond_c
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Q9;->A02()V

    .line 11600
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVisibleAnimation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11601
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 11602
    .local v1, "animation":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11603
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11604
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_d
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0Q(Lcom/facebook/ads/redexgen/X/QA;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 11605
    return-void

    .line 11606
    :cond_e
    if-nez v10, :cond_12

    if-eqz v8, :cond_12

    .line 11607
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Z

    .line 11608
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0P(Lcom/facebook/ads/redexgen/X/QA;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/QB;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2g(Lcom/facebook/ads/redexgen/X/0Q;)V

    .line 11610
    :cond_f
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Q9;->A00()V

    .line 11611
    :cond_10
    :goto_6
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0O(Lcom/facebook/ads/redexgen/X/QA;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0D(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 11612
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0B(Lcom/facebook/ads/redexgen/X/QA;)Landroid/os/Handler;

    move-result-object v3

    .line 11613
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0D(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A02(Lcom/facebook/ads/redexgen/X/QA;)I

    move-result v0

    int-to-long v0, v0

    .line 11614
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11615
    :cond_11
    return-void

    .line 11616
    :cond_12
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Q9;->A01()V

    .line 11617
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Z

    if-nez v0, :cond_13

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/QA;->A0P(Lcom/facebook/ads/redexgen/X/QA;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 11618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/QB;->A02()Lcom/facebook/ads/redexgen/X/0Q;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A38(Lcom/facebook/ads/redexgen/X/0Q;)V

    .line 11619
    :cond_13
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Z

    goto :goto_6

    .line 11620
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final A5d()Lcom/facebook/ads/redexgen/X/Xc;
    .locals 1

    .line 11621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    return-object v0
.end method
