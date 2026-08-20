.class public final Lcom/facebook/ads/redexgen/X/TH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/5D;

.field public final A07:Lcom/facebook/ads/redexgen/X/5F;

.field public final A08:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A09:Lcom/facebook/ads/redexgen/X/Mm;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Mn;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Sq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 54332
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VjNTozFJBHBTAbZvfj55MfAwGP9LBSf6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Pq0aBOwFzXTv3d8c4kUbGJ29Dl7JaeBe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6Jh9GB1FdSmhvo4jirjJmKwQUVM2B32M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TGGBgusTs1FvyAgmLwAY3Gsc6eBuJSRW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x90wDNv6CtBtNBa5WCDyDNAaFj8t5cCY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GDNjvFSJPJLifqCEdIwxfegvvEeKItWd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZGbO0A4ZRQBBFZeQfXm02pkO19XETszh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zRbEM6nv1u3uOOYe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TH;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/TH;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TH;->A0E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 6

    .line 54333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54334
    new-instance v0, Lcom/facebook/ads/redexgen/X/TK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TK;-><init>(Lcom/facebook/ads/redexgen/X/TH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/5D;

    .line 54335
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/TH;->A05:Z

    .line 54336
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:J

    .line 54337
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Z

    .line 54338
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TH;->A07:Lcom/facebook/ads/redexgen/X/5F;

    .line 54339
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    .line 54340
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v4, v1

    .line 54341
    .local v0, "progressBarHeightPx":I
    new-instance v2, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v2, p0, p4}, Lcom/facebook/ads/redexgen/X/TJ;-><init>(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 54342
    .local v1, "browserListener":Lcom/facebook/ads/redexgen/X/Mu;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54343
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A8L()V

    .line 54344
    :cond_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/IL;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 54345
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v1, p2, v2}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Mu;)V

    .line 54346
    :goto_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    .line 54347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    .line 54348
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setId(I)V

    .line 54349
    const/4 v3, -0x2

    const/4 v5, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54350
    .local v2, "controlsViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TI;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TI;-><init>(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setListener(Lcom/facebook/ads/redexgen/X/Ml;)V

    .line 54352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-interface {p4, v0, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 54353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mm;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sq;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/Mv;)V

    .line 54354
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54355
    .local v3, "webViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mm;->getId()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54356
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 54358
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v0, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0A:Lcom/facebook/ads/redexgen/X/Mn;

    .line 54359
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54360
    .local v4, "progressBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mm;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54361
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A0A:Lcom/facebook/ads/redexgen/X/Mn;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setProgress(I)V

    .line 54362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0A:Lcom/facebook/ads/redexgen/X/Mn;

    invoke-interface {p4, v0, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 54363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/5D;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0K(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 54364
    return-void

    .line 54365
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Xc;->A0D()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v1, p2, v0, v2}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/Mu;)V

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/Mm;
    .locals 0

    .line 54366
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/Mn;
    .locals 0

    .line 54367
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0A:Lcom/facebook/ads/redexgen/X/Mn;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/Sq;
    .locals 0

    .line 54368
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/TH;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TH;->A0D:[Ljava/lang/String;

    const-string v1, "WrA4t0RN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xf2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TH;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x72t
        -0x78t
        -0x78t
        -0x6bt
        -0x78t
        -0x54t
        -0x29t
        -0x2bt
        -0x78t
        -0x55t
        -0x29t
        -0x2at
        -0x24t
        -0x33t
        -0x2at
        -0x24t
        -0x78t
        -0x4ct
        -0x29t
        -0x37t
        -0x34t
        -0x33t
        -0x34t
        -0x78t
        -0x44t
        -0x2ft
        -0x2bt
        -0x33t
        -0x5et
        -0x78t
        -0x46t
        -0x30t
        -0x30t
        -0x23t
        -0x30t
        -0x4t
        0x1ft
        0x11t
        0x14t
        -0x30t
        -0xat
        0x19t
        0x1et
        0x19t
        0x23t
        0x18t
        -0x30t
        0x4t
        0x19t
        0x1dt
        0x15t
        -0x16t
        -0x30t
        -0x62t
        -0x4ct
        -0x4ct
        -0x3ft
        -0x4ct
        -0x20t
        0x3t
        -0xbt
        -0x8t
        -0x4ct
        -0x19t
        0x8t
        -0xbt
        0x6t
        0x8t
        -0x4ct
        -0x18t
        -0x3t
        0x1t
        -0x7t
        -0x32t
        -0x4ct
        -0x65t
        -0x4ft
        -0x4ft
        -0x42t
        -0x4ft
        -0x1dt
        -0xat
        0x4t
        0x1t
        0x0t
        -0x1t
        0x4t
        -0xat
        -0x4ft
        -0x2at
        -0x1t
        -0xbt
        -0x4ft
        -0x1bt
        -0x6t
        -0x2t
        -0xat
        -0x35t
        -0x4ft
        -0x39t
        -0x23t
        -0x23t
        -0x16t
        -0x23t
        0x10t
        0x20t
        0x2ft
        0x2ct
        0x29t
        0x29t
        -0x23t
        0xft
        0x22t
        0x1et
        0x21t
        0x36t
        -0x23t
        0x11t
        0x26t
        0x2at
        0x22t
        -0x9t
        -0x23t
        -0x70t
        -0x5at
        -0x5at
        -0x4dt
        -0x5at
        -0x27t
        -0x15t
        -0x7t
        -0x7t
        -0x11t
        -0xbt
        -0xct
        -0x5at
        -0x34t
        -0x11t
        -0xct
        -0x11t
        -0x7t
        -0x12t
        -0x5at
        -0x26t
        -0x11t
        -0xdt
        -0x15t
        -0x40t
        -0x5at
        -0x74t
        0x5ct
        0x72t
        0x72t
        0x7ft
        0x72t
        -0x66t
        -0x4dt
        -0x40t
        -0x4at
        -0x42t
        -0x49t
        -0x3ct
        0x72t
        -0x5at
        -0x45t
        -0x41t
        -0x49t
        -0x74t
        0x72t
        -0x5at
        -0x2at
        -0x2dt
        -0x25t
        -0x29t
        -0x37t
        -0x2at
        -0x7ct
        -0x29t
        -0x37t
        -0x29t
        -0x29t
        -0x33t
        -0x2dt
        -0x2et
        -0x7ct
        -0x38t
        -0x3bt
        -0x28t
        -0x3bt
        -0x7ct
        -0x30t
        -0x2dt
        -0x35t
        -0x35t
        -0x37t
        -0x38t
        -0x7ct
        -0x5ct
        -0x7ct
        -0x3at
        -0x39t
        -0x2ct
        -0x26t
        -0x27t
        -0x61t
        -0x39t
        -0x2ft
        -0x3at
        -0x2dt
        -0x30t
        0x9t
        0x19t
        0x16t
        0x1et
        0x1at
        0xct
        0x19t
        -0x4t
        -0x7t
        -0xdt
        0x18t
        0x21t
        0x1et
        0x1at
        0x23t
        0x29t
        0x9t
        0x24t
        0x20t
        0x1at
        0x23t
        -0x36t
        -0x3dt
        -0x30t
        -0x3at
        -0x32t
        -0x39t
        -0x2ct
        -0x4at
        -0x35t
        -0x31t
        -0x39t
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/TH;)Z
    .locals 0

    .line 54369
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/TH;->A05:Z

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/TH;Z)Z
    .locals 0

    .line 54370
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TH;->A05:Z

    return p1
