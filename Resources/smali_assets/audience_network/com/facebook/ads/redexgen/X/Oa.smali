.class public final Lcom/facebook/ads/redexgen/X/Oa;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 47698
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qzld4Qy39Azn7KYrj1sXbPZPr2qv6GgB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1yyYiWnNu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zg1voNH89a01plQdKkVOTIE3hJJ00If9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LhD7lTYtuMCYkgD1PnemOg5ERT23PX0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YB3LukNHUN2DaV56yaS9yy46zwl6QYin"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pfYbPlfLNAe5pcAyURRpn9lPUi7k7Z7a"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oa;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oa;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Oa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oa;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/6M;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/OY;Z)Landroid/webkit/WebResourceResponse;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 47700
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47701
    .local v0, "url":Ljava/lang/String;
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/OY;->A06:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 47702
    return-object v7

    .line 47703
    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 47704
    .local v1, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v5}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47705
    .local v3, "mimeType":Ljava/lang/String;
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OY;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6c

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47707
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/6M;->A0O(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 47708
    .local v4, "cachedFile":Ljava/io/File;
    if-eqz v1, :cond_3

    .line 47709
    if-eqz p4, :cond_2

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/String;

    .line 47710
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/lang/String;

    .line 47711
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47712
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v1, p0, v5}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OS;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/OS;-><init>(Lcom/facebook/ads/redexgen/X/Xb;Ljava/io/FileInputStream;Lcom/facebook/ads/redexgen/X/OR;)V

    .line 47713
    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 47714
    :cond_2
    invoke-static {v6, v4, v1}, Lcom/facebook/ads/redexgen/X/Oa;->A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 47715
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47716
    .end local v4    # "cachedFile":Ljava/io/File;
    :cond_4
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OY;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x81

    const/16 v1, 0x16

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47718
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/6M;->A0P(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47719
    .local v4, "cachedImageFile":Ljava/io/File;
    if-eqz v0, :cond_5

    .line 47720
    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 47721
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    const/16 v1, 0x1a

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47722
    .end local v4    # "cachedImageFile":Ljava/io/File;
    :cond_6
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OY;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x97

    const/16 v1, 0x16

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47724
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 47725
    invoke-static {p0, p2, v0, v4, v6}, Lcom/facebook/ads/redexgen/X/OP;->A00(Lcom/facebook/ads/redexgen/X/Xc;Landroid/webkit/WebResourceRequest;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47726
    :catch_0
    move-exception v4

    .line 47727
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x36

    const/16 v1, 0x23

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x11

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47728
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    return-object v7
.end method

.method public static A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 47729
    .local p0, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 47730
    .local p0, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    const/16 v2, 0x6a

    const/4 v1, 0x2

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v7

    move-object p0, p0

    move-object v4, p1

    move-object p1, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v3
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oa;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 4

    const/16 v0, 0xb5

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oa;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oa;->A01:[Ljava/lang/String;

    const-string v1, "7l6kM9ADseoG9RLfCJpKjz7J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Oa;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x15t
        0x33t
        0x35t
        0x3at
        0x37t
        -0xet
        0x3ft
        0x3bt
        0x45t
        0x45t
        -0xet
        0x38t
        0x41t
        0x44t
        -0xet
        0x38t
        0x3bt
        0x3et
        0x37t
        -0xet
        0x47t
        0x44t
        0x3et
        0xct
        -0xet
        -0x3dt
        -0x1ft
        -0x1dt
        -0x18t
        -0x1bt
        -0x60t
        -0x13t
        -0x17t
        -0xdt
        -0xdt
        -0x60t
        -0x1at
        -0x11t
        -0xet
        -0x60t
        -0x17t
        -0x13t
        -0x1ft
        -0x19t
        -0x1bt
        -0x60t
        -0xbt
        -0xet
        -0x14t
        -0x46t
        -0x60t
        0x21t
        0x25t
        0x30t
        -0x2et
        -0x1t
        -0x1t
        -0x4t
        -0x1t
        -0x53t
        -0x4t
        -0x3t
        -0xet
        -0x5t
        -0xat
        -0x5t
        -0xct
        -0x53t
        -0x10t
        -0x12t
        -0x10t
        -0xbt
        -0xet
        -0xft
        -0x53t
        -0xdt
        -0xat
        -0x7t
        -0xet
        -0x53t
        -0xdt
        -0x4t
        -0x1t
        -0x53t
        0x2t
        -0x1t
        -0x7t
        -0x39t
        -0x53t
        -0x1at
        -0x1et
        -0x1ft
        0x15t
        0x4t
        0x9t
        0x5t
        0xet
        0x3t
        0x5t
        -0x12t
        0x5t
        0x14t
        0x17t
        0xft
        0x12t
        0xbt
        -0x3dt
        -0x41t
        -0x38t
        -0x16t
        -0x19t
        -0x25t
        -0x23t
        -0x15t
        -0x15t
        -0x1ft
        -0x1at
        -0x21t
        -0x68t
        -0x22t
        -0x1ft
        -0x1ct
        -0x23t
        -0x68t
        -0x13t
        -0x16t
        -0x1ct
        -0x4et
        -0x68t
        -0x2t
        0x20t
        0x1dt
        0x11t
        0x13t
        0x21t
        0x21t
        0x17t
        0x1ct
        0x15t
        -0x32t
        0x17t
        0x1bt
        0xft
        0x15t
        0x13t
        -0x32t
        0x23t
        0x20t
        0x1at
        -0x18t
        -0x32t
        -0x7t
        0x1bt
        0x18t
        0xct
        0xet
        0x1ct
        0x1ct
        0x12t
        0x17t
        0x10t
        -0x37t
        0x1ft
        0x12t
        0xdt
        0xet
        0x18t
        -0x37t
        0x1et
        0x1bt
        0x15t
        -0x1dt
        -0x37t
        0x49t
        0x58t
        0x51t
        -0x10t
        -0x5t
        -0x6t
        -0x9t
        -0xft
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 47731
    const/16 v2, 0x33

    const/4 v1, 0x3

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 47732
    .local v0, "e":Lcom/facebook/ads/redexgen/X/7t;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7t;->A03(I)V

    .line 47733
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 47734
    .local v1, "info":Lorg/json/JSONObject;
    const/16 v2, 0xb0

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47735
    const/16 v2, 0xb2

    const/4 v1, 0x3

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47736
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/7t;->A05(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47737
    :catch_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7s;->A12:I

    const/16 v2, 0xad

    const/4 v1, 0x3

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oa;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/7r;->A9D(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 47738
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47739
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oa;->A05(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
