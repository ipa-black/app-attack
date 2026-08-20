.class public final Lcom/facebook/ads/redexgen/X/Lf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lg;->setAdDetails(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Lj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1V;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ii;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Lg;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Lj;

.field public final synthetic A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lg;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Lj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;)V
    .locals 0

    .line 43679
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lf;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Lf;->A01:Lcom/facebook/ads/redexgen/X/Ii;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Lf;->A03:Lcom/facebook/ads/redexgen/X/Lj;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Lf;->A04:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 43680
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Lf;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Lf;->A01:Lcom/facebook/ads/redexgen/X/Ii;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A0A:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 43681
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lf;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lg;->A00(Lcom/facebook/ads/redexgen/X/Lg;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lf;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lg;->A01(Lcom/facebook/ads/redexgen/X/Lg;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43682
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Lf;->A03:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Lf;->A04:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/1V;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A8y(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;)V

    goto :goto_0

    .line 43683
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Lf;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/1V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43684
    new-instance v3, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lf;->A02:Lcom/facebook/ads/redexgen/X/Lg;

    .line 43685
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lg;->A01(Lcom/facebook/ads/redexgen/X/Lg;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/1V;

    .line 43686
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lf;->A04:Ljava/lang/String;

    .line 43687
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KS;->A0E(Lcom/facebook/ads/redexgen/X/KS;Lcom/facebook/ads/redexgen/X/Xc;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 43688
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