.end method


# virtual methods
.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 7

    .line 54371
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 54372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:J

    .line 54373
    :cond_0
    const-wide/16 v1, -0x1

    const/16 v4, 0xe7

    const/16 v3, 0xb

    const/16 v0, 0x24

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xdc

    const/16 v3, 0xb

    const/16 v0, 0x77

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0xd2

    const/16 v3, 0xa

    const/16 v0, 0x69

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_2

    .line 54374
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A02:Ljava/lang/String;

    .line 54375
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/redexgen/X/TH;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v3, v4, v0

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/16 v0, 0x1c

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54376
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/TH;->A0D:[Ljava/lang/String;

    const-string v3, "h34ynCyxETZN0C4DuHOjqZ0ETc7IsjOt"

    const/4 v0, 0x5

    aput-object v3, v4, v0

    invoke-virtual {p1, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:J

    goto :goto_0

    .line 54377
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A02:Ljava/lang/String;

    .line 54378
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Ljava/lang/String;

    .line 54379
    invoke-virtual {p2, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:J

    .line 54380
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A02:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 54381
    .local v0, "url":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A09:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mm;->setUrl(Ljava/lang/String;)V

    .line 54382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Sq;->loadUrl(Ljava/lang/String;)V

    .line 54383
    return-void

    .line 54384
    :cond_3
    const/16 v2, 0xc7

    const/16 v1, 0xb

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final ABw(Z)V
    .locals 5

    .line 54385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->onPause()V

    .line 54386
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Z

    if-eqz v0, :cond_0

    .line 54387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A04:Z

    .line 54388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    .line 54389
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->getFirstUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mp;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Mp;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A00:J

    .line 54390
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mp;->A01(J)Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A01:J

    .line 54391
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mp;->A03(J)Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    .line 54392
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->getResponseEndMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mp;->A04(J)Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    .line 54393
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->getDomContentLoadedMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mp;->A00(J)Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    .line 54394
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->getScrollReadyMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mp;->A05(J)Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    .line 54395
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->getLoadFinishMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mp;->A02(J)Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    .line 54396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mp;->A06(J)Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    .line 54397
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A07()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v4

    .line 54398
    .local v0, "sessionData":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TH;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mq;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A97(Ljava/lang/String;Ljava/util/Map;)V

    .line 54399
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa9

    const/16 v1, 0x1e

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x95

    const/16 v1, 0x14

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Mq;->A01:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    const/16 v1, 0x16

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Mq;->A03:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x4b

    const/16 v1, 0x18

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Mq;->A04:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Mq;->A00:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x63

    const/16 v1, 0x18

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Mq;->A05:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    const/16 v1, 0x17

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Mq;->A02:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    const/16 v1, 0x1a

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Mq;->A06:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54402
    .end local v0    # "sessionData":Lcom/facebook/ads/redexgen/X/Mq;
    :cond_0
    return-void
.end method

.method public final ACM(Z)V
    .locals 1

    .line 54403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->onResume()V

    .line 54404
    return-void
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 4

    .line 54405
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TH;->A02:Ljava/lang/String;

    const/16 v2, 0xd2

    const/16 v1, 0xa

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54406
    return-void
.end method

.method public final getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 54407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 54408
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 54409
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TH;->A07:Lcom/facebook/ads/redexgen/X/5F;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A06:Lcom/facebook/ads/redexgen/X/5D;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 54410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N6;->A03(Landroid/webkit/WebView;)V

    .line 54411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TH;->A0B:Lcom/facebook/ads/redexgen/X/Sq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->destroy()V

    .line 54412
    return-void
.end method
