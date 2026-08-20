.class public final Lcom/facebook/ads/redexgen/X/Wc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BF;
.implements Lcom/facebook/ads/redexgen/X/Aw;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/facebook/ads/redexgen/X/B5;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager$Mode;,
        Lcom/facebook/ads/redexgen/X/B6;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/BG;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/BF<",
        "TT;>;",
        "Lcom/facebook/ads/redexgen/X/Aw<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Landroid/os/Looper;

.field public A02:[B

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/B2;

.field public final A05:Lcom/facebook/ads/redexgen/X/BM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BM<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/BQ;

.field public final A07:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Wd<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Wd<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/UUID;

.field public final A0B:Z

.field public volatile A0C:Lcom/facebook/ads/redexgen/X/B5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Wc<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 63827
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ANYLgz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oJggquXjFajkvVakw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NhfBTMehdsUwmjJG25"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fCdIhqwNOTcaInr5tUyGNlroBtV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OEWoY1V4f4faBwRg332bHxVOSHWwx21M"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QEXYlj0kmMt4ztT6jdLWJjem"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2UI8DlmhQXrJ84vyuAUmahlNAt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mJ2nqf9sK7no"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wc;->A03()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    .locals 8

    .line 63828
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 63829
    .local v0, "matchingSchemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;>;"
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    .line 63830
    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v1

    .line 63831
    .local v2, "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/99;->A01:Ljava/util/UUID;

    .line 63832
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/99;->A02:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 63833
    .local v3, "uuidMatches":Z
    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    .line 63834
    :cond_2
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63835
    .end local v2    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    .end local v3    # "uuidMatches":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63836
    .end local v1    # "i":I
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63837
    const/4 v0, 0x0

    return-object v0

    .line 63838
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/99;->A05:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63839
    const/4 v4, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    .line 63840
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    .line 63841
    .local v2, "matchingSchemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    invoke-virtual {v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A01()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CE;->A00([B)I

    move-result v2

    .line 63842
    .local v5, "version":I
    :goto_2
    sget v0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_6

    if-nez v2, :cond_6

    .line 63843
    return-object v3

    .line 63844
    :cond_6
    sget v0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    if-lt v0, v1, :cond_7

    if-ne v2, v5, :cond_7

    .line 63845
    return-object v3

    .line 63846
    .end local v2    # "matchingSchemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    .end local v5    # "version":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63847
    :cond_8
    const/4 v2, -0x1

    goto :goto_2

    .line 63848
    .end local v1    # "i":I
    :cond_9
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const-string v1, "NBGjCtubpQRAXyW4McbyIV8QsblEY4y1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x69

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Wc;)Ljava/util/List;
    .locals 0

    .line 63849
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A09:Ljava/util/List;

    return-object p0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x48t
        0x4bt
        0x4ct
        0x58t
        0x41t
        0x59t
        0x69t
        0x5ft
        0x40t
        0x7et
        0x48t
        0x5et
        0x5et
        0x44t
        0x42t
        0x43t
        0x60t
        0x4at
        0x5ft
        0x35t
        0x3t
        0x1ct
        0x38t
        0x1ft
        0x18t
        0x5t
        0x35t
        0x10t
        0x5t
        0x10t
        0x51t
        0x1et
        0x1ft
        0x1dt
        0x8t
        0x51t
        0x12t
        0x1et
        0x1ft
        0x5t
        0x10t
        0x18t
        0x1ft
        0x2t
        0x51t
        0x12t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ft
        0x51t
        0x21t
        0x22t
        0x22t
        0x39t
        0x51t
        0x22t
        0x12t
        0x19t
        0x14t
        0x1ct
        0x14t
        0x35t
        0x10t
        0x5t
        0x10t
        0x5ft
        0x51t
        0x30t
        0x2t
        0x2t
        0x4t
        0x1ct
        0x18t
        0x1ft
        0x16t
        0x51t
        0x2t
        0x4t
        0x1t
        0x1t
        0x1et
        0x3t
        0x5t
        0x51t
        0x17t
        0x1et
        0x3t
        0x4bt
        0x51t
        0x1ft
        0x1et
        0x1ft
        0x4dt
        0x77t
        0x76t
        0x77t
        0x67t
        0x30t
        0x36t
        0x3dt
        0x30t
        0x62t
        0x64t
        0x6ft
        0x72t
    .end array-data
