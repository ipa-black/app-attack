.class public final Lcom/facebook/ads/redexgen/X/Pc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6G;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6G;)V
    .locals 0

    .line 48860
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 48861
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Pc;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A02(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48862
    return-void

    .line 48863
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A01(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Ii;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48864
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A01(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Ii;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A0p:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 48865
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Pc;
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A00(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u()V

    .line 48866
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pd;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A03(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q7;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 48867
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A04(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PK;->A04:Lcom/facebook/ads/redexgen/X/PK;

    const/16 v0, 0xc

    .line 48868
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    goto :goto_1

    .line 48869
    :goto_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    .line 48870
    :goto_1
    return-void

    .line 48871
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/6G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6G;->A05(Lcom/facebook/ads/redexgen/X/6G;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48872
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
