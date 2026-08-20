.class public final Lcom/facebook/ads/redexgen/X/S8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Od;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8w;->A0C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8w;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8w;)V
    .locals 0

    .line 51683
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABN()V
    .locals 3

    .line 51684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8w;->A04(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Ii;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A0M:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 51685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8w;->A02(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A51()V

    .line 51686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8w;->A09(Lcom/facebook/ads/redexgen/X/8w;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0W()V

    .line 51687
    return-void
.end method
