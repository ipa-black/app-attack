.class public final Lcom/facebook/ads/redexgen/X/Aj;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:[S

.field public A0B:[S

.field public A0C:[S

.field public final A0D:F

.field public final A0E:F

.field public final A0F:F

.field public final A0G:I

.field public final A0H:I

.field public final A0I:I

.field public final A0J:I

.field public final A0K:I

.field public final A0L:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 22134
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OjKCpSHRaQgRVuqtUlgsb9O8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "00OaDgM7p4igg1vHbesCR74DVTlAeC7z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TzmlGabo8AOjcKFjChfq2OdnE6jP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eUJX5SGKEEZf9vIFl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "j2zFnhkJHUredpBjDjfUiogYLN6sD6KJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gWZYAfYL2BaqEY2VQTncveV2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fwiYKc5SQMrWihGSp5I7vQU09P9mYkrS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9p8sUcgEmhCbeCaZ4cFvJcsv2VoCKNVu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIFFI)V
    .locals 2

    .line 22135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22136
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0H:I

    .line 22137
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    .line 22138
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0F:F

    .line 22139
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0D:F

    .line 22140
    int-to-float v1, p1

    int-to-float v0, p5

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0E:F

    .line 22141
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0K:I

    .line 22142
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0I:I

    .line 22143
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0I:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    .line 22144
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0L:[S

    .line 22145
    mul-int v0, v1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    .line 22146
    mul-int v0, v1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    .line 22147
    mul-int/2addr v1, p2

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0C:[S

    .line 22148
    return-void
.end method

.method private A00(I)I
    .locals 2

    .line 22149
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 22150
    .local v0, "frameCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Aj;->A0D([SII)V

    .line 22151
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    .line 22152
    return v1
.end method

.method private A01([SI)I
    .locals 7

    .line 22153
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0H:I

    const/16 v0, 0xfa0

    const/4 v5, 0x1

    if-le v6, v0, :cond_5

    div-int/2addr v6, v0

    .line 22154
    .local v0, "skip":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    if-ne v0, v5, :cond_1

    if-ne v6, v5, :cond_1

    .line 22155
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0K:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0I:I

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Aj;->A04([SIII)I

    move-result v4

    .line 22156
    .local v1, "period":I
    .end local v3
    .end local v4
    :cond_0
    :goto_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22157
    .end local v1    # "period":I
    :cond_1
    invoke-direct {p0, p1, p2, v6}, Lcom/facebook/ads/redexgen/X/Aj;->A0E([SII)V

    .line 22158
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0L:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0K:I

    div-int/2addr v1, v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0I:I

    div-int/2addr v0, v6

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Aj;->A04([SIII)I

    move-result v4

    .line 22159
    .restart local v1    # "period":I
    if-eq v6, v5, :cond_0

    .line 22160
    mul-int/2addr v4, v6

    .line 22161
    mul-int/lit8 v0, v6, 0x4

    sub-int v2, v4, v0

    .line 22162
    .local v3, "minP":I
    mul-int/lit8 v1, v6, 0x4

    add-int/2addr v1, v4

    .line 22163
    .local v4, "maxP":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0K:I

    if-ge v2, v0, :cond_2

    .line 22164
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0K:I

    .line 22165
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0I:I

    if-le v1, v0, :cond_3

    .line 22166
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0I:I

    .line 22167
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    if-ne v0, v5, :cond_4

    .line 22168
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/Aj;->A04([SIII)I

    move-result v4

    goto :goto_1

    .line 22169
    :cond_4
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/Aj;->A0E([SII)V

    .line 22170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0L:[S

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Aj;->A04([SIII)I

    move-result v4

    goto :goto_1

    .line 22171
    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const-string v1, "8bhQeTnLevaZP1Rdp3IHUAHszuXZY5fw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Aj;->A0F(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22172
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A08:I

    .line 22173
    .local v2, "retPeriod":I
    .restart local v2    # "retPeriod":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A07:I

    .line 22174
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A08:I

    .line 22175
    return v1

    .line 22176
    .end local v2    # "retPeriod":I
    :cond_7
    move v1, v4

    goto :goto_2
.end method

.method private A02([SIFI)I
    .locals 13

    .line 22177
    move/from16 v2, p4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 22178
    int-to-float v0, v2

    mul-float v0, v0, p3

    sub-float v3, v3, p3

    div-float/2addr v0, v3

    float-to-int v5, v0

    .line 22179
    .local v0, "newFrameCount":I
    .end local v1
    .restart local v0    # "newFrameCount":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    add-int v0, v2, v5

    .line 22180
    invoke-direct {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Aj;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    .line 22181
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    move v12, p2

    mul-int v3, v12, v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    mul-int/2addr v0, v4

    mul-int/2addr v4, v2

    move-object v9, p1

    invoke-static {v9, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22182
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    add-int/2addr v8, v2

    add-int v10, v12, v2

    move-object v11, v9

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/Aj;->A0C(II[SI[SI[SI)V

    .line 22183
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22184
    return v5

    .line 22185
    .end local v0    # "newFrameCount":I
    .local v1, "newFrameCount":I
    :cond_0
    int-to-float v1, v2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p3

    sub-float/2addr v0, v3

    mul-float/2addr v1, v0

    sub-float v3, v3, p3

    div-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    move v5, v2

    goto :goto_0
.end method

.method private A03([SIFI)I
    .locals 10

    .line 22186
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, p3, v1

    if-ltz v0, :cond_0

    .line 22187
    int-to-float v0, p4

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int v2, v0

    .line 22188
    .local v0, "newFrameCount":I
    .end local v2
    .restart local v0    # "newFrameCount":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Aj;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    .line 22189
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    move v7, p2

    add-int v9, v7, p4

    move-object v6, p1

    move-object v8, v6

    invoke-static/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Aj;->A0C(II[SI[SI[SI)V

    .line 22190
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22191
    return v2

    .line 22192
    .end local v0    # "newFrameCount":I
    .local v2, "newFrameCount":I
    :cond_0
    int-to-float v0, p4

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    move v2, p4

    goto :goto_0
.end method

.method private A04([SIII)I
    .locals 8

    .line 22193
    const/4 v7, 0x0

    .line 22194
    .local v0, "bestPeriod":I
    const/16 v6, 0xff

    .line 22195
    .local v1, "worstPeriod":I
    const/4 v4, 0x1

    .line 22196
    .local v2, "minDiff":I
    const/4 v3, 0x0

    .line 22197
    .local v3, "maxDiff":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int/2addr p2, v0

    .line 22198
    .local v4, "period":I
    :goto_0
    if-gt p3, p4, :cond_3

    .line 22199
    const/4 v5, 0x0

    .line 22200
    .local v5, "diff":I
    const/4 v2, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 22201
    add-int v0, p2, v2

    aget-short v1, p1, v0

    .line 22202
    .local v7, "sVal":S
    add-int v0, p2, p3

    add-int/2addr v0, v2

    aget-short v0, p1, v0

    .line 22203
    .local p0, "pVal":S
    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 22204
    .end local v7    # "sVal":S
    .end local p0    # "pVal":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22205
    .end local v6    # "i":I
    :cond_0
    mul-int v1, v5, v7

    mul-int v0, v4, p3

    if-ge v1, v0, :cond_1

    .line 22206
    move v4, v5

    .line 22207
    move v7, p3

    .line 22208
    :cond_1
    mul-int v1, v5, v6

    mul-int v0, v3, p3

    if-le v1, v0, :cond_2

    .line 22209
    move v3, v5

    .line 22210
    move v6, p3

    .line 22211
    .end local v5    # "diff":I
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 22212
    .end local v4    # "period":I
    :cond_3
    div-int/2addr v4, v7

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A02:I

    .line 22213
    div-int/2addr v3, v6

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A01:I

    .line 22214
    return v7
.end method

.method private A05([SIII)S
    .locals 6

    .line 22215
    aget-short v5, p1, p2

    .line 22216
    .local v0, "left":S
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    add-int/2addr v0, p2

    aget-short v4, p1, v0

    .line 22217
    .local v1, "right":S
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A03:I

    mul-int/2addr v3, p3

    .line 22218
    .local v2, "position":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A04:I

    mul-int v1, v0, p4

    .line 22219
    .local v4, "leftPosition":I
    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p4

    .line 22220
    .local v3, "rightPosition":I
    sub-int v0, v2, v3

    .line 22221
    .local v5, "ratio":I
    sub-int/2addr v2, v1

    .line 22222
    .local p0, "width":I
    mul-int v1, v0, v5

    sub-int v0, v2, v0

    mul-int/2addr v0, v4

    add-int/2addr v1, v0

    div-int/2addr v1, v2

    int-to-short v0, v1

    return v0
.end method

.method private A06()V
    .locals 8

    .line 22223
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22224
    .local v0, "originalOutputFrameCount":I
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0D:F

    div-float/2addr v7, v0

    .line 22225
    .local v1, "s":F
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0E:F

    mul-float/2addr v5, v0

    .line 22226
    .local v3, "r":F
    float-to-double v3, v7

    const-wide v1, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v0, v3, v1

    if-gtz v0, :cond_0

    float-to-double v3, v7

    const-wide v1, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 22227
    :cond_0
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/Aj;->A07(F)V

    .line 22228
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_1

    .line 22229
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/Aj;->A08(FI)V

    .line 22230
    :cond_1
    return-void

    .line 22231
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Aj;->A0D([SII)V

    .line 22232
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    goto :goto_0
.end method

.method private A07(F)V
    .locals 8

    .line 22233
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    if-ge v1, v0, :cond_0

    .line 22234
    return-void

    .line 22235
    :cond_0
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 22236
    .local v0, "frameCount":I
    const/4 v6, 0x0

    .line 22237
    .local v1, "positionFrames":I
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    if-lez v0, :cond_2

    .line 22238
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Aj;->A00(I)I

    move-result v0

    add-int/2addr v6, v0

    .line 22239
    .end local v2
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    add-int/2addr v0, v6

    if-le v0, v7, :cond_1

    .line 22240
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Aj;->A0B(I)V

    .line 22241
    return-void

    .line 22242
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/Aj;->A01([SI)I

    move-result v5

    .line 22243
    .local v2, "period":I
    float-to-double v3, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v1

    if-lez v0, :cond_3

    .line 22244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    invoke-direct {p0, v0, v6, p1, v5}, Lcom/facebook/ads/redexgen/X/Aj;->A03([SIFI)I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v6, v0

    goto :goto_0

    .line 22245
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    invoke-direct {p0, v0, v6, p1, v5}, Lcom/facebook/ads/redexgen/X/Aj;->A02([SIFI)I

    move-result v0

    add-int/2addr v6, v0

    goto :goto_0
.end method

.method private A08(FI)V
    .locals 9

    .line 22246
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    if-ne v0, p2, :cond_0

    .line 22247
    return-void

    .line 22248
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0H:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v7, v0

    .line 22249
    .local v0, "newSampleRate":I
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0H:I

    .line 22250
    .local v1, "oldSampleRate":I
    :goto_0
    const/16 v0, 0x4000

    if-gt v7, v0, :cond_1

    if-le v6, v0, :cond_2

    .line 22251
    :cond_1
    div-int/lit8 v7, v7, 0x2

    .line 22252
    div-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 22253
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Aj;->A09(I)V

    .line 22254
    const/4 v8, 0x0

    .local v2, "position":I
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    add-int/lit8 v0, v1, -0x1

    const/4 v5, 0x1

    if-ge v8, v0, :cond_a

    .line 22255
    :goto_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const-string v1, "26TQ7N8S6PTfGLZ92"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v1, v3, 0x1

    mul-int/2addr v1, v7

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A03:I

    mul-int v0, v4, v6

    if-le v1, v0, :cond_6

    .line 22256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22257
    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Aj;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    .line 22258
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const-string v1, "VbKq7NM7PdmAUrole"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_5

    .line 22259
    :goto_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0C:[S

    mul-int/2addr v4, v8

    add-int/2addr v4, v3

    .line 22260
    invoke-direct {p0, v0, v4, v6, v7}, Lcom/facebook/ads/redexgen/X/Aj;->A05([SIII)S

    move-result v0

    aput-short v0, v2, v1

    .line 22261
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const-string v1, "aOt6eVUEyRCtQxkUrkKyixjvz9Bn1k7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_5

    goto :goto_4

    .line 22262
    .end local v3    # "i":I
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A03:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A03:I

    .line 22263
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    goto :goto_2

    .line 22264
    :cond_6
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A04:I

    .line 22265
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A04:I

    if-ne v0, v6, :cond_8

    .line 22266
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Aj;->A0M:[Ljava/lang/String;

    const-string v1, "dm69MZtNxJx8v5BsJDIKlnc92CG6PQ3Q"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A04:I

    .line 22267
    if-ne v4, v7, :cond_9

    :goto_5
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 22268
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A03:I

    .line 22269
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 22270
    :cond_9
    const/4 v5, 0x0

    goto :goto_5

    .line 22271
    .end local v2    # "position":I
    :cond_a
    sub-int/2addr v1, v5

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Aj;->A0A(I)V

    .line 22272
    return-void
.end method

.method private A09(I)V
    .locals 6

    .line 22273
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    sub-int/2addr v5, p1

    .line 22274
    .local v0, "frameCount":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0C:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Aj;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0C:[S

    .line 22275
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int v2, p1, v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0C:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    mul-int/2addr v0, v3

    mul-int/2addr v3, v5

    invoke-static {v4, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22276
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22277
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    .line 22278
    return-void
.end method

.method private A0A(I)V
    .locals 5

    .line 22279
    if-nez p1, :cond_0

    .line 22280
    return-void

    .line 22281
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0C:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int v2, p1, v3

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    sub-int/2addr v0, p1

    mul-int/2addr v0, v3

    invoke-static {v4, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22282
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    .line 22283
    return-void
.end method

.method private A0B(I)V
    .locals 4

    .line 22284
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    sub-int/2addr v3, p1

    .line 22285
    .local v0, "remainingFrames":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int/2addr p1, v1

    mul-int/2addr v1, v3

    const/4 v0, 0x0

    invoke-static {v2, p1, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22286
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 22287
    return-void
.end method

.method public static A0C(II[SI[SI[SI)V
    .locals 7

    .line 22288
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 22289
    mul-int v6, p3, p1

    add-int/2addr v6, v5

    .line 22290
    .local v1, "o":I
    mul-int v4, p7, p1

    add-int/2addr v4, v5

    .line 22291
    .local v2, "u":I
    mul-int v3, p5, p1

    add-int/2addr v3, v5

    .line 22292
    .local v3, "d":I
    const/4 v2, 0x0

    .local v4, "t":I
    :goto_1
    if-ge v2, p0, :cond_0

    .line 22293
    aget-short v1, p4, v3

    sub-int v0, p0, v2

    mul-int/2addr v1, v0

    aget-short v0, p6, v4

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    div-int/2addr v1, p0

    int-to-short v0, v1

    aput-short v0, p2, v6

    .line 22294
    add-int/2addr v6, p1

    .line 22295
    add-int/2addr v3, p1

    .line 22296
    add-int/2addr v4, p1

    .line 22297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22298
    .end local v1    # "o":I
    .end local v2    # "u":I
    .end local v3    # "d":I
    .end local v4    # "t":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 22299
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private A0D([SII)V
    .locals 3

    .line 22300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Aj;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    .line 22301
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int/2addr p2, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    mul-int/2addr v0, v2

    mul-int/2addr v2, p3

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22302
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22303
    return-void
.end method

.method private A0E([SII)V
    .locals 6

    .line 22304
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    div-int/2addr v5, p3

    .line 22305
    .local v0, "frameCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int v4, v0, p3

    .line 22306
    .local v2, "samplesPerValue":I
    mul-int/2addr p2, v0

    .line 22307
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 22308
    const/4 v2, 0x0

    .line 22309
    .local v3, "value":I
    const/4 v1, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 22310
    mul-int v0, v3, v4

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    aget-short v0, p1, v0

    add-int/2addr v2, v0

    .line 22311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22312
    .end local v4    # "j":I
    :cond_0
    div-int/2addr v2, v4

    .line 22313
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0L:[S

    int-to-short v0, v2

    aput-short v0, v1, v3

    .line 22314
    .end local v3    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22315
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private A0F(II)Z
    .locals 3

    .line 22316
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A08:I

    if-nez v0, :cond_1

    .line 22317
    :cond_0
    return v2

    .line 22318
    :cond_1
    mul-int/lit8 v0, p1, 0x3

    if-le p2, v0, :cond_2

    .line 22319
    return v2

    .line 22320
    :cond_2
    mul-int/lit8 v1, p1, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A07:I

    mul-int/lit8 v0, v0, 0x3

    if-gt v1, v0, :cond_3

    .line 22321
    return v2

    .line 22322
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private A0G([SII)[S
    .locals 2

    .line 22323
    array-length v0, p1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    div-int/2addr v0, v1

    .line 22324
    .local v0, "currentCapacityFrames":I
    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    .line 22325
    return-object p1

    .line 22326
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 22327
    .local p0, "newCapacityFrames":I
    mul-int/2addr v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A0H()I
    .locals 1

    .line 22328
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    return v0
.end method

.method public final A0I()V
    .locals 1

    .line 22329
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 22330
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22331
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    .line 22332
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A04:I

    .line 22333
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A03:I

    .line 22334
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    .line 22335
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A08:I

    .line 22336
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A07:I

    .line 22337
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A02:I

    .line 22338
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A01:I

    .line 22339
    return-void
.end method

.method public final A0J()V
    .locals 7

    .line 22340
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 22341
    .local v0, "remainingFrameCount":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0D:F

    div-float/2addr v3, v0

    .line 22342
    .local v1, "s":F
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0E:F

    mul-float/2addr v2, v0

    .line 22343
    .local v3, "r":F
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    int-to-float v1, v6

    div-float/2addr v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr v5, v0

    .line 22344
    .local v2, "expectedOutputFrames":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    .line 22345
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Aj;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    .line 22346
    const/4 v4, 0x0

    .local v4, "xSample":I
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0J:I

    mul-int/lit8 v0, v3, 0x2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge v4, v0, :cond_0

    .line 22347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    mul-int/2addr v1, v6

    add-int/2addr v1, v4

    aput-short v2, v0, v1

    .line 22348
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22349
    .end local v4    # "xSample":I
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 22350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aj;->A06()V

    .line 22351
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    if-le v0, v5, :cond_1

    .line 22352
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22353
    :cond_1
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 22354
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A09:I

    .line 22355
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:I

    .line 22356
    return-void
.end method

.method public final A0K(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 22357
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    div-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 22358
    .local v0, "framesToRead":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int/2addr v0, v4

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 22359
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    .line 22360
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int/2addr v4, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:I

    mul-int/2addr v0, v1

    invoke-static {v2, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22361
    return-void
.end method

.method public final A0L(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 22362
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    div-int/2addr v4, v0

    .line 22363
    .local v0, "framesToWrite":I
    mul-int/2addr v0, v4

    mul-int/lit8 v3, v0, 0x2

    .line 22364
    .local v1, "bytesToWrite":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    invoke-direct {p0, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Aj;->A0G([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    .line 22365
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A0G:I

    mul-int/2addr v1, v0

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 22366
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 22367
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aj;->A06()V

    .line 22368
    return-void
.end method
