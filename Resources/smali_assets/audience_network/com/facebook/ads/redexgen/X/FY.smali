.class public final Lcom/facebook/ads/redexgen/X/FY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:[I

.field public static final A0S:[I

.field public static final A0T:[I

.field public static final A0U:[I

.field public static final A0V:[I

.field public static final A0W:[I

.field public static final A0X:[I

.field public static final A0Y:[Z


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

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:Landroid/text/SpannableStringBuilder;

.field public final A0L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 33185
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bEAjJCvVtkePzUcw9rvynCWhWZ7YtTC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sFv5If9m5Sphdt63zNjPhUbGsirLMRkb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dm26J1OSzusJji0dpgrnr09k5LC689lq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Nx5OZNPL7zWyatFSZAWV1dERcLRuFkfb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8nXEVS4hfg5ng3YQnnC7NT8u0hAmIJYk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i1gAYPXKkwHe1sE5BOr5igG8IxAvgiYs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y1prefJax7dGS9GUqUH50jWlMMgJtsPr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K9Y4TfEKpnP3QqzXtNTgN9rOyJLVMPLw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FY;->A04()V

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-static {v9, v9, v9, v8}, Lcom/facebook/ads/redexgen/X/FY;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/FY;->A0P:I

    .line 33186
    invoke-static {v8, v8, v8, v8}, Lcom/facebook/ads/redexgen/X/FY;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/FY;->A0O:I

    .line 33187
    const/4 v7, 0x3

    invoke-static {v8, v8, v8, v7}, Lcom/facebook/ads/redexgen/X/FY;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/FY;->A0Q:I

    .line 33188
    const/4 v10, 0x7

    new-array v0, v10, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0V:[I

    .line 33189
    new-array v0, v10, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0W:[I

    .line 33190
    new-array v0, v10, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0X:[I

    .line 33191
    new-array v0, v10, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0Y:[Z

    .line 33192
    new-array v0, v10, [I

    sget v6, Lcom/facebook/ads/redexgen/X/FY;->A0O:I

    aput v6, v0, v8

    sget v5, Lcom/facebook/ads/redexgen/X/FY;->A0Q:I

    const/4 v4, 0x1

    aput v5, v0, v4

    aput v6, v0, v9

    aput v6, v0, v7

    const/4 v3, 0x4

    aput v5, v0, v3

    const/4 v2, 0x5

    aput v6, v0, v2

    const/4 v1, 0x6

    aput v6, v0, v1

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0U:[I

    .line 33193
    new-array v0, v10, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0T:[I

    .line 33194
    new-array v0, v10, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0S:[I

    .line 33195
    new-array v0, v10, [I

    aput v6, v0, v8

    aput v6, v0, v4

    aput v6, v0, v9

    aput v6, v0, v7

    aput v6, v0, v3

    aput v5, v0, v2

    aput v5, v0, v1

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0R:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 33196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    .line 33198
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33199
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FY;->A08()V

    .line 33200
    return-void
.end method

.method public static A00(III)I
    .locals 1

    .line 33201
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/FY;->A01(IIII)I

    move-result v0

    return v0
.end method

.method public static A01(IIII)I
    .locals 5

    .line 33202
    const/4 v0, 0x4

    const/4 v4, 0x0

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/HD;->A00(III)I

    .line 33203
    invoke-static {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/HD;->A00(III)I

    .line 33204
    invoke-static {p2, v4, v0}, Lcom/facebook/ads/redexgen/X/HD;->A00(III)I

    .line 33205
    invoke-static {p3, v4, v0}, Lcom/facebook/ads/redexgen/X/HD;->A00(III)I

    .line 33206
    const/4 v3, 0x1

    if-eqz p3, :cond_5

    if-eq p3, v3, :cond_5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    .line 33207
    const/16 v2, 0xff

    .line 33208
    .local v2, "alpha":I
    :goto_0
    if-le p0, v3, :cond_2

    const/16 v1, 0xff

    :goto_1
    if-le p1, v3, :cond_1

    const/16 v0, 0xff

    :goto_2
    if-le p2, v3, :cond_0

    const/16 v4, 0xff

    :cond_0
    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 33209
    .end local v2    # "alpha":I
    :cond_3
    const/4 v2, 0x0

    .line 33210
    .restart local v2    # "alpha":I
    goto :goto_0

    .line 33211
    .end local v2    # "alpha":I
    :cond_4
    const/16 v2, 0x7f

    .line 33212
    .restart local v2    # "alpha":I
    goto :goto_0

    .line 33213
    .end local v2    # "alpha":I
    :cond_5
    const/16 v2, 0xff

    .line 33214
    .restart local v2    # "alpha":I
    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const-string v1, "8rUrM1V8E4s8KseOh9tsUeZXjOFK47E1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3
.end method

.method private final A02()Landroid/text/SpannableString;
    .locals 8

    .line 33215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 33216
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 33217
    .local v1, "length":I
    if-lez v5, :cond_4

    .line 33218
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    const/16 v3, 0x21

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 33219
    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33220
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    if-eq v0, v6, :cond_1

    .line 33221
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33222
    :cond_1
    iget v7, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const-string v1, "UcnYu1PwHAGC3vbuX83YmC5zO9IPxpwr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_3

    .line 33223
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:I

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33224
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    if-eq v0, v6, :cond_4

    .line 33225
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:I

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33226
    :cond_4
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

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
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FY;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x6at
        0x61t
        0x7ct
        0x74t
        0x61t
        0x67t
        0x70t
        0x61t
        0x60t
        0x24t
        0x6et
        0x71t
        0x77t
        0x70t
        0x6dt
        0x62t
        0x6dt
        0x67t
        0x65t
        0x70t
        0x6dt
        0x6bt
        0x6at
        0x24t
        0x72t
        0x65t
        0x68t
        0x71t
        0x61t
        0x3et
        0x24t
    .end array-data
.end method


# virtual methods
.method public final A05()Lcom/facebook/ads/redexgen/X/V4;
    .locals 17

    .line 33227
    move-object/from16 v3, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/FY;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33228
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const-string v1, "XXMrNDw86HMhGPknailYt8C4YmEezPlD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    .line 33229
    :cond_1
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 33230
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 33231
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33232
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 33233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33234
    .end local v2    # "i":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/FY;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33235
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FY;->A07:I

    const/4 v4, 0x3

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_b

    const/4 v0, 0x2

    if-eq v1, v0, :cond_a

    if-ne v1, v4, :cond_c

    .line 33236
    .end local v2
    :cond_3
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 33237
    .restart local v2    # "i":I
    .end local v2    # "i":I
    .local v14, "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A0H:Z

    if-eqz v0, :cond_9

    .line 33238
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A05:I

    int-to-float v11, v0

    const/high16 v5, 0x42c60000    # 99.0f

    div-float/2addr v11, v5

    .line 33239
    .local v2, "position":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A0D:I

    int-to-float v1, v0

    div-float/2addr v1, v5

    .line 33240
    .local v6, "line":F
    .restart local v6    # "line":F
    :goto_2
    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v11, v8

    const v0, 0x3d4ccccd    # 0.05f

    add-float/2addr v11, v0

    .line 33241
    .end local v2    # "position":F
    .local v15, "position":F
    mul-float/2addr v8, v1

    add-float/2addr v8, v0

    .line 33242
    .end local v6    # "line":F
    .local v16, "line":F
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FY;->A00:I

    rem-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_7

    .line 33243
    const/4 v10, 0x0

    .line 33244
    .local v2, "verticalAnchorType":I
    .local p0, "verticalAnchorType":I
    :goto_3
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FY;->A00:I

    div-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_5

    .line 33245
    const/4 v12, 0x0

    .line 33246
    .local v2, "horizontalAnchorType":I
    .local p1, "horizontalAnchorType":I
    :goto_4
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FY;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/FY;->A0O:I

    if-eq v1, v0, :cond_4

    const/4 v14, 0x1

    .line 33247
    .local v11, "windowColorSet":Z
    :goto_5
    new-instance v5, Lcom/facebook/ads/redexgen/X/V4;

    const/4 v9, 0x0

    const/4 v13, 0x1

    iget v15, v3, Lcom/facebook/ads/redexgen/X/FY;->A0E:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A09:I

    move/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/V4;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v5

    .line 33248
    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    .line 33249
    .end local v2    # "horizontalAnchorType":I
    :cond_5
    div-int/2addr v1, v4

    if-ne v1, v2, :cond_6

    .line 33250
    const/4 v12, 0x1

    .restart local v2    # "horizontalAnchorType":I
    goto :goto_4

    .line 33251
    .end local v2    # "horizontalAnchorType":I
    :cond_6
    const/4 v12, 0x2

    goto :goto_4

    .line 33252
    .end local v2
    :cond_7
    rem-int/2addr v1, v4

    if-ne v1, v2, :cond_8

    .line 33253
    const/4 v10, 0x1

    .restart local v2    # "horizontalAnchorType":I
    goto :goto_3

    .line 33254
    .end local v2    # "horizontalAnchorType":I
    :cond_8
    const/4 v10, 0x2

    goto :goto_3

    .line 33255
    .end local v2
    .end local v6
    :cond_9
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A05:I

    int-to-float v11, v0

    const/high16 v0, 0x43510000    # 209.0f

    div-float/2addr v11, v0

    .line 33256
    .restart local v2    # "horizontalAnchorType":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A0D:I

    int-to-float v1, v0

    const/high16 v0, 0x42940000    # 74.0f

    div-float/2addr v1, v0

    goto :goto_2

    .line 33257
    :cond_a
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 33258
    .local v2, "alignment":Landroid/text/Layout$Alignment;
    goto :goto_1

    .line 33259
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :cond_b
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 33260
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_1

    .line 33261
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/FY;->A07:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()V
    .locals 3

    .line 33262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 33263
    .local v0, "length":I
    if-lez v2, :cond_0

    .line 33264
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 33265
    :cond_0
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 33266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 33268
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    .line 33269
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    .line 33270
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    .line 33271
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    .line 33272
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:I

    .line 33273
    return-void
.end method

.method public final A08()V
    .locals 2

    .line 33274
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FY;->A07()V

    .line 33275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0G:Z

    .line 33276
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0J:Z

    .line 33277
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A09:I

    .line 33278
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0H:Z

    .line 33279
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0D:I

    .line 33280
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A05:I

    .line 33281
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A00:I

    .line 33282
    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0B:I

    .line 33283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0I:Z

    .line 33284
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A07:I

    .line 33285
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0F:I

    .line 33286
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A08:I

    .line 33287
    sget v1, Lcom/facebook/ads/redexgen/X/FY;->A0O:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0E:I

    .line 33288
    sget v0, Lcom/facebook/ads/redexgen/X/FY;->A0P:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:I

    .line 33289
    iput v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:I

    .line 33290
    return-void
.end method

.method public final A09(C)V
    .locals 6

    .line 33291
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 33292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FY;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 33294
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    .line 33295
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    .line 33296
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    if-eq v0, v1, :cond_1

    .line 33297
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    .line 33298
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    if-eq v0, v1, :cond_2

    .line 33299
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    .line 33300
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    if-eq v0, v1, :cond_3

    .line 33301
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    .line 33302
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0I:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A0B:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const-string v1, "z94yFfaTy8Odmt8n2fLZMjDbCxUThPz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    .line 33303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v0, 0xf

    if-lt v1, v0, :cond_8

    .line 33304
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 33305
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 33306
    :cond_8
    return-void
.end method

.method public final A0A(II)V
    .locals 1

    .line 33307
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:I

    if-eq v0, p1, :cond_0

    .line 33308
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 33309
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:I

    .line 33310
    return-void
.end method

.method public final A0B(III)V
    .locals 6

    .line 33311
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    const/16 v4, 0x21

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 33312
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:I

    if-eq v0, p1, :cond_0

    .line 33313
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33314
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33315
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33316
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/FY;->A0P:I

    if-eq p1, v0, :cond_1

    .line 33317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    .line 33318
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:I

    .line 33319
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    if-eq v0, v5, :cond_2

    .line 33320
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:I

    if-eq v0, p2, :cond_2

    .line 33321
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33322
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33323
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33324
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/FY;->A0O:I

    if-eq p2, v0, :cond_3

    .line 33325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:I

    .line 33326
    iput p2, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:I

    .line 33327
    :cond_3
    return-void
.end method

.method public final A0C(IIIZZII)V
    .locals 6

    .line 33328
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    const/16 v5, 0x21

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 33329
    if-nez p4, :cond_0

    .line 33330
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x2

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33331
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33332
    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33333
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    .line 33334
    :cond_0
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33335
    :cond_1
    if-eqz p4, :cond_0

    .line 33336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const-string v1, "GaQXCBjIxpWixMOvnA1JS7CVs7IBjZSt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_4

    .line 33337
    if-nez p5, :cond_3

    .line 33338
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33339
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33340
    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33341
    iput v4, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    .line 33342
    :cond_3
    :goto_1
    return-void

    .line 33343
    :cond_4
    if-eqz p5, :cond_3

    .line 33344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0C:I

    goto :goto_1
.end method

.method public final A0D(IIZIIII)V
    .locals 0

    .line 33345
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0E:I

    .line 33346
    iput p7, p0, Lcom/facebook/ads/redexgen/X/FY;->A07:I

    .line 33347
    return-void
.end method

.method public final A0E(Z)V
    .locals 0

    .line 33348
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0J:Z

    .line 33349
    return-void
.end method

.method public final A0F(ZZZIZIIIIIII)V
    .locals 11

    .line 33350
    move-object v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0G:Z

    .line 33351
    iput-boolean p1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0J:Z

    .line 33352
    iput-boolean p2, v0, Lcom/facebook/ads/redexgen/X/FY;->A0I:Z

    .line 33353
    iput p4, v0, Lcom/facebook/ads/redexgen/X/FY;->A09:I

    .line 33354
    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0H:Z

    .line 33355
    move/from16 v1, p6

    iput v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0D:I

    .line 33356
    move/from16 v1, p7

    iput v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A05:I

    .line 33357
    move/from16 v1, p10

    iput v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A00:I

    .line 33358
    iget v2, v0, Lcom/facebook/ads/redexgen/X/FY;->A0B:I

    add-int/lit8 v1, p8, 0x1

    if-eq v2, v1, :cond_3

    .line 33359
    add-int/lit8 v4, p8, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v2, v1

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x73

    if-eq v2, v1, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/FY;->A0N:[Ljava/lang/String;

    const-string v2, "GL1AptVbsbHBPnQiC9PDsuTMTdKpKMZ4"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    iput v4, v0, Lcom/facebook/ads/redexgen/X/FY;->A0B:I

    .line 33360
    :goto_0
    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0B:I

    if-ge v2, v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    .line 33361
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v1, 0xf

    if-lt v2, v1, :cond_3

    .line 33362
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33363
    :cond_3
    move/from16 v2, p11

    if-eqz v2, :cond_4

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A0F:I

    if-eq v1, v2, :cond_4

    .line 33364
    iput v2, v0, Lcom/facebook/ads/redexgen/X/FY;->A0F:I

    .line 33365
    add-int/lit8 v2, v2, -0x1

    .line 33366
    .local p5, "windowStyleIdIndex":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0U:[I

    aget v3, v1, v2

    sget v4, Lcom/facebook/ads/redexgen/X/FY;->A0Q:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0Y:[Z

    aget-boolean v5, v1, v2

    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0W:[I

    aget v7, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0X:[I

    aget v8, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0V:[I

    aget v9, v1, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/FY;->A0D(IIZIIII)V

    .line 33367
    .end local p5    # "windowStyleIdIndex":I
    :cond_4
    move/from16 v2, p12

    if-eqz v2, :cond_5

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A08:I

    if-eq v1, v2, :cond_5

    .line 33368
    iput v2, v0, Lcom/facebook/ads/redexgen/X/FY;->A08:I

    .line 33369
    add-int/lit8 v2, v2, -0x1

    .line 33370
    .local p5, "penStyleIdIndex":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0S:[I

    aget v9, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0T:[I

    aget v10, v1, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/FY;->A0C(IIIZZII)V

    .line 33371
    sget v3, Lcom/facebook/ads/redexgen/X/FY;->A0P:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FY;->A0R:[I

    aget v2, v1, v2

    sget v1, Lcom/facebook/ads/redexgen/X/FY;->A0O:I

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/FY;->A0B(III)V

    .line 33372
    .end local p5    # "penStyleIdIndex":I
    :cond_5
    return-void
.end method

.method public final A0G()Z
    .locals 1

    .line 33373
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0G:Z

    return v0
.end method

.method public final A0H()Z
    .locals 1

    .line 33374
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FY;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 1

    .line 33375
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0J:Z

    return v0
.end method
