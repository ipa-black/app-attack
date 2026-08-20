.class public final Lcom/facebook/ads/redexgen/X/UU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gz;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/CacheDataSource$CacheIgnoredReason;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/CacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Landroid/net/Uri;

.field public A06:Landroid/net/Uri;

.field public A07:Lcom/facebook/ads/redexgen/X/GX;

.field public A08:Lcom/facebook/ads/redexgen/X/H1;

.field public A09:Ljava/lang/String;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/GX;

.field public final A0E:Lcom/facebook/ads/redexgen/X/GX;

.field public final A0F:Lcom/facebook/ads/redexgen/X/GX;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Gx;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Gz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0I:Z

.field public final A0J:Z

.field public final A0K:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 57106
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BZiYu5nwNf87X3b9kN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UgTeeMN2jxyMd9Kylf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CPqLt3pCFfCSwfi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XN4Dvc1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tWEaaCCiJhgiXtacO5se5vgeqa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S002dfR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J7ycXdK5d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UU;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GV;ILcom/facebook/ads/redexgen/X/Gz;)V
    .locals 2
    .param p4    # Lcom/facebook/ads/redexgen/X/GV;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/Gz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57108
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    .line 57109
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UU;->A0D:Lcom/facebook/ads/redexgen/X/GX;

    .line 57110
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0I:Z

    .line 57111
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0K:Z

    .line 57112
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A0J:Z

    .line 57113
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UU;->A0F:Lcom/facebook/ads/redexgen/X/GX;

    .line 57114
    if-eqz p4, :cond_1

    .line 57115
    new-instance v0, Lcom/facebook/ads/redexgen/X/UX;

    invoke-direct {v0, p2, p4}, Lcom/facebook/ads/redexgen/X/UX;-><init>(Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0E:Lcom/facebook/ads/redexgen/X/GX;

    .line 57116
    :goto_2
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/UU;->A0H:Lcom/facebook/ads/redexgen/X/Gz;

    .line 57117
    return-void

    .line 57118
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0E:Lcom/facebook/ads/redexgen/X/GX;

    goto :goto_2

    .line 57119
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 57120
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Gb;)I
    .locals 5

    .line 57121
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0K:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A0C:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const-string v1, "r97zDVaaptRGknr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "AimjfMN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 57122
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const-string v1, "lgdHkpCnxjAeRqVRog4eGXXV3TVVS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const-string v1, "GvTYan8nqvP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57123
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0J:Z

    if-eqz v0, :cond_3

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 57124
    const/4 v0, 0x1

    return v0

    .line 57125
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Gx;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 57126
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/Gx;->A6F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H7;

    move-result-object p0

    .line 57127
    .local p0, "contentMetadata":Lcom/facebook/ads/redexgen/X/H7;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/H8;->A01(Lcom/facebook/ads/redexgen/X/H7;)Landroid/net/Uri;

    move-result-object p0

    .line 57128
    .local p1, "redirectedUri":Landroid/net/Uri;
    if-nez p0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, p0

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UU;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x23

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57129
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    if-nez v1, :cond_0

    .line 57130
    return-void

    .line 57131
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/GX;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57132
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    .line 57133
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0A:Z

    .line 57134
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/UU;->A08:Lcom/facebook/ads/redexgen/X/H1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const-string v1, "f78PdfdQFRIsoy9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Xl8bArW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 57135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Gx;->AE8(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 57136
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 57137
    :cond_2
    return-void

    .line 57138
    :catchall_0
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    .line 57139
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0A:Z

    .line 57140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A08:Lcom/facebook/ads/redexgen/X/H1;

    if-eqz v1, :cond_3

    .line 57141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;->AE8(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 57142
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 57143
    :cond_3
    throw v2
.end method

.method private A04()V
    .locals 5

    .line 57144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0H:Lcom/facebook/ads/redexgen/X/Gz;

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 57145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gx;->A5y()J

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57146
    :cond_0
    return-void
.end method

.method private A05()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    .line 57148
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57149
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    invoke-interface {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;->AEs(Ljava/lang/String;J)V

    .line 57150
    :cond_0
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UU;->A0L:[B

    return-void

    :array_0
    .array-data 1
        -0x5ct
        -0x5dt
        0x78t
        -0x6at
        -0x68t
        -0x63t
        -0x66t
        -0x67t
        0x77t
        -0x52t
        -0x57t
        -0x66t
        -0x58t
        -0x79t
        -0x66t
        -0x6at
        -0x67t
    .end array-data
.end method

.method private A07(Ljava/io/IOException;)V
    .locals 1

    .line 57151
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Gv;

    if-eqz v0, :cond_1

    .line 57152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0C:Z

    .line 57153
    :cond_1
    return-void
.end method

.method private A08(Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57154
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A0B:Z

    if-eqz v1, :cond_7

    .line 57155
    const/4 v1, 0x0

    .line 57156
    .local v0, "nextSpan":Lcom/facebook/ads/redexgen/X/H1;
    .local v0, "nextSpan":Lcom/facebook/ads/redexgen/X/H1;
    :goto_0
    const-wide/16 v9, -0x1

    if-nez v1, :cond_1

    .line 57157
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A0F:Lcom/facebook/ads/redexgen/X/GX;

    .line 57158
    .local v4, "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    new-instance v11, Lcom/facebook/ads/redexgen/X/Gb;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/UU;->A06:Landroid/net/Uri;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    iget-wide v15, v0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    move-object/from16 v17, v3

    move/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 57159
    .local v5, "nextDataSpec":Lcom/facebook/ads/redexgen/X/Gb;
    .end local v0    # "nextSpan":Lcom/facebook/ads/redexgen/X/H1;
    .end local v7
    .local v4, "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    .local v5, "nextSpan":Lcom/facebook/ads/redexgen/X/H1;
    :goto_1
    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A0B:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A0F:Lcom/facebook/ads/redexgen/X/GX;

    if-ne v4, v2, :cond_0

    .line 57160
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    const-wide/32 v5, 0x19000

    add-long/2addr v2, v5

    .line 57161
    :goto_2
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A02:J

    .line 57162
    if-eqz p1, :cond_b

    .line 57163
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/UU;->A09()Z

    move-result v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 57164
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A0F:Lcom/facebook/ads/redexgen/X/GX;

    if-ne v4, v2, :cond_9

    .line 57165
    return-void

    .line 57166
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_2

    .line 57167
    .end local v4    # "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    .end local v5    # "nextSpan":Lcom/facebook/ads/redexgen/X/H1;
    :cond_1
    iget-boolean v2, v1, Lcom/facebook/ads/redexgen/X/H1;->A05:Z

    if-eqz v2, :cond_3

    .line 57168
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/H1;->A03:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 57169
    .local v4, "fileUri":Landroid/net/Uri;
    iget-wide v15, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/H1;->A02:J

    sub-long/2addr v15, v2

    .line 57170
    .local v15, "filePosition":J
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/H1;->A01:J

    sub-long/2addr v2, v15

    .line 57171
    .local v5, "length":J
    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_2

    .line 57172
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 57173
    .end local v5    # "length":J
    .local v17, "length":J
    :cond_2
    new-instance v11, Lcom/facebook/ads/redexgen/X/Gb;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    move-wide/from16 v17, v2

    move-object/from16 v19, v5

    move/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 57174
    .local v5, "nextDataSpec":Lcom/facebook/ads/redexgen/X/Gb;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A0D:Lcom/facebook/ads/redexgen/X/GX;

    .line 57175
    .end local v15    # "filePosition":J
    .end local v17    # "length":J
    .local v4, "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    goto :goto_1

    .line 57176
    .end local v4    # "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    .end local v5    # "nextDataSpec":Lcom/facebook/ads/redexgen/X/Gb;
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H1;->A02()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 57177
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    .line 57178
    .local v4, "length":J
    :cond_4
    :goto_3
    new-instance v11, Lcom/facebook/ads/redexgen/X/Gb;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/UU;->A06:Landroid/net/Uri;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    move-wide v15, v2

    move-object/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 57179
    .local v6, "nextDataSpec":Lcom/facebook/ads/redexgen/X/Gb;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A0E:Lcom/facebook/ads/redexgen/X/GX;

    if-eqz v2, :cond_6

    .line 57180
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A0E:Lcom/facebook/ads/redexgen/X/GX;

    .local v7, "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    goto :goto_1

    .line 57181
    .end local v4    # "length":J
    :cond_5
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/H1;->A01:J

    .line 57182
    .restart local v4    # "length":J
    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_4

    .line 57183
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_3

    .line 57184
    .end local v7    # "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    :cond_6
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A0F:Lcom/facebook/ads/redexgen/X/GX;

    .line 57185
    .restart local v7    # "nextDataSource":Lcom/facebook/ads/redexgen/X/GX;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/Gx;->AE8(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 57186
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 57187
    .end local v0
    :cond_7
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A0I:Z

    if-eqz v1, :cond_8

    .line 57188
    :try_start_0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    invoke-interface {v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Gx;->AFP(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v1

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57189
    .end local v0
    :cond_8
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    invoke-interface {v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Gx;->AFQ(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v1

    goto/16 :goto_0

    .line 57190
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/UU;->A03()V

    goto :goto_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57191
    :catchall_0
    move-exception v3

    .line 57192
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H1;->A01()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 57193
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;->AE8(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 57194
    :cond_a
    throw v3

    .line 57195
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H1;->A01()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 57196
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 57197
    :cond_c
    iput-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    .line 57198
    iget-wide v2, v11, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    const/4 v8, 0x1

    cmp-long v1, v2, v9

    if-nez v1, :cond_d

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A0A:Z

    .line 57199
    invoke-interface {v4, v11}, Lcom/facebook/ads/redexgen/X/GX;->ADF(Lcom/facebook/ads/redexgen/X/Gb;)J

    move-result-wide v6

    .line 57200
    .local v7, "resolvedLength":J
    new-instance v5, Lcom/facebook/ads/redexgen/X/H9;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/H9;-><init>()V

    .line 57201
    .local v9, "mutations":Lcom/facebook/ads/redexgen/X/H9;
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A0A:Z

    if-eqz v1, :cond_f

    cmp-long v4, v6, v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57202
    :cond_d
    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    sget-object v3, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const-string v2, "GQ8HbidAJ3"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    if-eqz v4, :cond_f

    .line 57203
    iput-wide v6, v0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    .line 57204
    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    add-long/2addr v3, v1

    invoke-static {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/H8;->A05(Lcom/facebook/ads/redexgen/X/H9;J)V

    .line 57205
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/UU;->A0B()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 57206
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/GX;->A7w()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A05:Landroid/net/Uri;

    .line 57207
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/UU;->A06:Landroid/net/Uri;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A05:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v8, v1

    .line 57208
    .local v0, "isRedirected":Z
    if-eqz v8, :cond_13

    .line 57209
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/UU;->A05:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1a

    if-eq v2, v1, :cond_12

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/H8;->A06(Lcom/facebook/ads/redexgen/X/H9;Landroid/net/Uri;)V

    .line 57210
    .end local v0    # "isRedirected":Z
    :cond_10
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/UU;->A0C()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 57211
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Gx;->A3Q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/H9;)V

    .line 57212
    :cond_11
    return-void

    :cond_12
    sget-object v3, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const-string v2, "mDcPGOd9V6d2O"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/H8;->A06(Lcom/facebook/ads/redexgen/X/H9;Landroid/net/Uri;)V

    goto :goto_6

    .line 57213
    :cond_13
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/H8;->A04(Lcom/facebook/ads/redexgen/X/H9;)V

    goto :goto_6

    .line 57214
    .end local v0
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 57215
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A09()Z
    .locals 2

    .line 57216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0F:Lcom/facebook/ads/redexgen/X/GX;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0A()Z
    .locals 2

    .line 57217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0D:Lcom/facebook/ads/redexgen/X/GX;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B()Z
    .locals 1

    .line 57218
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A0A()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0C()Z
    .locals 2

    .line 57219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0E:Lcom/facebook/ads/redexgen/X/GX;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0D(Ljava/io/IOException;)Z
    .locals 1

    .line 57220
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz p0, :cond_1

    .line 57221
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/GY;

    if-eqz v0, :cond_0

    .line 57222
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GY;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GY;->A00:I

    .line 57223
    .local p0, "reason":I
    if-nez v0, :cond_0

    .line 57224
    const/4 v0, 0x1

    return v0

    .line 57225
    .end local p0    # "reason":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 57226
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A7w()Landroid/net/Uri;
    .locals 1

    .line 57227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A05:Landroid/net/Uri;

    return-object v0
.end method

.method public final ADF(Lcom/facebook/ads/redexgen/X/Gb;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57228
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/H3;->A02(Lcom/facebook/ads/redexgen/X/Gb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    .line 57229
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A06:Landroid/net/Uri;

    .line 57230
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A06:Landroid/net/Uri;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UU;->A01(Lcom/facebook/ads/redexgen/X/Gx;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A05:Landroid/net/Uri;

    .line 57231
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A00:I

    .line 57232
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    .line 57233
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UU;->A00(Lcom/facebook/ads/redexgen/X/Gb;)I

    move-result v1

    .line 57234
    .local v0, "reason":I
    const/4 v0, -0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0B:Z

    .line 57235
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0B:Z

    .line 57236
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A02:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, -0x1

    cmp-long v3, v0, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    .line 57237
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57238
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/UU;->A0M:[Ljava/lang/String;

    const-string v1, "dSesbL2WrDww4Bz10U5v5xJMfaPPoRtG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0B:Z

    if-eqz v0, :cond_4

    .line 57239
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/UU;
    :cond_2
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    .line 57240
    :cond_3
    :goto_1
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/UU;->A08(Z)V

    .line 57241
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    goto :goto_2

    .line 57242
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A0G:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Gx;->A6E(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    .line 57243
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    cmp-long v0, v1, v6

    if-eqz v0, :cond_3

    .line 57244
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gb;->A03:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    .line 57245
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    goto :goto_1

    .line 57246
    :goto_2
    return-wide v0

    .line 57247
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/GY;-><init>(I)V

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UU;
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57248
    .end local v0    # "reason":I
    :catch_0
    move-exception v0

    .line 57249
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UU;->A07(Ljava/io/IOException;)V

    .line 57250
    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A06:Landroid/net/Uri;

    .line 57252
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A05:Landroid/net/Uri;

    .line 57253
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A04()V

    .line 57254
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A03()V

    .line 57255
    return-void
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57256
    :catch_0
    move-exception v0

    .line 57257
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UU;->A07(Ljava/io/IOException;)V

    .line 57258
    throw v0
.end method

.method public final read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57259
    const/4 v5, 0x0

    if-nez p3, :cond_0

    .line 57260
    return v5

    .line 57261
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    const-wide/16 v9, 0x0

    const/4 v4, -0x1

    cmp-long v2, v0, v9

    if-nez v2, :cond_1

    .line 57262
    return v4

    .line 57263
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A02:J

    cmp-long v6, v2, v0

    if-ltz v6, :cond_2

    .line 57264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UU;->A08(Z)V

    .line 57265
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A07:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GX;->read([BII)I

    move-result v3

    .line 57266
    .local v1, "bytesRead":I
    const-wide/16 v7, -0x1

    if-eq v3, v4, :cond_4

    .line 57267
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57268
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/UU;->A04:J

    .line 57269
    :cond_3
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/UU;->A03:J

    .line 57270
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    cmp-long v0, v1, v7

    if-eqz v0, :cond_7

    .line 57271
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    int-to-long v0, v3

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    goto :goto_0

    .line 57272
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0A:Z

    if-eqz v0, :cond_5

    .line 57273
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A05()V

    goto :goto_0

    .line 57274
    :cond_5
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    cmp-long v2, v0, v9

    if-gtz v2, :cond_6

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A01:J

    cmp-long v2, v0, v7

    if-nez v2, :cond_7

    .line 57275
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A03()V

    .line 57276
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/UU;->A08(Z)V

    .line 57277
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UU;->read([BII)I

    move-result v0

    return v0

    .line 57278
    :cond_7
    :goto_0
    return v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57279
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 57280
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UU;->A0A:Z

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UU;->A0D(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 57281
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UU;->A05()V

    .line 57282
    return v4

    .line 57283
    :cond_8
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/UU;->A07(Ljava/io/IOException;)V

    .line 57284
    throw v1
.end method
