.class public final Lcom/facebook/ads/redexgen/X/YY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/E9;->A0e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 0

    .line 68119
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 5

    .line 68120
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 68121
    :goto_0
    return-void

    .line 68122
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/4Z;->A1S(Lcom/facebook/ads/redexgen/X/E9;III)V

    goto :goto_0

    .line 68123
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1T(Lcom/facebook/ads/redexgen/X/E9;IILjava/lang/Object;)V

    .line 68124
    goto :goto_0

    .line 68125
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1R(Lcom/facebook/ads/redexgen/X/E9;II)V

    .line 68126
    goto :goto_0

    .line 68127
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1Q(Lcom/facebook/ads/redexgen/X/E9;II)V

    .line 68128
    goto :goto_0
.end method


# virtual methods
.method public final A5S(I)Lcom/facebook/ads/redexgen/X/4r;
    .locals 4

    .line 68129
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/E9;->A1G(IZ)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v3

    .line 68130
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/4r;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 68131
    return-object v2

    .line 68132
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/3x;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68133
    return-object v2

    .line 68134
    :cond_1
    return-object v3
.end method

.method public final A9g(IILjava/lang/Object;)V
    .locals 2

    .line 68135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/E9;->A1g(IILjava/lang/Object;)V

    .line 68136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/E9;->A0H:Z

    .line 68137
    return-void
.end method

.method public final AA0(II)V
    .locals 2

    .line 68138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/E9;->A1d(II)V

    .line 68139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/E9;->A0G:Z

    .line 68140
    return-void
.end method

.method public final AA1(II)V
    .locals 2

    .line 68141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/E9;->A1e(II)V

    .line 68142
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/E9;->A0G:Z

    .line 68143
    return-void
.end method

.method public final AA2(II)V
    .locals 2

    .line 68144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/E9;->A1h(IIZ)V

    .line 68145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0G:Z

    .line 68146
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4o;->A00:I

    add-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4o;->A00:I

    .line 68147
    return-void
.end method

.method public final AA3(II)V
    .locals 2

    .line 68148
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/E9;->A1h(IIZ)V

    .line 68149
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/E9;->A0G:Z

    .line 68150
    return-void
.end method

.method public final AAi(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 0

    .line 68151
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YY;->A00(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 68152
    return-void
.end method

.method public final AAk(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 0

    .line 68153
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YY;->A00(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 68154
    return-void
.end method