.end method


# virtual methods
.method public final A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B3;)V
    .locals 1

    .line 63850
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wc;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A04:Lcom/facebook/ads/redexgen/X/B2;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/B2;->A03(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B3;)V

    .line 63851
    return-void
.end method

.method public final A2Q(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/BE;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;",
            ")",
            "Lcom/facebook/ads/redexgen/X/BE<",
            "TT;>;"
        }
    .end annotation

    .line 63852
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Wc;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager<TT;>;"
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A01:Landroid/os/Looper;

    const/4 v1, 0x0

    move-object/from16 v14, p1

    if-eqz v0, :cond_0

    if-ne v0, v14, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 63853
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63854
    iput-object v14, v3, Lcom/facebook/ads/redexgen/X/Wc;->A01:Landroid/os/Looper;

    .line 63855
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0C:Lcom/facebook/ads/redexgen/X/B5;

    if-nez v0, :cond_1

    .line 63856
    new-instance v0, Lcom/facebook/ads/redexgen/X/B5;

    invoke-direct {v0, v3, v14}, Lcom/facebook/ads/redexgen/X/B5;-><init>(Lcom/facebook/ads/redexgen/X/Wc;Landroid/os/Looper;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0C:Lcom/facebook/ads/redexgen/X/B5;

    .line 63857
    :cond_1
    const/4 v9, 0x0

    .line 63858
    .local v0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A02:[B

    const/4 v5, 0x0

    if-nez v0, :cond_3

    .line 63859
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Ljava/util/UUID;

    move-object/from16 v2, p2

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wc;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v9

    .line 63860
    if-nez v9, :cond_3

    .line 63861
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Ljava/util/UUID;

    new-instance v2, Lcom/facebook/ads/redexgen/X/B6;

    invoke-direct {v2, v0, v5}, Lcom/facebook/ads/redexgen/X/B6;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/B4;)V

    .line 63862
    .local v1, "error":Lcom/facebook/ads/redexgen/X/B6;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:Lcom/facebook/ads/redexgen/X/B2;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/B2;->A04(Ljava/lang/Exception;)V

    .line 63863
    new-instance v1, Lcom/facebook/ads/redexgen/X/BC;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/BC;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Wb;-><init>(Lcom/facebook/ads/redexgen/X/BC;)V

    return-object v0

    .line 63864
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 63865
    .end local v0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    .local v15, "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    :cond_3
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0B:Z

    if-nez v0, :cond_6

    .line 63866
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63867
    .end local v0
    .end local v1    # "error":Lcom/facebook/ads/redexgen/X/B6;
    .local v16, "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    :goto_1
    if-nez v5, :cond_4

    .line 63868
    new-instance v5, Lcom/facebook/ads/redexgen/X/Wd;

    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Ljava/util/UUID;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:Lcom/facebook/ads/redexgen/X/BM;

    iget v10, v3, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    iget-object v11, v3, Lcom/facebook/ads/redexgen/X/Wc;->A02:[B

    iget-object v12, v3, Lcom/facebook/ads/redexgen/X/Wc;->A07:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/Wc;->A06:Lcom/facebook/ads/redexgen/X/BQ;

    iget-object v15, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:Lcom/facebook/ads/redexgen/X/B2;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    move-object/from16 v8, p0

    move/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/BM;Lcom/facebook/ads/redexgen/X/Aw;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;I[BLjava/util/HashMap;Lcom/facebook/ads/redexgen/X/BQ;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/B2;I)V

    .line 63869
    .end local v16    # "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    .restart local v0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A09:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63870
    .end local v0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    .restart local v16    # "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Wd;->A0G()V

    .line 63871
    return-object v5

    .line 63872
    :cond_5
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A09:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Wd;

    goto :goto_1

    .line 63873
    .end local v0
    :cond_6
    const/4 v4, 0x0

    .line 63874
    .restart local v0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    if-eqz v9, :cond_7

    iget-object v5, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_a

    .line 63875
    .local v1, "initData":[B
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const-string v1, "zebyso9QALf6mFi2tznux8P"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Wd;

    .line 63876
    .local v3, "existingSession":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/Wd;->A0M([B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 63877
    move-object v5, v1

    goto :goto_1

    .line 63878
    :cond_9
    move-object v5, v4

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A3y(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z
    .locals 6
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63879
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wc;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A02:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 63880
    return v3

    .line 63881
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Ljava/util/UUID;

    invoke-static {p1, v0, v3}, Lcom/facebook/ads/redexgen/X/Wc;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v0

    .line 63882
    .local v0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 63883
    iget v5, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const-string v1, "Gq1nb8ZpgvmUzJpUyLgmbdlX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zEBygY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_8

    invoke-virtual {p1, v4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/99;->A02:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 63884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x48

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Ljava/util/UUID;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63885
    :cond_1
    iget-object v5, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A02:Ljava/lang/String;

    .line 63886
    .local v3, "schemeType":Ljava/lang/String;
    if-eqz v5, :cond_2

    const/16 v2, 0x64

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63887
    :cond_2
    return v3

    .line 63888
    :cond_3
    const/16 v2, 0x5c

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63889
    const/16 v2, 0x60

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63890
    const/16 v2, 0x68

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const-string v1, "bzvSTEO2NGjBPpa5noKORqr6ZpHh1m8T"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63891
    :cond_4
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x19

    if-lt v1, v0, :cond_5

    :goto_1
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 63892
    :cond_7
    return v3

    .line 63893
    :cond_8
    return v4

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACE()V
    .locals 5

    .line 63894
    .local v2, "this":Lcom/facebook/ads/redexgen/X/Wc;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const-string v1, "E3b0MKGlV7Qlh8NFsi3ziriRt4u9XqXm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Wd;

    .line 63895
    .local v1, "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wd;->A0H()V

    .line 63896
    .end local v1    # "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63897
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63898
    return-void
.end method

.method public final ACF(Ljava/lang/Exception;)V
    .locals 2

    .line 63899
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wc;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wd;

    .line 63900
    .local v1, "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wd;->A0K(Ljava/lang/Exception;)V

    .line 63901
    .end local v1    # "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 63902
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63903
    return-void
.end method

.method public final ADi(Lcom/facebook/ads/redexgen/X/Wd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wd<",
            "TT;>;)V"
        }
    .end annotation

    .line 63904
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Wc;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager<TT;>;"
    .local p1, "session":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 63906
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wd;->A0I()V

    .line 63907
    :cond_0
    return-void
.end method

.method public final AEA(Lcom/facebook/ads/redexgen/X/BE;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BE<",
            "TT;>;)V"
        }
    .end annotation

    .line 63908
    .local v4, "this":Lcom/facebook/ads/redexgen/X/Wc;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager<TT;>;"
    .local p0, "session":Lcom/facebook/ads/redexgen/X/BE;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSession<TT;>;"
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Wb;

    if-eqz v0, :cond_0

    .line 63909
    return-void

    .line 63910
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/Wd;

    .line 63911
    .local v0, "drmSession":Lcom/facebook/ads/redexgen/X/Wd;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wd;->A0L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A09:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 63914
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0E:[Ljava/lang/String;

    const-string v1, "8HEKS9j6P5APhESSR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "SFo7ZRHt72jFDiQQTk8v57UjUPr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A0I()V

    .line 63915
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63916
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
