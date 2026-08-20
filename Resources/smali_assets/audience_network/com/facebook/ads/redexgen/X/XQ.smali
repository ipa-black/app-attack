.class public final Lcom/facebook/ads/redexgen/X/XQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7r;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DeprecatedMethod"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/7N;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7N;)V
    .locals 0

    .line 66688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66689
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    .line 66690
    return-void
.end method


# virtual methods
.method public final A3S(Ljava/lang/Throwable;)V
    .locals 0

    .line 66691
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7m;->A0E(Ljava/lang/Throwable;)V

    .line 66692
    return-void
.end method

.method public final A8S(Ljava/lang/String;)V
    .locals 1

    .line 66693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Il;->A08(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;)V

    .line 66694
    return-void
.end method

.method public final A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 1

    .line 66695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7m;->A06(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 66696
    return-void
.end method

.method public final A9D(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 1

    .line 66697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7m;->A06(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 66698
    return-void
.end method

.method public final A9M(JJJJILjava/lang/Exception;)V
    .locals 11
    .param p10    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66699
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/7x;->A03(Lcom/facebook/ads/redexgen/X/7N;JJJJILjava/lang/Exception;)V

    .line 66700
    return-void
.end method

.method public final A9V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 1

    .line 66701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7m;->A07(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 66702
    return-void
.end method

.method public final A9c(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V
    .locals 1

    .line 66703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7m;->A08(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 66704
    return-void
.end method

.method public final A9i()V
    .locals 1

    .line 66705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XQ;->A00:Lcom/facebook/ads/redexgen/X/7N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A03()Lcom/facebook/ads/redexgen/X/7Q;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7Q;->A9i()V

    .line 66706
    return-void
.end method
