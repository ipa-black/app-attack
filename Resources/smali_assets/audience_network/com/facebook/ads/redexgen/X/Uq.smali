.class public final Lcom/facebook/ads/redexgen/X/Uq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GQ;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/io/InputStream;

.field public A03:Z

.field public final A04:Landroid/content/res/AssetManager;

.field public final A05:Lcom/facebook/ads/redexgen/X/Gt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Uq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 57906
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LZDHzUEPY8huLib8qPH1v7czaaxlCYVW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Hfajs1uaSYD8XiY9EEWii1aSJKbCXH1k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "56ilEDtV1sbTjQDLh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Yd2dmsZ5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tr3yrs0rtPd5aa0L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Zl3VJckSqinxve9JbD33GDfHo4YeuNba"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uq;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gt;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Gt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Gt<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Uq;",
            ">;)V"
        }
    .end annotation

    .line 57907
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Gt;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/AssetDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57908
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A04:Landroid/content/res/AssetManager;

    .line 57909
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uq;->A05:Lcom/facebook/ads/redexgen/X/Gt;

    .line 57910
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uq;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A07:[Ljava/lang/String;

    const-string v1, "kcdTjQCUlglhSnU2yukjc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uq;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x6bt
        -0x63t
        -0x56t
        -0x60t
        -0x52t
        -0x55t
        -0x5bt
        -0x60t
        -0x65t
        -0x63t
        -0x51t
        -0x51t
        -0x5ft
        -0x50t
        0x6bt
    .end array-data
.end method


# virtual methods
.method public final A7w()Landroid/net/Uri;
    .locals 1

    .line 57911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final ADF(Lcom/facebook/ads/redexgen/X/Gb;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GQ;
        }
    .end annotation

    .line 57912
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Landroid/net/Uri;

    .line 57913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 57914
    .local v0, "path":Ljava/lang/String;
    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    .line 57915
    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 57916
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A04:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v3, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    .line 57917
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 57918
    .local v3, "skipped":J
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gb;->A03:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_6

    .line 57919
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 57920
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J

    goto :goto_1

    .line 57921
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57922
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 57923
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J

    .line 57924
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v8, 0x7fffffff

    sget-object v5, Lcom/facebook/ads/redexgen/X/Uq;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v0, 0x12

    if-eq v5, v0, :cond_5

    sget-object v6, Lcom/facebook/ads/redexgen/X/Uq;->A07:[Ljava/lang/String;

    const-string v5, "Oz0AMtwZCktDi2SsP"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    cmp-long v0, v1, v8

    if-nez v0, :cond_3

    .line 57925
    :try_start_1
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57926
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    :cond_3
    :goto_1
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Uq;->A03:Z

    .line 57927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A05:Lcom/facebook/ads/redexgen/X/Gt;

    if-eqz v0, :cond_4

    .line 57928
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gt;->ACq(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Gb;)V

    .line 57929
    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J

    return-wide v0

    .line 57930
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57931
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v3    # "skipped":J
    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .end local p2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57932
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    .restart local p2
    :catch_0
    move-exception v1

    .line 57933
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GQ;
        }
    .end annotation

    .line 57934
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Landroid/net/Uri;

    .line 57935
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 57936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57937
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    .line 57938
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A03:Z

    if-eqz v0, :cond_1

    .line 57939
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Uq;->A03:Z

    .line 57940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A05:Lcom/facebook/ads/redexgen/X/Gt;

    if-eqz v0, :cond_1

    .line 57941
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gt;->ACp(Ljava/lang/Object;)V

    .line 57942
    :cond_1
    return-void

    .line 57943
    :catch_0
    move-exception v1

    .line 57944
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57945
    :catchall_0
    move-exception v1

    .end local v2    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    .line 57946
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A03:Z

    if-eqz v0, :cond_2

    .line 57947
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Uq;->A03:Z

    .line 57948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A05:Lcom/facebook/ads/redexgen/X/Gt;

    if-eqz v0, :cond_2

    .line 57949
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gt;->ACp(Ljava/lang/Object;)V

    .line 57950
    :cond_2
    throw v1
.end method

.method public final read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GQ;
        }
    .end annotation

    .line 57951
    if-nez p3, :cond_0

    .line 57952
    const/4 v0, 0x0

    return v0

    .line 57953
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    .line 57954
    return v4

    .line 57955
    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v2, v0, v8

    if-nez v2, :cond_2

    goto :goto_0

    .line 57956
    :cond_2
    int-to-long v2, p3

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 57957
    .local v0, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A02:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 57958
    .local v0, "bytesRead":I
    if-ne v7, v4, :cond_4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57959
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J

    cmp-long v0, v1, v8

    if-nez v0, :cond_3

    .line 57960
    return v4

    .line 57961
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 57962
    :cond_4
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J

    cmp-long v0, v5, v8

    if-eqz v0, :cond_5

    .line 57963
    int-to-long v3, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uq;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uq;->A07:[Ljava/lang/String;

    const-string v1, "Doxe12teItAf98KBLMhQOs4gzgBHzz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:J

    .line 57964
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A05:Lcom/facebook/ads/redexgen/X/Gt;

    if-eqz v0, :cond_6

    .line 57965
    invoke-interface {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Gt;->AAS(Ljava/lang/Object;I)V

    .line 57966
    :cond_6
    return v7

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57967
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 57968
    .local v0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
