.class public final Lcom/facebook/ads/redexgen/X/SI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SG;->A0G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SG;)V
    .locals 0

    .line 52075
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAe()V
    .locals 3

    .line 52076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A04(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Ii;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A0J:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 52077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/SG;->A03(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FD;->A0G()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SG;->A0M(Lcom/facebook/ads/redexgen/X/SG;Ljava/lang/String;)V

    .line 52078
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:Lcom/facebook/ads/redexgen/X/SG;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SG;->A0N(Lcom/facebook/ads/redexgen/X/SG;Z)V

    .line 52079
    return-void
.end method
