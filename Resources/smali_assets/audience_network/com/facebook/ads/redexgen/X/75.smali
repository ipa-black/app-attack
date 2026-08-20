.class public final Lcom/facebook/ads/redexgen/X/75;
.super Lcom/facebook/ads/redexgen/X/PT;
.source ""


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/72;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/6z;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/NC;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/6y;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/M0;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/Ly;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/Lx;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/Kc;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Lcom/facebook/ads/redexgen/X/8V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8V<",
            "Lcom/facebook/ads/redexgen/X/KD;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/RA;

.field public final A0C:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Kr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;)V
    .locals 6

    .line 16177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/75;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/util/List;Ljava/lang/String;)V

    .line 16178
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/75;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 16180
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            "Lcom/facebook/ads/redexgen/X/RA;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16181
    .local p5, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/75;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 16182
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            "Lcom/facebook/ads/redexgen/X/RA;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/2A;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16183
    .local p1, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    move-object/from16 v8, p3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/RA;->A0h()Z

    move-result v0

    const/4 v4, 0x1

    xor-int/lit8 v11, v0, 0x1

    new-instance v12, Lcom/facebook/ads/redexgen/X/PS;

    move-object v6, p1

    invoke-direct {v12, v6, v8}, Lcom/facebook/ads/redexgen/X/PS;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/View;)V

    .line 16184
    move-object v5, p0

    move-object v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/PT;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/PI;)V

    .line 16185
    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/76;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    .line 16186
    new-instance v0, Lcom/facebook/ads/redexgen/X/R7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R7;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A07:Lcom/facebook/ads/redexgen/X/8V;

    .line 16187
    new-instance v0, Lcom/facebook/ads/redexgen/X/R6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R6;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A03:Lcom/facebook/ads/redexgen/X/8V;

    .line 16188
    new-instance v0, Lcom/facebook/ads/redexgen/X/R5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R5;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A04:Lcom/facebook/ads/redexgen/X/8V;

    .line 16189
    new-instance v0, Lcom/facebook/ads/redexgen/X/R4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R4;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A05:Lcom/facebook/ads/redexgen/X/8V;

    .line 16190
    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R3;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A02:Lcom/facebook/ads/redexgen/X/8V;

    .line 16191
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Qz;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A06:Lcom/facebook/ads/redexgen/X/8V;

    .line 16192
    new-instance v0, Lcom/facebook/ads/redexgen/X/QD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QD;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A09:Lcom/facebook/ads/redexgen/X/8V;

    .line 16193
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pb;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0A:Lcom/facebook/ads/redexgen/X/8V;

    .line 16194
    new-instance v0, Lcom/facebook/ads/redexgen/X/R9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R9;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A08:Lcom/facebook/ads/redexgen/X/8V;

    .line 16195
    new-instance v0, Lcom/facebook/ads/redexgen/X/78;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/78;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0C:Lcom/facebook/ads/redexgen/X/M9;

    .line 16196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/75;->A01:Z

    .line 16197
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/75;->A0B:Lcom/facebook/ads/redexgen/X/RA;

    .line 16198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0B:Lcom/facebook/ads/redexgen/X/RA;

    .line 16199
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/16 v0, 0xb

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A05:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A07:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A04:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A03:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A02:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A06:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A09:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0A:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0C:Lcom/facebook/ads/redexgen/X/M9;

    aput-object v0, v2, v1

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A08:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v2, v1

    .line 16200
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 16201
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 16
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            "Lcom/facebook/ads/redexgen/X/RA;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/2A;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16202
    .local p2, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local p5, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object v2, v1

    .line 16203
    move-object/from16 v3, p3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RA;->A0h()Z

    move-result v0

    const/4 v5, 0x1

    xor-int/lit8 v12, v0, 0x1

    new-instance v15, Lcom/facebook/ads/redexgen/X/PS;

    move-object/from16 v7, p1

    invoke-direct {v15, v7, v3}, Lcom/facebook/ads/redexgen/X/PS;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/View;)V

    .line 16204
    move-object v6, v1

    move-object v9, v3

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v6 .. v15}, Lcom/facebook/ads/redexgen/X/PT;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/PI;)V

    .line 16205
    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/76;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    .line 16206
    new-instance v0, Lcom/facebook/ads/redexgen/X/R7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R7;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A07:Lcom/facebook/ads/redexgen/X/8V;

    .line 16207
    new-instance v0, Lcom/facebook/ads/redexgen/X/R6;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R6;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A03:Lcom/facebook/ads/redexgen/X/8V;

    .line 16208
    new-instance v0, Lcom/facebook/ads/redexgen/X/R5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R5;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A04:Lcom/facebook/ads/redexgen/X/8V;

    .line 16209
    new-instance v0, Lcom/facebook/ads/redexgen/X/R4;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R4;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A05:Lcom/facebook/ads/redexgen/X/8V;

    .line 16210
    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R3;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A02:Lcom/facebook/ads/redexgen/X/8V;

    .line 16211
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qz;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Qz;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A06:Lcom/facebook/ads/redexgen/X/8V;

    .line 16212
    new-instance v0, Lcom/facebook/ads/redexgen/X/QD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QD;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A09:Lcom/facebook/ads/redexgen/X/8V;

    .line 16213
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Pb;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A0A:Lcom/facebook/ads/redexgen/X/8V;

    .line 16214
    new-instance v0, Lcom/facebook/ads/redexgen/X/R9;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R9;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A08:Lcom/facebook/ads/redexgen/X/8V;

    .line 16215
    new-instance v0, Lcom/facebook/ads/redexgen/X/78;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/78;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A0C:Lcom/facebook/ads/redexgen/X/M9;

    .line 16216
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/75;->A01:Z

    .line 16217
    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/75;->A0B:Lcom/facebook/ads/redexgen/X/RA;

    .line 16218
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A0B:Lcom/facebook/ads/redexgen/X/RA;

    .line 16219
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v4

    const/16 v0, 0xa

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    aput-object v0, v3, v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A05:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v5

    const/4 v1, 0x2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A07:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    const/4 v1, 0x3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A04:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    const/4 v1, 0x4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A03:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    const/4 v1, 0x5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A02:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    const/4 v1, 0x6

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A06:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    const/4 v1, 0x7

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A09:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    const/16 v1, 0x8

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A0A:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    const/16 v1, 0x9

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/75;->A08:Lcom/facebook/ads/redexgen/X/8V;

    aput-object v0, v3, v1

    .line 16220
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 16221
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16222
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A0A:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16223
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A08:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16224
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A05:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16225
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A07:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16226
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A04:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16227
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A03:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16228
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A02:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16229
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A06:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/8V;
    .locals 0

    .line 16230
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A09:Lcom/facebook/ads/redexgen/X/8V;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 16231
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A0B:Lcom/facebook/ads/redexgen/X/RA;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/M9;
    .locals 0

    .line 16232
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A0C:Lcom/facebook/ads/redexgen/X/M9;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/Kr;
    .locals 0

    .line 16233
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/75;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/75;)Z
    .locals 0

    .line 16234
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/75;->A01:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/75;Z)Z
    .locals 0

    .line 16235
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/75;->A01:Z

    return p1
.end method


# virtual methods
.method public final A0g()V
    .locals 2

    .line 16236
    new-instance v1, Lcom/facebook/ads/redexgen/X/R8;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/R8;-><init>(Lcom/facebook/ads/redexgen/X/75;)V

    .line 16237
    .local v0, "unregisterRunnable":Lcom/facebook/ads/redexgen/X/K1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0B:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16238
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LF;->A00(Ljava/lang/Runnable;)V

    .line 16239
    :goto_0
    return-void

    .line 16240
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/75;->A0B:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getStateHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
