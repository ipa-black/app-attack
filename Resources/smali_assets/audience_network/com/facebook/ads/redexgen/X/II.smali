.class public final Lcom/facebook/ads/redexgen/X/II;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:[B


# instance fields
.field public A00:Landroid/os/Messenger;

.field public A01:Z

.field public final A02:Landroid/content/ServiceConnection;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/II;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/II;->A01:Z

    .line 38034
    new-instance v0, Lcom/facebook/ads/redexgen/X/IH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IH;-><init>(Lcom/facebook/ads/redexgen/X/II;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/II;->A02:Landroid/content/ServiceConnection;

    .line 38035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/II;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 38036
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/II;->A05:Ljava/lang/String;

    .line 38037
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/II;->A04:Ljava/lang/String;

    .line 38038
    return-void
.end method

.method private A00()Landroid/os/Bundle;
    .locals 5

    .line 38039
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 38040
    .local v0, "bundle":Landroid/os/Bundle;
    const/16 v2, 0xd

    const/16 v1, 0x16

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38041
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/II;->A04:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38042
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/II;->A05:Ljava/lang/String;

    const/16 v2, 0x23

    const/16 v1, 0x10

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38043
    return-object v4
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/II;)Landroid/os/Bundle;
    .locals 0

    .line 38044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/II;->A00()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/II;)Landroid/os/Messenger;
    .locals 0

    .line 38045
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/II;->A00:Landroid/os/Messenger;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/II;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 38046
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/II;->A00:Landroid/os/Messenger;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/II;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 38047
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/II;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xcb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/II;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x23t
        -0x32t
        -0x21t
        -0x32t
        -0x26t
        -0x14t
        -0x32t
        -0x25t
        -0x14t
        -0x1et
        -0x1et
        -0x2at
        -0x2ft
        -0x12t
        -0x21t
        -0x10t
        -0x21t
        -0x15t
        -0x3t
        -0x12t
        -0x10t
        -0x13t
        -0xet
        -0x13t
        -0x1ft
        -0x13t
        -0x16t
        -0x3t
        -0xct
        -0x1dt
        -0x10t
        -0xft
        -0x19t
        -0x13t
        -0x14t
        0x6t
        -0x9t
        0x8t
        -0x9t
        0x3t
        0x15t
        0x8t
        -0x5t
        0x7t
        0xbt
        -0x5t
        0x9t
        0xat
        0x15t
        -0x1t
        -0x6t
        -0x43t
        -0x32t
        -0x30t
        -0x28t
        -0x32t
        -0x2ct
        -0x2et
        -0x64t
        -0x30t
        -0x24t
        -0x26t
        -0x23t
        -0x24t
        -0x25t
        -0x2et
        -0x25t
        -0x1ft
        -0x73t
        -0x25t
        -0x24t
        -0x1ft
        -0x73t
        -0x2dt
        -0x24t
        -0x1et
        -0x25t
        -0x2ft
        -0x73t
        -0x24t
        -0x21t
        -0x73t
        -0x26t
        -0x2at
        -0x20t
        -0x20t
        -0x2at
        -0x25t
        -0x2ct
        -0x73t
        -0x23t
        -0x2et
        -0x21t
        -0x26t
        -0x2at
        -0x20t
        -0x20t
        -0x2at
        -0x24t
        -0x25t
        -0x20t
        -0xct
        0x16t
        0x13t
        0x7t
        0x9t
        0x17t
        0x17t
        0xdt
        0x12t
        0xbt
        -0x3ct
        0x16t
        0x9t
        0x15t
        0x19t
        0x9t
        0x17t
        0x18t
        -0x21t
        -0x15t
        -0x17t
        -0x56t
        -0x1et
        -0x23t
        -0x21t
        -0x1ft
        -0x22t
        -0x15t
        -0x15t
        -0x19t
        -0x56t
        -0x23t
        -0xft
        -0x20t
        -0x1bt
        -0x1ft
        -0x16t
        -0x21t
        -0x1ft
        -0x16t
        -0x1ft
        -0x10t
        -0xdt
        -0x15t
        -0x12t
        -0x19t
        -0x56t
        -0x43t
        -0xft
        -0x20t
        -0x1bt
        -0x1ft
        -0x16t
        -0x21t
        -0x1ft
        -0x36t
        -0x1ft
        -0x10t
        -0xdt
        -0x15t
        -0x12t
        -0x19t
        -0x31t
        -0x1ft
        -0x12t
        -0xet
        -0x1bt
        -0x21t
        -0x1ft
        0x42t
        0x4et
        0x4ct
        0xdt
        0x45t
        0x40t
        0x42t
        0x44t
        0x41t
        0x4et
        0x4et
        0x4at
        0xdt
        0x4at
        0x40t
        0x53t
        0x40t
        0x4dt
        0x40t
        0x15t
        0x1ct
        0xft
        0xbt
        0x22t
        0xdt
        0x18t
        0x15t
        0x10t
        0xdt
        0x20t
        0x15t
        0x1bt
        0x1at
    .end array-data
.end method

.method private A07(ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 4

    .line 38048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/II;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v3

    const/16 v2, 0xbd

    const/16 v1, 0xe

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 38049
    return-void
.end method

.method private A08(ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 4

    .line 38050
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/7t;->A03(I)V

    .line 38051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/II;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v3

    const/16 v2, 0xbd

    const/16 v1, 0xe

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7r;->A9D(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 38052
    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/II;ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 0

    .line 38053
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/II;->A08(ILcom/facebook/ads/redexgen/X/7t;)V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/II;ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 0

    .line 38054
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/II;->A07(ILcom/facebook/ads/redexgen/X/7t;)V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/II;Z)Z
    .locals 0

    .line 38055
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/II;->A01:Z

    return p1
.end method


# virtual methods
.method public final A0C()V
    .locals 5

    .line 38056
    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A1s:I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/II;->A05:Ljava/lang/String;

    const/16 v2, 0x65

    const/16 v1, 0x12

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/II;->A08(ILcom/facebook/ads/redexgen/X/7t;)V

    .line 38057
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 38058
    .local v0, "intent":Landroid/content/Intent;
    const/16 v2, 0xaa

    const/16 v1, 0x13

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x77

    const/16 v1, 0x33

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38059
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/II;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/II;->A02:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    .line 38060
    invoke-virtual {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 38061
    .local v1, "isBinding":Z
    if-nez v0, :cond_0

    .line 38062
    sget v3, Lcom/facebook/ads/redexgen/X/7s;->A1o:I

    const/16 v2, 0x33

    const/16 v1, 0x32

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/II;->A08(ILcom/facebook/ads/redexgen/X/7t;)V

    .line 38063
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/II;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/II;->A02:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38064
    :catch_0
    move-exception v2

    .line 38065
    .local v1, "ex":Ljava/lang/Exception;
    sget v1, Lcom/facebook/ads/redexgen/X/7s;->A1n:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/II;->A07(ILcom/facebook/ads/redexgen/X/7t;)V

    .line 38066
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
