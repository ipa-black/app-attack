.class public final Lcom/facebook/ads/redexgen/X/8G;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8F;
    }
.end annotation


# static fields
.field public static A00:Z

.field public static A01:Z

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A05:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A06:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 18589
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qrNp1wG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4f9SKAEMWw8LBpPH9ClfYFaSVVluVAOE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "62aVnpwn360RV3u8SEcmxFYidJmBvefX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Gce9ySP9MgoEln4cNVrEo5sJO8CSkBrv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GAv6eBsy68sSiadtgyjEU9blJSusD372"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OMedkGV5dbFzDsS0dZcen"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wlEAAxVLaYYUt0VSnPi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2B4l1t7rFez9Iyb0KdS6JKEUq9HBo8Fu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8G;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8G;->A03()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8G;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18590
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8G;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18591
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8G;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Jr;
    .locals 1

    .line 18593
    new-instance v0, Lcom/facebook/ads/redexgen/X/XM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XM;-><init>()V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/K7;
    .locals 1

    .line 18594
    new-instance v0, Lcom/facebook/ads/redexgen/X/XL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XL;-><init>(Lcom/facebook/ads/redexgen/X/Xb;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8G;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8G;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8G;->A03:[Ljava/lang/String;

    const-string v1, "IDfTBPjSyvL4biEe7dLkbKSavqcQmadb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Oy3yacq1X2KDRnpIDSUXWs28RTZJmhMt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

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

.method public static A03()V
    .locals 1

    const/16 v0, 0xde

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8G;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x3ct
        -0x3at
        -0x37t
        -0xct
        -0x34t
        -0x38t
        -0xct
        -0x37t
        -0x42t
        -0x46t
        -0x47t
        -0x13t
        -0x24t
        -0x1ft
        -0x23t
        -0x1at
        -0x25t
        -0x23t
        -0x3at
        -0x23t
        -0x14t
        -0x11t
        -0x19t
        -0x16t
        -0x1dt
        -0x3et
        -0x4dt
        -0x46t
        -0x71t
        -0x28t
        -0x23t
        -0x28t
        -0x1dt
        -0x28t
        -0x30t
        -0x25t
        -0x28t
        -0x17t
        -0x30t
        -0x1dt
        -0x28t
        -0x22t
        -0x23t
        -0x71t
        -0x1et
        -0x1dt
        -0x30t
        -0x1ft
        -0x1dt
        -0x2ct
        -0x2dt
        -0x3ct
        -0x2bt
        -0x24t
        -0x6ft
        -0x18t
        -0x2et
        -0x1ct
        -0x6ft
        -0x2et
        -0x23t
        -0x1dt
        -0x2at
        -0x2et
        -0x2bt
        -0x16t
        -0x6ft
        -0x26t
        -0x21t
        -0x26t
        -0x1bt
        -0x26t
        -0x2et
        -0x23t
        -0x26t
        -0x15t
        -0x2at
        -0x2bt
        -0x6et
        -0x6ft
        -0x3ct
        -0x24t
        -0x26t
        -0x1ft
        -0x1ft
        -0x26t
        -0x21t
        -0x28t
        -0x61t
        -0x3et
        -0x28t
        -0x22t
        -0x77t
        -0x33t
        -0x28t
        -0x29t
        -0x70t
        -0x23t
        -0x77t
        -0x34t
        -0x36t
        -0x2bt
        -0x2bt
        -0x77t
        -0x56t
        -0x22t
        -0x33t
        -0x2et
        -0x32t
        -0x29t
        -0x34t
        -0x32t
        -0x49t
        -0x32t
        -0x23t
        -0x20t
        -0x28t
        -0x25t
        -0x2ct
        -0x56t
        -0x33t
        -0x24t
        -0x69t
        -0x2et
        -0x29t
        -0x2et
        -0x23t
        -0x2et
        -0x36t
        -0x2bt
        -0x2et
        -0x1dt
        -0x32t
        -0x6ft
        -0x6et
        -0x69t
        -0x77t
        -0x44t
        -0x28t
        -0x2at
        -0x32t
        -0x77t
        -0x31t
        -0x22t
        -0x29t
        -0x34t
        -0x23t
        -0x2et
        -0x28t
        -0x29t
        -0x36t
        -0x2bt
        -0x2et
        -0x23t
        -0x1et
        -0x77t
        -0x2at
        -0x36t
        -0x1et
        -0x77t
        -0x29t
        -0x28t
        -0x23t
        -0x77t
        -0x20t
        -0x28t
        -0x25t
        -0x2ct
        -0x77t
        -0x27t
        -0x25t
        -0x28t
        -0x27t
        -0x32t
        -0x25t
        -0x2bt
        -0x1et
        -0x69t
        -0x42t
        -0x33t
        -0x3at
        -0x1ft
        -0x21t
        -0x18t
        -0x21t
        -0x14t
        -0x1dt
        -0x23t
        -0x9t
        -0x4t
        -0x9t
        0x2t
        -0x9t
        -0x11t
        -0x6t
        -0x9t
        0x8t
        -0xdt
        0x5t
        0xat
        0x5t
        0x10t
        0x5t
        -0x3t
        0x8t
        0x5t
        0x16t
        0x1t
        -0x3ct
        -0x3bt
        -0x44t
        0xat
        0xbt
        0x10t
        -0x44t
        -0x1t
        -0x3t
        0x8t
        0x8t
        0x1t
        0x0t
        -0x36t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 2

    .line 18595
    sget-object v1, Lcom/facebook/ads/redexgen/X/LF;->A01:Lcom/facebook/ads/redexgen/X/LF;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XN;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/XN;-><init>(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->execute(Ljava/lang/Runnable;)V

    .line 18596
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 0

    .line 18597
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/8G;->A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 18598
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8G;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 18599
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18600
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 18601
    .local v0, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/7i;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/7h;)V

    .line 18602
    .local v1, "reportHandler":Lcom/facebook/ads/redexgen/X/7i;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18603
    :catch_0
    move-exception v0

    .line 18604
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A1X:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 18605
    const/16 v2, 0xb5

    const/4 v1, 0x7

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 18606
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 2

    .line 18607
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A0G(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 18608
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 2

    .line 18609
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A0G(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 18610
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 1

    .line 18611
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A1j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18612
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8G;->A0E(Lcom/facebook/ads/redexgen/X/Xb;I)V

    .line 18613
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A1q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18614
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8G;->A0B(Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 18615
    :cond_1
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 2

    .line 18616
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A1k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18617
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A0F(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 18618
    :cond_0
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 2

    .line 18619
    sget-object v1, Lcom/facebook/ads/redexgen/X/LQ;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XO;-><init>(Lcom/facebook/ads/redexgen/X/Xb;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18620
    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 3

    .line 18621
    new-instance v2, Lcom/facebook/ads/redexgen/X/XI;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/XI;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/XS;-><init>()V

    .line 18622
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 18623
    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7m;->A0C(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/7l;Lcom/facebook/ads/redexgen/X/7k;Z)V

    .line 18624
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    .line 18625
    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 0

    .line 18626
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8G;->A0C(Lcom/facebook/ads/redexgen/X/Xb;)V

    return-void
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/Xb;I)V
    .locals 6

    .line 18627
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7M;->A01(Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 18628
    sget-object v1, Lcom/facebook/ads/redexgen/X/8G;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18629
    return-void

    .line 18630
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebuggerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18631
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/JO;->A02()V

    .line 18632
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8G;->A06(Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 18633
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A0m(Landroid/content/Context;)Z

    move-result v3

    .line 18634
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v2

    .line 18635
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8G;->A00()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v1

    .line 18636
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8G;->A01(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    .line 18637
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K4;->A00(ZZLcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/redexgen/X/K7;)V

    .line 18638
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A03(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 18639
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/67;->A03(J)V

    .line 18640
    new-instance v0, Lcom/facebook/ads/redexgen/X/XK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XK;-><init>(Lcom/facebook/ads/redexgen/X/Xb;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QY;->A09(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 18641
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 18642
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x59

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18643
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0R:I

    const/16 v2, 0xc6

    const/16 v1, 0x18

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 18644
    const/16 v2, 0xb2

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 18645
    :cond_3
    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04(Lcom/facebook/ads/redexgen/X/Xb;Ljava/lang/Class;)V

    .line 18646
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LQ;->A05(Landroid/content/Context;)V

    .line 18647
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Il;->A05(Lcom/facebook/ads/redexgen/X/7N;)V

    .line 18648
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0u;->A01(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/0u;

    .line 18649
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A0x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18650
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/54;->A00(Landroid/content/Context;)V

    .line 18651
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18652
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XA;->A02()Lcom/facebook/ads/redexgen/X/XA;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XA;->A7Z(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Im;

    .line 18653
    :cond_5
    return-void
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5
    .param p1    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 18654
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7M;->A01(Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 18655
    const/4 v2, 0x0

    .line 18656
    .local v0, "execute":Z
    const-class v1, Lcom/facebook/ads/redexgen/X/8G;

    monitor-enter v1

    .line 18657
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8G;->A00:Z

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 18658
    if-eq p2, v4, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 18659
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 18660
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8G;->A01:Z

    if-nez v0, :cond_2

    .line 18661
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/8G;->A01:Z

    .line 18662
    const/4 v2, 0x1

    goto :goto_1

    .line 18663
    :cond_1
    :goto_0
    sput-boolean v4, Lcom/facebook/ads/redexgen/X/8G;->A00:Z

    .line 18664
    const/4 v2, 0x1

    .line 18665
    :cond_2
    :goto_1
    monitor-exit v1

    .line 18666
    if-eqz v2, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18667
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/8G;->A0E(Lcom/facebook/ads/redexgen/X/Xb;I)V

    .line 18668
    sget-object v1, Lcom/facebook/ads/redexgen/X/LQ;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XP;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/XP;-><init>(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18669
    .end local v1
    :cond_3
    :goto_2
    return-void

    .line 18670
    :cond_4
    if-ne p2, v4, :cond_3

    .line 18671
    const/16 v2, 0x33

    const/16 v1, 0x26

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v3

    .line 18672
    .local v1, "alreadyInitializedMessage":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 18673
    new-instance v0, Lcom/facebook/ads/redexgen/X/8F;

    invoke-direct {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8F;-><init>(ZLjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A04(Lcom/facebook/ads/AudienceNetworkAds$InitListener;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    goto :goto_2

    .line 18674
    :cond_5
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 18675
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 5
    .param p1    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v2, 0xbc

    const/16 v1, 0xa

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    const/16 v1, 0x1a

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8G;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18676
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QY;->A06()V

    .line 18677
    invoke-static {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/8G;->A0F(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 18678
    return-void
.end method

.method public static declared-synchronized A0H()Z
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/8G;

    monitor-enter v1

    .line 18679
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8G;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
