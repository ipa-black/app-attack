.class public final Lcom/facebook/ads/redexgen/X/Br;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Track"
.end annotation


# static fields
.field public static A0h:[B

.field public static A0i:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:F

.field public A05:F

.field public A06:F

.field public A07:F

.field public A08:F

.field public A09:F

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:I

.field public A0J:I

.field public A0K:I

.field public A0L:I

.field public A0M:I

.field public A0N:I

.field public A0O:I

.field public A0P:I

.field public A0Q:I

.field public A0R:I

.field public A0S:J

.field public A0T:J

.field public A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

.field public A0V:Lcom/facebook/ads/redexgen/X/Bg;

.field public A0W:Lcom/facebook/ads/redexgen/X/Bh;

.field public A0X:Lcom/facebook/ads/redexgen/X/Bs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0Y:Ljava/lang/String;

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:[B

.field public A0e:[B

.field public A0f:[B

.field public A0g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 23997
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IyltKROI0dONAvxCzSFxMMbap986o"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mujPYAYhkPmTBtOccd1mpeNR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0Po3ACznS97z3RfgrsPeIGcIu3WtX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Uu0n9DuNw1LDS1xbXky22YF4xgkhplY6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LMa7o3DPVrMB0USQzYMxMUIDtj36p7Zv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YQocGDdhEprGCVrh1x2f0Ac7ybbPw1BN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b3mlxzrKdW1g7zcxBPM3qbO1DSwndDSh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ser"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Br;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 23998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23999
    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0R:I

    .line 24000
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0J:I

    .line 24001
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0I:I

    .line 24002
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0G:I

    .line 24003
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Br;->A0H:I

    .line 24004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0e:[B

    .line 24005
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0P:I

    .line 24006
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Br;->A0b:Z

    .line 24007
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0D:I

    .line 24008
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0E:I

    .line 24009
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0C:I

    .line 24010
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0K:I

    .line 24011
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0L:I

    .line 24012
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A06:F

    .line 24013
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A07:F

    .line 24014
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A04:F

    .line 24015
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A05:F

    .line 24016
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A02:F

    .line 24017
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A03:F

    .line 24018
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A08:F

    .line 24019
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A09:F

    .line 24020
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:F

    .line 24021
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A01:F

    .line 24022
    const/4 v2, 0x1

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Br;->A0B:I

    .line 24023
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Br;->A0A:I

    .line 24024
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0O:I

    .line 24025
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0S:J

    .line 24026
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0T:J

    .line 24027
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Br;->A0Z:Z

    .line 24028
    const/16 v2, 0x364

    const/4 v1, 0x3

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/WK;)V
    .locals 0

    .line 24029
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Br;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hc;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 24030
    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 24031
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0K()J

    move-result-wide v5

    .line 24032
    .local v0, "compression":J
    const-wide/32 v1, 0x58564944

    const/4 v4, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    .line 24033
    const/16 v2, 0x371

    const/16 v1, 0xa

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 24034
    :cond_0
    const-wide/32 v1, 0x31435657

    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    .line 24035
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    add-int/lit8 v3, v0, 0x14

    .line 24036
    .local v2, "startOffset":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 24037
    .local v3, "bufferData":[B
    .local v4, "offset":I
    :goto_0
    array-length v0, v2

    add-int/lit8 v0, v0, -0x4

    if-ge v3, v0, :cond_2

    .line 24038
    aget-byte v0, v2, v3

    if-nez v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v3, 0x2

    aget-byte v1, v2, v0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v3, 0x3

    aget-byte v1, v2, v0

    const/16 v0, 0xf

    if-ne v1, v0, :cond_1

    .line 24039
    array-length v0, v2

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 24040
    .local v5, "initializationData":[B
    const/16 v2, 0x3a6

    const/16 v1, 0xa

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 24041
    .end local v5    # "initializationData":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24042
    :goto_1
    return-object v0

    .line 24043
    :cond_2
    const/16 v2, 0xee

    const/16 v1, 0x2d

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    .end local p2
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24044
    .end local v0    # "compression":J
    .end local v2    # "startOffset":I
    .end local v3    # "bufferData":[B
    .restart local p2
    :cond_3
    const/16 v2, 0x11b

    const/16 v1, 0x11

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1a3

    const/16 v1, 0x33

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24045
    const/16 v2, 0x3b0

    const/16 v1, 0xf

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 24046
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_0
    const/16 v2, 0x89

    const/16 v1, 0x21

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Br;->A0h:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v1, "YLAPK4AntFjLAXIjsqe57SorlZ7T8mVd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

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

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Br;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24047
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Br;->A0g:Ljava/lang/String;

    return-object p1
.end method

.method public static A03([B)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 24048
    const/16 v2, 0xcc

    const/16 v1, 0x22

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :try_start_0
    aget-byte v0, p0, v6

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    .line 24049
    const/4 v1, 0x1

    .line 24050
    .local v2, "offset":I
    move v8, v6

    .line 24051
    .local v4, "vorbisInfoLength":I
    :goto_0
    aget-byte v0, p0, v1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 24052
    add-int/lit16 v8, v8, 0xff

    .line 24053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24054
    :cond_0
    add-int/lit8 v9, v1, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    aget-byte v0, p0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v8, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_1

    .line 24055
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24056
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v1, "t9W1bu55HCX38CTD9AnwpVMfQcluPXu3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    move v7, v6

    .line 24057
    .local v2, "vorbisSkipLength":I
    :goto_1
    :try_start_1
    aget-byte v0, p0, v9

    if-ne v0, v4, :cond_2

    .line 24058
    add-int/lit16 v7, v7, 0xff

    .line 24059
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 24060
    :cond_2
    add-int/lit8 v4, v9, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v0, p0, v9

    add-int/2addr v7, v0

    .line 24061
    aget-byte v1, p0, v4

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    .line 24062
    new-array v2, v8, [B

    .line 24063
    .local v5, "vorbisInfo":[B
    invoke-static {p0, v4, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24064
    add-int/2addr v4, v8

    .line 24065
    aget-byte v1, p0, v4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 24066
    add-int/2addr v4, v7

    .line 24067
    aget-byte v1, p0, v4

    const/4 v0, 0x5

    if-ne v1, v0, :cond_3

    .line 24068
    array-length v0, p0

    sub-int/2addr v0, v4

    new-array v1, v0, [B

    .line 24069
    .local v7, "vorbisBooks":[B
    array-length v0, p0

    sub-int/2addr v0, v4

    invoke-static {p0, v4, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 24071
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24072
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24073
    return-object v0

    .line 24074
    .end local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "vorbisBooks":[B
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    .end local v9
    throw v0

    .line 24075
    .restart local v9
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    .end local v9
    throw v0

    .line 24076
    .end local v5    # "vorbisInfo":[B
    .restart local v9
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    .end local v9
    throw v0

    .line 24077
    .end local v2    # "vorbisSkipLength":I
    .end local v4    # "vorbisInfoLength":I
    .end local v6    # "offset":I
    .restart local v9
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    .end local v9
    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24078
    .restart local v9
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x3e5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Br;->A0h:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x26t
        0x55t
        0x63t
        0x72t
        0x72t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x6bt
        0x6ft
        0x6bt
        0x63t
        0x52t
        0x7ft
        0x76t
        0x63t
        0x26t
        0x72t
        0x69t
        0x26t
        0x11t
        0xft
        0x11t
        0x11t
        0x13t
        0x40t
        0x5et
        0x40t
        0x42t
        0x32t
        0x67t
        0x79t
        0x62t
        0x72t
        0x75t
        0x52t
        0x4ct
        0x57t
        0x47t
        0x40t
        0x3ct
        0x56t
        0x4bt
        0x43t
        0x41t
        0x56t
        0x40t
        0x40t
        0x38t
        0x26t
        0x3dt
        0x2dt
        0x2at
        0x56t
        0x35t
        0x36t
        0x2at
        0x2at
        0x35t
        0x3ct
        0x2at
        0x2at
        0x12t
        0xct
        0x16t
        0x12t
        0x10t
        0x60t
        0x7dt
        0x63t
        0x7at
        0x70t
        0x7dt
        0x7ft
        0x3bt
        0x25t
        0x37t
        0x2at
        0x3ft
        0x3dt
        0x55t
        0x36t
        0x48t
        0x17t
        0x9t
        0x1bt
        0x6t
        0x13t
        0x11t
        0x79t
        0x1at
        0x65t
        0x43t
        0x5dt
        0x4ft
        0x51t
        0x2dt
        0x43t
        0x41t
        0x4ft
        0x65t
        0x7bt
        0x6bt
        0x74t
        0x71t
        0x77t
        0x53t
        0x4dt
        0x42t
        0x51t
        0x5ft
        0x3dt
        0x5bt
        0x5ct
        0x46t
        0x3dt
        0x5et
        0x5bt
        0x46t
        0x4bt
        0x55t
        0x5et
        0x58t
        0x5ft
        0x4ft
        0x42t
        0x4et
        0x11t
        0xft
        0x6t
        0x1ft
        0x2t
        0x12t
        0x19t
        0x3t
        0x43t
        0x74t
        0x74t
        0x69t
        0x74t
        0x26t
        0x76t
        0x67t
        0x74t
        0x75t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x40t
        0x69t
        0x73t
        0x74t
        0x45t
        0x45t
        0x26t
        0x76t
        0x74t
        0x6ft
        0x70t
        0x67t
        0x72t
        0x63t
        0x26t
        0x62t
        0x67t
        0x72t
        0x67t
        0x5dt
        0x6at
        0x6at
        0x77t
        0x6at
        0x38t
        0x68t
        0x79t
        0x6at
        0x6bt
        0x71t
        0x76t
        0x7ft
        0x38t
        0x55t
        0x4bt
        0x37t
        0x59t
        0x5bt
        0x55t
        0x38t
        0x7bt
        0x77t
        0x7ct
        0x7dt
        0x7bt
        0x38t
        0x68t
        0x6at
        0x71t
        0x6et
        0x79t
        0x6ct
        0x7dt
        0x75t
        0x42t
        0x42t
        0x5ft
        0x42t
        0x10t
        0x40t
        0x51t
        0x42t
        0x43t
        0x59t
        0x5et
        0x57t
        0x10t
        0x46t
        0x5ft
        0x42t
        0x52t
        0x59t
        0x43t
        0x10t
        0x53t
        0x5ft
        0x54t
        0x55t
        0x53t
        0x10t
        0x40t
        0x42t
        0x59t
        0x46t
        0x51t
        0x44t
        0x55t
        0x15t
        0x32t
        0x3at
        0x3ft
        0x36t
        0x37t
        0x73t
        0x27t
        0x3ct
        0x73t
        0x35t
        0x3at
        0x3dt
        0x37t
        0x73t
        0x15t
        0x3ct
        0x26t
        0x21t
        0x10t
        0x10t
        0x73t
        0x5t
        0x10t
        0x62t
        0x73t
        0x3at
        0x3dt
        0x3at
        0x27t
        0x3at
        0x32t
        0x3ft
        0x3at
        0x29t
        0x32t
        0x27t
        0x3at
        0x3ct
        0x3dt
        0x73t
        0x37t
        0x32t
        0x27t
        0x32t
        0x45t
        0x69t
        0x7ct
        0x7at
        0x67t
        0x7bt
        0x63t
        0x69t
        0x4dt
        0x70t
        0x7ct
        0x7at
        0x69t
        0x6bt
        0x7ct
        0x67t
        0x7at
        0x0t
        0x21t
        0x20t
        0x63t
        0x1et
        0xdt
        0x3t
        0x6et
        0x3t
        0x1dt
        0x61t
        0xft
        0xdt
        0x3t
        0x6et
        0x27t
        0x3dt
        0x6et
        0x3bt
        0x20t
        0x3dt
        0x3bt
        0x3et
        0x3et
        0x21t
        0x3ct
        0x3at
        0x2bt
        0x2at
        0x60t
        0x6et
        0x1dt
        0x2bt
        0x3at
        0x3at
        0x27t
        0x20t
        0x29t
        0x6et
        0x23t
        0x27t
        0x23t
        0x2bt
        0x1at
        0x37t
        0x3et
        0x2bt
        0x6et
        0x3at
        0x21t
        0x6et
        0x7et
        0x72t
        0x69t
        0x7bt
        0x6ft
        0x7et
        0x78t
        0x6ft
        0x2et
        0x22t
        0x35t
        0x39t
        0x30t
        0x2bt
        0x52t
        0x2dt
        0x3at
        0x2et
        0x52t
        0x5et
        0x55t
        0x44t
        0x59t
        0x55t
        0x2et
        0x40t
        0x52t
        0x52t
        0x30t
        0x3ct
        0x37t
        0x26t
        0x3bt
        0x37t
        0x4ct
        0x36t
        0x37t
        0x25t
        0x5bt
        0x12t
        0x1et
        0x17t
        0xet
        0x3t
        0x12t
        0x14t
        0x3t
        0x35t
        0xet
        0x5t
        0x18t
        0x10t
        0x5t
        0x3t
        0x14t
        0x5t
        0x4t
        0x40t
        0x2dt
        0x29t
        0x2dt
        0x25t
        0x40t
        0x14t
        0x19t
        0x10t
        0x5t
        0x4et
        0x70t
        0x4bt
        0x4et
        0x4bt
        0x4at
        0x52t
        0x4bt
        0x5t
        0x63t
        0x4at
        0x50t
        0x57t
        0x66t
        0x66t
        0xbt
        0x5t
        0x76t
        0x40t
        0x51t
        0x51t
        0x4ct
        0x4bt
        0x42t
        0x5t
        0x48t
        0x4ct
        0x48t
        0x40t
        0x71t
        0x5ct
        0x55t
        0x40t
        0x5t
        0x51t
        0x4at
        0x5t
        0x53t
        0x4ct
        0x41t
        0x40t
        0x4at
        0xat
        0x5dt
        0x8t
        0x50t
        0x4bt
        0x4et
        0x4bt
        0x4at
        0x52t
        0x4bt
        0x13t
        0x28t
        0x34t
        0x23t
        0x25t
        0x29t
        0x21t
        0x28t
        0x2ft
        0x3ct
        0x23t
        0x22t
        0x66t
        0x25t
        0x29t
        0x22t
        0x23t
        0x25t
        0x66t
        0x2ft
        0x22t
        0x23t
        0x28t
        0x32t
        0x2ft
        0x20t
        0x2ft
        0x23t
        0x34t
        0x68t
        0x78t
        0x43t
        0x5et
        0x58t
        0x5dt
        0x5dt
        0x42t
        0x5ft
        0x59t
        0x48t
        0x49t
        0xdt
        0x7dt
        0x6et
        0x60t
        0xdt
        0x4ft
        0x44t
        0x59t
        0xdt
        0x49t
        0x48t
        0x5dt
        0x59t
        0x45t
        0x17t
        0xdt
        0x22t
        0x2bt
        0x39t
        0x24t
        0x31t
        0x33t
        0x46t
        0x3ct
        0x35t
        0x27t
        0x3at
        0x2ft
        0x2dt
        0x5et
        0x45t
        0x23t
        0x39t
        0x25t
        0x45t
        0x2bt
        0x3at
        0x2ft
        0x26t
        0x34t
        0x29t
        0x3ct
        0x3et
        0x4dt
        0x56t
        0x30t
        0x2at
        0x36t
        0x56t
        0x38t
        0x2at
        0x29t
        0x74t
        0x7dt
        0x6ft
        0x72t
        0x67t
        0x65t
        0x16t
        0xdt
        0x6bt
        0x71t
        0x6dt
        0xdt
        0x63t
        0x74t
        0x61t
        0x66t
        0x6ft
        0x7dt
        0x60t
        0x75t
        0x77t
        0x4t
        0x1ft
        0x79t
        0x63t
        0x7ft
        0x1ft
        0x63t
        0x60t
        0x6ct
        0x65t
        0x77t
        0x6at
        0x7ft
        0x7dt
        0x72t
        0x15t
        0x73t
        0x69t
        0x75t
        0x15t
        0x72t
        0x7ft
        0x6ct
        0x79t
        0x7bt
        0x72t
        0x60t
        0x7et
        0x2t
        0x7bt
        0x6bt
        0x7at
        0x2t
        0x6bt
        0x62t
        0x78t
        0x7ft
        0x6et
        0x6et
        0x5et
        0x57t
        0x5ct
        0x40t
        0x4dt
        0x47t
        0x5at
        0x49t
        0xet
        0x7t
        0xet
        0x8t
        0x60t
        0x6dt
        0x64t
        0x6dt
        0x6bt
        0x2t
        0x59t
        0x48t
        0x48t
        0x54t
        0x51t
        0x5bt
        0x59t
        0x4ct
        0x51t
        0x57t
        0x56t
        0x17t
        0x5ct
        0x4et
        0x5at
        0x4bt
        0x4dt
        0x5at
        0x4bt
        0x7ct
        0x6dt
        0x6dt
        0x71t
        0x74t
        0x7et
        0x7ct
        0x69t
        0x74t
        0x72t
        0x73t
        0x32t
        0x6dt
        0x7at
        0x6et
        0x1ft
        0xet
        0xet
        0x12t
        0x17t
        0x1dt
        0x1ft
        0xat
        0x17t
        0x11t
        0x10t
        0x51t
        0x8t
        0x11t
        0x1ct
        0xdt
        0xbt
        0x1ct
        0x10t
        0x1t
        0x1t
        0x1dt
        0x18t
        0x12t
        0x10t
        0x5t
        0x18t
        0x1et
        0x1ft
        0x5et
        0x9t
        0x5ct
        0x2t
        0x4t
        0x13t
        0x3t
        0x18t
        0x1t
        0x73t
        0x67t
        0x76t
        0x7bt
        0x7dt
        0x3dt
        0x73t
        0x71t
        0x21t
        0x17t
        0x3t
        0x12t
        0x1ft
        0x19t
        0x59t
        0x13t
        0x17t
        0x15t
        0x45t
        0x53t
        0x47t
        0x56t
        0x5bt
        0x5dt
        0x1dt
        0x54t
        0x5et
        0x53t
        0x51t
        0x76t
        0x62t
        0x73t
        0x7et
        0x78t
        0x38t
        0x7at
        0x67t
        0x23t
        0x76t
        0x3at
        0x7bt
        0x76t
        0x63t
        0x7at
        0x12t
        0x6t
        0x17t
        0x1at
        0x1ct
        0x5ct
        0x1et
        0x3t
        0x16t
        0x14t
        0x46t
        0x52t
        0x43t
        0x4et
        0x48t
        0x8t
        0x4at
        0x57t
        0x42t
        0x40t
        0xat
        0x6bt
        0x15t
        0x44t
        0x50t
        0x41t
        0x4ct
        0x4at
        0xat
        0x4at
        0x55t
        0x50t
        0x56t
        0x25t
        0x31t
        0x20t
        0x2dt
        0x2bt
        0x6bt
        0x36t
        0x25t
        0x33t
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x37t
        0x31t
        0x36t
        0x26t
        0x6et
        0x2bt
        0x27t
        0x3t
        0x17t
        0x6t
        0xbt
        0xdt
        0x4dt
        0x14t
        0xct
        0x6t
        0x4ct
        0x6t
        0x16t
        0x11t
        0x7bt
        0x6ft
        0x7et
        0x73t
        0x75t
        0x35t
        0x6ct
        0x74t
        0x7et
        0x34t
        0x7et
        0x6et
        0x69t
        0x34t
        0x72t
        0x7et
        0x78t
        0x6ct
        0x7dt
        0x70t
        0x76t
        0x36t
        0x6ft
        0x76t
        0x6bt
        0x7bt
        0x70t
        0x6at
        0x65t
        0x71t
        0x60t
        0x6dt
        0x6bt
        0x2bt
        0x7ct
        0x29t
        0x71t
        0x6at
        0x6ft
        0x6at
        0x6bt
        0x73t
        0x6at
        0x5t
        0xet
        0x7t
        0x7dt
        0x6ct
        0x71t
        0x7dt
        0x26t
        0x71t
        0x24t
        0x7at
        0x7at
        0x68t
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x14t
        0x8t
        0x5ct
        0x4bt
        0x4bt
        0x16t
        0x9t
        0x4t
        0x5t
        0xft
        0x4ft
        0x1t
        0x16t
        0x3t
        0x79t
        0x66t
        0x6bt
        0x6at
        0x60t
        0x20t
        0x67t
        0x6at
        0x79t
        0x6ct
        0x68t
        0x77t
        0x7at
        0x7bt
        0x71t
        0x31t
        0x73t
        0x6et
        0x2at
        0x68t
        0x33t
        0x7bt
        0x6dt
        0x67t
        0x78t
        0x75t
        0x74t
        0x7et
        0x3et
        0x7ct
        0x61t
        0x74t
        0x76t
        0x23t
        0x1t
        0x1et
        0x13t
        0x12t
        0x18t
        0x58t
        0x0t
        0x1t
        0x14t
        0x46t
        0x1bt
        0x4t
        0x9t
        0x8t
        0x2t
        0x42t
        0x15t
        0x40t
        0x18t
        0x3t
        0x6t
        0x3t
        0x2t
        0x1at
        0x3t
        0x45t
        0x5at
        0x57t
        0x56t
        0x5ct
        0x1ct
        0x4bt
        0x1et
        0x45t
        0x5dt
        0x57t
        0x1dt
        0x5ct
        0x5dt
        0x1t
        0x1dt
        0x45t
        0x43t
        0xbt
        0x6dt
        0x72t
        0x7ft
        0x7et
        0x74t
        0x34t
        0x63t
        0x36t
        0x6dt
        0x75t
        0x7ft
        0x35t
        0x74t
        0x75t
        0x29t
        0x35t
        0x6dt
        0x6bt
        0x22t
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hc;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 24079
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0C()I

    move-result v2

    .line 24080
    .local v0, "formatTag":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 24081
    return v5

    .line 24082
    :cond_0
    const v1, 0xfffe

    const/4 v0, 0x0

    if-ne v2, v1, :cond_3

    .line 24083
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 24084
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0L()J

    move-result-wide v6

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WI;->A04()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    cmp-long v3, v6, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v1, "mXDtn5ZrlLpOkU84k9DC3Hi3Pcorcpog"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 24085
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0L()J

    move-result-wide v3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WI;->A04()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 24086
    :goto_0
    return v5

    .line 24087
    :cond_3
    return v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24088
    .end local v0    # "formatTag":I
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_0
    const/16 v2, 0xaa

    const/16 v1, 0x22

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A06()[B
    .locals 5

    .line 24089
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A06:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A07:F

    cmpl-float v3, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v1, "PBvrZHKgmU2uAVRQDCT9n0bIRHOqM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "guZt3O6voa6ads6nTVRQaZ05"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A04:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A05:F

    cmpl-float v3, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v1, "PayVPjYQSmFvrGG0qfp7CT6HXa6Ad"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9Xa9tASZMquPJJBB3AwdoWSz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A02:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A03:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A08:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A09:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A01:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    .line 24090
    .end local v0
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    if-eqz v3, :cond_0

    goto :goto_0

    .line 24091
    :cond_2
    const/16 v0, 0x19

    new-array v2, v0, [B

    .line 24092
    .local v0, "hdrStaticInfoData":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24093
    .local v1, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24094
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A06:F

    const v4, 0x47435000    # 50000.0f

    mul-float/2addr v0, v4

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24095
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A07:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24096
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A04:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24097
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A05:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24098
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A02:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24099
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A03:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24100
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A08:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24101
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A09:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24102
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24103
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A01:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24104
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0K:I

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24105
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0L:I

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24106
    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 24107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0X:Lcom/facebook/ads/redexgen/X/Bs;

    if-eqz v0, :cond_0

    .line 24108
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Bs;->A02(Lcom/facebook/ads/redexgen/X/Br;)V

    .line 24109
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 24110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A0X:Lcom/facebook/ads/redexgen/X/Bs;

    if-eqz v0, :cond_0

    .line 24111
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A00()V

    .line 24112
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/BX;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 24113
    move-object/from16 v0, p0

    const/16 v18, -0x1

    .line 24114
    .local v1, "maxInputSize":I
    const/16 v21, -0x1

    .line 24115
    .local v2, "pcmEncoding":I
    const/4 v1, 0x0

    .line 24116
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Br;->A0Y:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v10, 0x4

    const/4 v14, 0x1

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    const/4 v11, -0x1

    :goto_0
    const/4 v5, 0x0

    const/16 v3, 0x16

    const/16 v2, 0xe

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x1f4

    const/16 v3, 0x1b

    const/16 v2, 0x25

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v9

    const/16 v5, 0x11b

    const/16 v3, 0x11

    const/4 v2, 0x0

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v5

    packed-switch v11, :pswitch_data_0

    .line 24117
    const/16 v2, 0x1d6

    const/16 v1, 0x1e

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24118
    :sswitch_0
    const/16 v5, 0x216

    const/16 v3, 0xe

    const/16 v2, 0x62

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x5

    goto :goto_0

    :sswitch_1
    const/16 v5, 0x242

    const/16 v3, 0xe

    const/16 v2, 0x38

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x5e

    const/16 v3, 0x8

    const/16 v2, 0xa

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x16

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x79

    const/16 v3, 0x8

    const/4 v2, 0x2

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x11

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x81

    const/16 v3, 0x8

    const/16 v2, 0x58

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0xa

    goto/16 :goto_0

    :sswitch_5
    const/16 v5, 0x4c

    const/16 v3, 0x9

    const/16 v2, 0x72

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0xd

    goto/16 :goto_0

    :sswitch_6
    const/16 v11, 0x55

    const/16 v8, 0x9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x62

    if-eq v3, v2, :cond_8

    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "lj2708m8DSZ56OFNAm0jUDGm9wwmbf0x"

    const/4 v2, 0x4

    aput-object v3, v5, v2

    const/16 v2, 0x5e

    invoke-static {v11, v8, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0xe

    goto/16 :goto_0

    :sswitch_7
    const/16 v5, 0x260

    const/16 v3, 0xf

    const/16 v2, 0x25

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x8

    goto/16 :goto_0

    :sswitch_8
    const/16 v5, 0x15f

    const/16 v3, 0x8

    const/16 v2, 0x25

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x1c

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x224

    const/16 v3, 0xf

    const/16 v2, 0x71

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x4

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x233

    const/16 v3, 0xf

    const/16 v2, 0x2a

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x6

    goto/16 :goto_0

    :sswitch_b
    const/16 v8, 0x186

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x1d

    if-eq v3, v2, :cond_1

    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "vEE"

    const/4 v2, 0x7

    aput-object v3, v5, v2

    const/4 v3, 0x4

    const/16 v2, 0x2b

    invoke-static {v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    const/16 v11, 0x1a

    goto/16 :goto_0

    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "SYIYHMyih1uemhdUYVzoThHC3QoTm"

    const/4 v2, 0x0

    aput-object v3, v5, v2

    const/16 v3, 0x8

    const/16 v2, 0x49

    invoke-static {v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_c
    const/16 v5, 0x32

    const/16 v3, 0xe

    const/16 v2, 0x71

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x14

    goto/16 :goto_0

    :sswitch_d
    const/16 v5, 0x16

    const/4 v3, 0x5

    const/16 v2, 0x58

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0xc

    goto/16 :goto_0

    :sswitch_e
    const/16 v5, 0x1b

    const/4 v3, 0x5

    const/16 v2, 0x9

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0xf

    goto/16 :goto_0

    :sswitch_f
    const/16 v5, 0x20

    const/4 v3, 0x5

    const/16 v2, 0x2e

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x12

    goto/16 :goto_0

    :sswitch_10
    const/16 v8, 0x277

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x71

    if-eq v3, v2, :cond_9

    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "CR6OK91rhuXJFTQTLvIAM6wWnIpoxm4Q"

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const/4 v3, 0x5

    const/16 v2, 0x50

    invoke-static {v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x0

    goto/16 :goto_0

    :sswitch_11
    const/16 v5, 0x27c

    const/4 v3, 0x5

    const/16 v2, 0x33

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_12
    const/16 v5, 0x167

    const/16 v3, 0xa

    const/16 v2, 0x75

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x1b

    goto/16 :goto_0

    :sswitch_13
    const/16 v5, 0x26f

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x9

    goto/16 :goto_0

    :sswitch_14
    const/16 v5, 0x25

    const/16 v3, 0xd

    const/16 v2, 0x1b

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x13

    goto/16 :goto_0

    :sswitch_15
    const/16 v5, 0x6c

    const/16 v3, 0xd

    const/16 v2, 0x1a

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x17

    goto/16 :goto_0

    :sswitch_16
    const/16 v5, 0x171

    const/16 v3, 0xa

    const/16 v2, 0x9

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x19

    goto/16 :goto_0

    :sswitch_17
    const/16 v5, 0x250

    const/16 v3, 0x10

    const/16 v2, 0x32

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v11, 0x7

    goto/16 :goto_0

    :sswitch_18
    const/16 v11, 0x17b

    const/16 v8, 0xb

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x62

    if-eq v3, v2, :cond_2

    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "cIcBxRlZY0ZXlCQFScV8XwSctWW1h0n"

    const/4 v2, 0x7

    aput-object v3, v5, v2

    const/16 v2, 0x6b

    invoke-static {v11, v8, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_2
    const/16 v11, 0x18

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x6b

    invoke-static {v11, v8, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :sswitch_19
    const/16 v5, 0x20f

    const/4 v3, 0x7

    const/16 v2, 0x7c

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x6

    if-eq v3, v2, :cond_a

    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "RAsWyGWBf1DxyJ7dKVHy7J0fVhRQMjXs"

    const/4 v2, 0x6

    aput-object v3, v5, v2

    if-eqz v8, :cond_0

    const/4 v11, 0x2

    goto/16 :goto_0

    :sswitch_1a
    const/16 v5, 0x40

    const/4 v3, 0x6

    const/16 v2, 0x5b

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x10

    goto/16 :goto_0

    :sswitch_1b
    const/16 v5, 0x46

    const/4 v3, 0x6

    const/16 v2, 0x34

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0x15

    goto/16 :goto_0

    :sswitch_1c
    const/16 v11, 0x66

    const/4 v8, 0x6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x71

    if-eq v3, v2, :cond_a

    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "kB7v"

    const/4 v2, 0x7

    aput-object v3, v5, v2

    const/16 v2, 0x2c

    invoke-static {v11, v8, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v11, 0xb

    goto/16 :goto_0

    .line 24119
    .end local v4
    :pswitch_0
    const/16 v4, 0x3bf

    const/16 v3, 0x13

    const/16 v2, 0x3b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24120
    .restart local v4
    goto/16 :goto_4

    .line 24121
    .end local v4
    :pswitch_1
    const/16 v5, 0x2c9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v3, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x59

    if-eq v3, v2, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "iZ8QYO25r6JUPRGVOXd5T3qTeuzu4kjq"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const/16 v3, 0x9

    const/16 v2, 0x1a

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24122
    .restart local v4
    goto/16 :goto_4

    .line 24123
    .end local v4
    :pswitch_2
    const/16 v4, 0x3d2

    const/16 v3, 0x13

    const/16 v2, 0x13

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24124
    .restart local v4
    goto/16 :goto_4

    .line 24125
    .end local v4
    :pswitch_3
    const/16 v4, 0x39b

    const/16 v3, 0xb

    const/16 v2, 0x19

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24126
    .restart local v4
    goto/16 :goto_4

    .line 24127
    .end local v4
    .end local v5
    :pswitch_4
    const/16 v3, 0x38e

    const/16 v2, 0xd

    const/16 v1, 0x16

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24128
    .restart local v4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_4

    .line 24129
    .end local v4
    .end local v5
    :pswitch_5
    const/16 v3, 0x37b

    const/16 v2, 0x9

    const/16 v1, 0x68

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24130
    .restart local v4
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hu;->A00(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Hu;

    move-result-object v2

    .line 24131
    .local v5, "avcConfig":Lcom/facebook/ads/redexgen/X/Hu;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Hu;->A04:Ljava/util/List;

    .line 24132
    iget v2, v2, Lcom/facebook/ads/redexgen/X/Hu;->A02:I

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0M:I

    .line 24133
    goto/16 :goto_4

    .line 24134
    .end local v4
    .end local v5    # "avcConfig":Lcom/facebook/ads/redexgen/X/Hu;
    :pswitch_6
    const/16 v3, 0x384

    const/16 v2, 0xa

    const/4 v1, 0x7

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24135
    .local v4, "mimeType":Ljava/lang/String;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/I0;->A00(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/I0;

    move-result-object v2

    .line 24136
    .local v5, "hevcConfig":Lcom/facebook/ads/redexgen/X/I0;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/I0;->A01:Ljava/util/List;

    .line 24137
    iget v2, v2, Lcom/facebook/ads/redexgen/X/I0;->A00:I

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0M:I

    .line 24138
    goto/16 :goto_4

    .line 24139
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_7
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Br;->A00(Lcom/facebook/ads/redexgen/X/Hc;)Landroid/util/Pair;

    move-result-object v1

    .line 24140
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 24141
    .local v5, "mimeType":Ljava/lang/String;
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 24142
    goto/16 :goto_4

    .line 24143
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_8
    const/16 v4, 0x3b0

    const/16 v3, 0xf

    const/16 v2, 0x65

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24144
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    goto/16 :goto_4

    .line 24145
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_9
    const/16 v3, 0x349

    const/16 v2, 0xc

    const/16 v1, 0x11

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24146
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    const/16 v18, 0x2000

    .line 24147
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Br;->A03([B)Ljava/util/List;

    move-result-object v1

    .line 24148
    goto/16 :goto_4

    .line 24149
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_a
    const/16 v3, 0x30c

    const/16 v2, 0xa

    const/16 v1, 0x2d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24150
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    const/16 v18, 0x1680

    .line 24151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 24152
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24153
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0S:J

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 24154
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24155
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0T:J

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 24156
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24157
    goto/16 :goto_4

    .line 24158
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_b
    const/16 v3, 0x2e6

    const/16 v2, 0xf

    const/16 v1, 0x1f

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24159
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24160
    goto/16 :goto_4

    .line 24161
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_c
    const/16 v4, 0x2ff

    const/16 v3, 0xd

    const/16 v2, 0x2f

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24162
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    const/16 v18, 0x1000

    .line 24163
    goto/16 :goto_4

    .line 24164
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_d
    const/16 v4, 0x2f5

    const/16 v3, 0xa

    const/16 v2, 0x7b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24165
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    const/16 v18, 0x1000

    .line 24166
    goto/16 :goto_4

    .line 24167
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_e
    const/16 v4, 0x2d2

    const/16 v3, 0xa

    const/16 v2, 0x7e

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24168
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    goto/16 :goto_4

    .line 24169
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_f
    const/16 v4, 0x31f

    const/16 v3, 0xd

    const/16 v2, 0x4b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24170
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Bs;-><init>()V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0X:Lcom/facebook/ads/redexgen/X/Bs;

    .line 24171
    goto/16 :goto_4

    .line 24172
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_10
    const/16 v4, 0x32c

    const/16 v3, 0xd

    const/16 v2, 0x6a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24173
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    goto/16 :goto_4

    .line 24174
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_11
    const/16 v4, 0x339

    const/16 v3, 0x10

    const/16 v2, 0x12

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24175
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    goto/16 :goto_4

    .line 24176
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_12
    const/16 v3, 0x2dc

    const/16 v2, 0xa

    const/16 v1, 0x3a

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24177
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24178
    goto/16 :goto_4

    .line 24179
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_13
    const/16 v4, 0x316

    const/16 v3, 0x9

    const/16 v2, 0x4c

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24180
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Br;->A05(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24181
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0A:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hs;->A02(I)I

    move-result v21

    .line 24182
    if-nez v21, :cond_c

    .line 24183
    const/16 v21, -0x1

    .line 24184
    const/16 v4, 0x355

    const/16 v3, 0xf

    const/16 v2, 0xc

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0A:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 24186
    :cond_5
    const/16 v4, 0x355

    const/16 v3, 0xf

    const/16 v2, 0xc

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x12c

    const/16 v3, 0x33

    const/16 v2, 0x46

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24188
    goto/16 :goto_4

    .line 24189
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_14
    const/16 v10, 0x316

    sget-object v4, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_a

    sget-object v4, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "PcKXgKJMrE0EF0ui34S9skmZKXpAY"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const-string v3, "4niV5JPgSsnw063OyTYwUk1r"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/16 v3, 0x9

    const/16 v2, 0x4c

    invoke-static {v10, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24190
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0A:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hs;->A02(I)I

    move-result v21

    .line 24191
    if-nez v21, :cond_c

    .line 24192
    const/16 v21, -0x1

    .line 24193
    const/16 v4, 0x355

    const/16 v3, 0xf

    const/16 v2, 0xc

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0A:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 24195
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_15
    const/16 v4, 0x367

    const/16 v3, 0xa

    const/4 v2, 0x1

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24196
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    goto/16 :goto_4

    .line 24197
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    :pswitch_16
    const/16 v5, 0x2a3

    const/16 v4, 0x12

    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1d

    if-eq v2, v1, :cond_6

    const/16 v1, 0x76

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24198
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24199
    goto/16 :goto_4

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v2, "fmAyRSVdkjoNrGYEoG3Cti1PUgoWyz8h"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    const/16 v1, 0x76

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24200
    .restart local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24201
    goto/16 :goto_4

    .line 24202
    :pswitch_17
    const/16 v3, 0x281

    const/16 v2, 0x13

    const/16 v1, 0x30

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24203
    .local v4, "mimeType":Ljava/lang/String;
    new-array v5, v10, [B

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    aget-byte v9, v8, v12

    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v2, v2, v1

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x37

    if-eq v2, v1, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v2, "sOfSbesm0PbPbqVT5BsGKjKG3tk0k"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    aput-byte v9, v5, v12

    aget-byte v1, v8, v14

    aput-byte v1, v5, v14

    aget-byte v1, v8, v6

    aput-byte v1, v5, v6

    aget-byte v1, v8, v4

    aput-byte v1, v5, v4

    .line 24204
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24205
    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24206
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_18
    const/16 v5, 0x2b5

    sget-object v3, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v3, v2

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x37

    if-eq v3, v2, :cond_b

    :cond_a
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v4, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v3, "YrV7AYYVUuIGHlrep1MFkKEac4GcK"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const-string v3, "hVYXMp0QEXRLS2KOMMiKtBhe"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/16 v3, 0x14

    const/16 v2, 0x79

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24207
    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_4

    .line 24208
    .end local v4    # "mimeType":Ljava/lang/String;
    :pswitch_19
    const/16 v4, 0x294

    const/16 v3, 0xf

    const/16 v2, 0x15

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v15

    .line 24209
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_c
    :goto_4
    const/4 v2, 0x0

    .line 24210
    .local v5, "selectionFlags":I
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Br;->A0Z:Z

    or-int/2addr v2, v3

    .line 24211
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Br;->A0a:Z

    if-eqz v3, :cond_d

    const/4 v12, 0x2

    :cond_d
    or-int/2addr v2, v12

    .line 24212
    invoke-static {v15}, Lcom/facebook/ads/redexgen/X/HV;->A09(Ljava/lang/String;)Z

    move-result v8

    sget-object v4, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v4, v4, v3

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x37

    if-eq v4, v3, :cond_e

    if-eqz v8, :cond_f

    .line 24213
    :goto_5
    const/4 v3, 0x1

    .line 24214
    .local v6, "type":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Br;->A0B:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Br;->A0O:I

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Br;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Br;->A0g:Ljava/lang/String;

    .line 24215
    move/from16 v19, v7

    move/from16 v20, v6

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move/from16 v24, v2

    move-object/from16 v25, v4

    invoke-static/range {v14 .. v25}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    .line 24216
    .local v7, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .restart local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :goto_6
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0N:I

    move-object/from16 v4, p1

    invoke-interface {v4, v1, v3}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0W:Lcom/facebook/ads/redexgen/X/Bh;

    .line 24217
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Br;->A0W:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 24218
    return-void

    :cond_e
    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v4, "jgOXx9yokJPZZVWSEVwKVRclJFc802JP"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    if-eqz v8, :cond_f

    goto :goto_5

    .line 24219
    .end local v6    # "type":I
    .end local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_f
    invoke-static {v15}, Lcom/facebook/ads/redexgen/X/HV;->A0B(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 24220
    const/4 v3, 0x2

    .line 24221
    .restart local v6    # "type":I
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0H:I

    if-nez v2, :cond_12

    .line 24222
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0I:I

    if-ne v2, v7, :cond_10

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0R:I

    :cond_10
    iput v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0I:I

    .line 24223
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0G:I

    if-ne v2, v7, :cond_11

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0J:I

    :cond_11
    iput v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0G:I

    .line 24224
    :cond_12
    const/high16 v8, -0x40800000    # -1.0f

    .line 24225
    .local v7, "pixelWidthHeightRatio":F
    iget v5, v0, Lcom/facebook/ads/redexgen/X/Br;->A0I:I

    if-eq v5, v7, :cond_13

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Br;->A0G:I

    if-eq v4, v7, :cond_13

    .line 24226
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0J:I

    mul-int/2addr v2, v5

    int-to-float v8, v2

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0R:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v8, v2

    .line 24227
    :cond_13
    const/4 v7, 0x0

    .line 24228
    .local v8, "colorInfo":Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;
    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0b:Z

    if-eqz v2, :cond_14

    .line 24229
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Br;->A06()[B

    move-result-object v6

    .line 24230
    .local v9, "hdrStaticInfo":[B
    iget v5, v0, Lcom/facebook/ads/redexgen/X/Br;->A0D:I

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Br;->A0C:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0E:I

    new-instance v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;

    invoke-direct {v7, v5, v4, v2, v6}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;-><init>(III[B)V

    .line 24231
    .end local v9    # "hdrStaticInfo":[B
    :cond_14
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget v9, v0, Lcom/facebook/ads/redexgen/X/Br;->A0R:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Br;->A0J:I

    const/high16 v21, -0x40800000    # -1.0f

    const/16 v23, -0x1

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Br;->A0e:[B

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Br;->A0P:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Br;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    .line 24232
    move/from16 v19, v9

    move/from16 v20, v6

    move-object/from16 v22, v1

    move/from16 v24, v8

    move-object/from16 v25, v5

    move/from16 v26, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v2

    invoke-static/range {v14 .. v28}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    .line 24233
    .end local v8    # "colorInfo":Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;
    .local v7, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    goto/16 :goto_6

    .end local v6    # "type":I
    .end local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_15
    const/16 v5, 0x2b5

    const/16 v4, 0x14

    const/16 v3, 0x79

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 24234
    const/4 v3, 0x3

    .line 24235
    .restart local v6    # "type":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Br;->A0g:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    .line 24236
    invoke-static {v5, v15, v2, v4, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A01(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    .restart local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    goto/16 :goto_6

    .line 24237
    .end local v6    # "type":I
    .end local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_16
    const/16 v5, 0x367

    const/16 v4, 0xa

    const/4 v3, 0x1

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v4, v4, v3

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x37

    if-eq v4, v3, :cond_17

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24238
    :goto_7
    const/4 v3, 0x3

    .line 24239
    .restart local v6    # "type":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 24240
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WI;->A0G()[B

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24241
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0d:[B

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24242
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Br;->A0g:Ljava/lang/String;

    const/4 v14, -0x1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Br;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    const-wide v16, 0x7fffffffffffffffL

    .line 24243
    move-object v9, v15

    move v12, v2

    move-object v13, v4

    move-object v15, v1

    move-object/from16 v18, v5

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;JLjava/util/List;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    .restart local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    goto/16 :goto_6

    :cond_17
    sget-object v5, Lcom/facebook/ads/redexgen/X/Br;->A0i:[Ljava/lang/String;

    const-string v4, "f7sm5I7gZdCZUZkEBQd8yi8YhLy9ImnH"

    const/4 v3, 0x3

    aput-object v4, v5, v3

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_7

    .line 24244
    .end local v6    # "type":I
    .end local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_18
    const/16 v5, 0x2a3

    const/16 v4, 0x12

    const/16 v3, 0x76

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 24245
    const/16 v5, 0x294

    const/16 v4, 0xf

    const/16 v3, 0x15

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 24246
    const/16 v5, 0x281

    const/16 v4, 0x13

    const/16 v3, 0x30

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 24247
    :cond_19
    const/4 v3, 0x3

    .line 24248
    .restart local v6    # "type":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Br;->A0g:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Br;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    .line 24249
    move-object v7, v15

    move v10, v2

    move-object v11, v1

    move-object v12, v5

    move-object v13, v4

    invoke-static/range {v6 .. v13}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    goto/16 :goto_6

    .line 24250
    :cond_1a
    const/16 v2, 0x18e

    const/16 v1, 0x15

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_0
        -0x7ce7f3b0 -> :sswitch_1
        -0x76567dc0 -> :sswitch_2
        -0x6a615338 -> :sswitch_3
        -0x672350af -> :sswitch_4
        -0x585f4fce -> :sswitch_5
        -0x585f4fcd -> :sswitch_6
        -0x51dc40b2 -> :sswitch_7
        -0x37a9c464 -> :sswitch_8
        -0x2016c535 -> :sswitch_9
        -0x2016c4e5 -> :sswitch_a
        -0x19552dbd -> :sswitch_b
        -0x1538b2ba -> :sswitch_c
        0x3c02325 -> :sswitch_d
        0x3c02353 -> :sswitch_e
        0x3c030c5 -> :sswitch_f
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_11
        0x5e8da3e -> :sswitch_12
        0x1a8350d6 -> :sswitch_13
        0x2056f406 -> :sswitch_14
        0x2b453ce4 -> :sswitch_15
        0x2c0618eb -> :sswitch_16
        0x32fdf009 -> :sswitch_17
        0x54c61e47 -> :sswitch_18
        0x6bd6c624 -> :sswitch_19
        0x7446132a -> :sswitch_1a
        0x7446b0a6 -> :sswitch_1b
        0x744ad97d -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_18
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_17
    .end packed-switch
.end method
