.class public final Lcom/facebook/ads/redexgen/X/Sy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/M7;
    }
.end annotation


# static fields
.field public static A0D:[B


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/PB;

.field public A02:Lcom/facebook/ads/redexgen/X/75;

.field public A03:Ljava/lang/String;

.field public final A04:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A07:Lcom/facebook/ads/redexgen/X/M7;

.field public final A08:Lcom/facebook/ads/redexgen/X/RA;

.field public final A09:Lcom/facebook/ads/redexgen/X/PO;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Oj;

.field public final A0B:Lcom/facebook/ads/redexgen/X/NY;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Mt;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sy;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 5

    .line 53570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53571
    new-instance v0, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A9;-><init>(Lcom/facebook/ads/redexgen/X/Sy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A0C:Lcom/facebook/ads/redexgen/X/Mt;

    .line 53572
    new-instance v0, Lcom/facebook/ads/redexgen/X/A8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A8;-><init>(Lcom/facebook/ads/redexgen/X/Sy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A0B:Lcom/facebook/ads/redexgen/X/NY;

    .line 53573
    new-instance v0, Lcom/facebook/ads/redexgen/X/A1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A1;-><init>(Lcom/facebook/ads/redexgen/X/Sy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A09:Lcom/facebook/ads/redexgen/X/PO;

    .line 53574
    new-instance v0, Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9m;-><init>(Lcom/facebook/ads/redexgen/X/Sy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A0A:Lcom/facebook/ads/redexgen/X/Oj;

    .line 53575
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 53576
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sy;->A05:Lcom/facebook/ads/redexgen/X/Ia;

    .line 53577
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sy;->A07:Lcom/facebook/ads/redexgen/X/M7;

    .line 53578
    new-instance v0, Lcom/facebook/ads/redexgen/X/RA;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    .line 53579
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6o;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/6o;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0c(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 53580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    .line 53581
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v4

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A0C:Lcom/facebook/ads/redexgen/X/Mt;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A0B:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A09:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x2

    aput-object v1, v3, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A0A:Lcom/facebook/ads/redexgen/X/Oj;

    const/4 v0, 0x3

    aput-object v1, v3, v0

    .line 53582
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 53583
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    .line 53584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/RA;->setIsFullScreen(Z)V

    .line 53585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->setVolume(F)V

    .line 53586
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53587
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53589
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ln;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Ln;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53590
    .local v1, "closeButton":Lcom/facebook/ads/redexgen/X/Ln;
    new-instance v0, Lcom/facebook/ads/redexgen/X/M5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/M5;-><init>(Lcom/facebook/ads/redexgen/X/Sy;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ln;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53591
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ln;->getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53592
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sy;)Lcom/facebook/ads/redexgen/X/Lj;
    .locals 0

    .line 53593
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sy;)Lcom/facebook/ads/redexgen/X/M7;
    .locals 0

    .line 53594
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A07:Lcom/facebook/ads/redexgen/X/M7;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x26

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x1dt
        -0x1et
        -0x23t
        -0x22t
        -0x26t
        -0x31t
        -0x19t
        -0x11t
        -0x8t
        -0xbt
        -0xft
        -0x6t
        0x0t
        -0x20t
        -0x5t
        -0x9t
        -0xft
        -0x6t
        -0x44t
        -0x46t
        -0x54t
        -0x6bt
        -0x58t
        -0x45t
        -0x50t
        -0x43t
        -0x54t
        -0x76t
        -0x45t
        -0x58t
        -0x77t
        -0x44t
        -0x45t
        -0x45t
        -0x4at
        -0x4bt
        -0x49t
        -0x56t
        -0x5bt
        -0x5at
        -0x50t
        -0x76t
        -0x51t
        -0x4bt
        -0x5at
        -0x4dt
        -0x4ct
        -0x4bt
        -0x56t
        -0x4bt
        -0x5et
        -0x53t
        -0x7at
        -0x49t
        -0x5at
        -0x51t
        -0x4bt
        -0x63t
        -0x70t
        -0x75t
        -0x74t
        -0x6at
        0x73t
        -0x6at
        -0x72t
        -0x72t
        -0x74t
        -0x67t
        -0x2t
        -0xft
        -0x14t
        -0x13t
        -0x9t
        -0x2bt
        -0x28t
        -0x34t
        0x18t
        0xbt
        0x6t
        0x7t
        0x11t
        -0xbt
        0x7t
        0x7t
        0xdt
        -0xat
        0xbt
        0xft
        0x7t
        -0x42t
        -0x4ft
        -0x54t
        -0x53t
        -0x49t
        -0x63t
        -0x66t
        -0x6ct
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 1

    .line 53595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;->setVideoProgressReportIntervalMs(I)V

    .line 53596
    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .locals 1

    .line 53597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;->setControlsAnchorView(Landroid/view/View;)V

    .line 53598
    return-void
.end method

.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 10

    .line 53599
    const/16 v2, 0x8

    const/16 v1, 0xb

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_4

    .line 53600
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A03:Ljava/lang/String;

    .line 53601
    :goto_0
    const/16 v2, 0x13

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53602
    .local v0, "ctaText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ol;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ol;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;)V

    .line 53604
    .local v1, "ctaButton":Lcom/facebook/ads/redexgen/X/Ol;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53605
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    .line 53606
    .local v3, "density":F
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 53607
    .local v4, "margin":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53608
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53609
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53610
    new-instance v0, Lcom/facebook/ads/redexgen/X/M6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Lcom/facebook/ads/redexgen/X/Sy;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ol;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53612
    .end local v1    # "ctaButton":Lcom/facebook/ads/redexgen/X/Ol;
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "density":F
    .end local v4    # "margin":I
    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x4d

    const/16 v2, 0xd

    const/16 v0, 0x7c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:I

    .line 53613
    new-instance v4, Lcom/facebook/ads/redexgen/X/75;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sy;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sy;->A05:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Sy;->A03:Ljava/lang/String;

    .line 53614
    const/16 v3, 0x3a

    const/16 v2, 0xb

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/75;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A02:Lcom/facebook/ads/redexgen/X/75;

    .line 53615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53616
    new-instance v2, Lcom/facebook/ads/redexgen/X/PB;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sy;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A05:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sy;->A03:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/PB;

    .line 53617
    :goto_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    const/16 v3, 0x45

    const/16 v2, 0x8

    const/16 v0, 0x62

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RA;->setVideoMPD(Ljava/lang/String;)V

    .line 53618
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    const/16 v3, 0x5a

    const/16 v2, 0x8

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RA;->setVideoURI(Ljava/lang/String;)V

    .line 53619
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:I

    if-lez v2, :cond_1

    .line 53620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/RA;->A0Y(I)V

    .line 53621
    :cond_1
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/16 v0, 0x48

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53622
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PK;->A04:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 53623
    :cond_2
    return-void

    .line 53624
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/PB;

    goto :goto_1

    .line 53625
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A03:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final ABw(Z)V
    .locals 5

    .line 53626
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Nz;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Nz;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8T;)V

    .line 53627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0W()V

    .line 53628
    return-void
.end method

.method public final ACM(Z)V
    .locals 5

    .line 53629
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v3, Lcom/facebook/ads/redexgen/X/NZ;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/NZ;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8T;)V

    .line 53630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53631
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PK;->A04:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0x12

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 53632
    :cond_0
    return-void
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 0

    .line 53633
    return-void
.end method

.method public final getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 53634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 53635
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 5

    .line 53636
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A06:Lcom/facebook/ads/redexgen/X/Lj;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    .line 53637
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getCurrentPositionInMillis()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/M0;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M0;-><init>(II)V

    .line 53638
    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8T;)V

    .line 53639
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A02:Lcom/facebook/ads/redexgen/X/75;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getCurrentPositionInMillis()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A0d(I)V

    .line 53640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/PB;

    if-eqz v0, :cond_0

    .line 53641
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PB;->A09()V

    .line 53642
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0Z(I)V

    .line 53643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A08:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0V()V

    .line 53644
    return-void
.end method
