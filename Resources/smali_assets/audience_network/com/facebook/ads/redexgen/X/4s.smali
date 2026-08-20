.class public final Lcom/facebook/ads/redexgen/X/4s;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 13141
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UqypfisWbLbbWLDfIVvpiaUsz0iS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wEiCJDeLGzLJebV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dRMEhdR7kDOm9Ob"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SmhGT229bW5LAFpAZzaxeRYqKvMDeGhX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QcSoUKFtoryhyFMFYIfDI81ChPsDlMu7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SBvSWfqovIH0ljTVzoffsyrdWCNw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4s;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4J;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 4

    .line 13143
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 13144
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 13145
    :cond_1
    if-nez p5, :cond_2

    .line 13146
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 13147
    :cond_2
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v3

    .line 13148
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4s;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4s;->A00:[Ljava/lang/String;

    const-string v1, "xd2oZUwi45Npmqe"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "1k2xoHfklbXXQiR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v3, p0

    .line 13149
    .local v0, "extend":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4J;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 3

    .line 13150
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 13151
    .end local v0
    .end local v1
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 13152
    :cond_1
    if-nez p5, :cond_2

    .line 13153
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    return v0

    .line 13154
    :cond_2
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v2

    .line 13155
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v2, v0

    .line 13156
    .local v0, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    .line 13157
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 13158
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 13159
    .local v1, "laidOutRange":I
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4J;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;ZZ)I
    .locals 5

    .line 13160
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4s;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/4s;->A00:[Ljava/lang/String;

    const-string v1, "xSzU3PMpL9LC7k2G9V08vNIV3nIP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "UsrmTbcEPDcBULmsiiLKltF5MwgK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 13161
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/4o;
    :cond_1
    return v3

    .line 13162
    :cond_2
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    .line 13163
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    .line 13164
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 13165
    .local v0, "minPosition":I
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    .line 13166
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    .line 13167
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 13168
    .local v2, "maxPosition":I
    if-eqz p6, :cond_3

    .line 13169
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 13170
    .local v1, "itemsBefore":I
    :goto_0
    if-nez p5, :cond_4

    .line 13171
    return v3

    .line 13172
    :cond_3
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 13173
    :cond_4
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v1

    .line 13174
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 13175
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 13176
    .local v3, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    .line 13177
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 13178
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 13179
    .local v4, "itemRange":I
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 13180
    .local p0, "avgSizePerRow":F
    int-to-float v2, v3

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    .line 13181
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    add-float/2addr v2, v0

    .line 13182
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
