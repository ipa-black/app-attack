.class public final Lcom/facebook/ads/redexgen/X/XB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XA;->A05(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/7e;Lcom/facebook/ads/redexgen/X/QG;)Lcom/facebook/ads/redexgen/X/Ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xb;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ja;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 0

    .line 66559
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:Lcom/facebook/ads/redexgen/X/Ja;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:Lcom/facebook/ads/redexgen/X/Xb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66560
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:Lcom/facebook/ads/redexgen/X/Ja;

    .line 66561
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8N;->A00()Lcom/facebook/ads/redexgen/X/8N;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:Lcom/facebook/ads/redexgen/X/Xb;

    .line 66562
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->A01(Lcom/facebook/ads/redexgen/X/7N;Z)Lcom/facebook/ads/redexgen/X/8M;

    move-result-object v0

    .line 66563
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8M;->A6d()Ljava/util/Map;

    move-result-object v0

    .line 66564
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ja;->A08(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
