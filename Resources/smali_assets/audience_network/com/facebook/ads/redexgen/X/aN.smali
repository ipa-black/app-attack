.class public final Lcom/facebook/ads/redexgen/X/aN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0j;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xc;

.field public final synthetic A01:Ljava/lang/String;

.field public final synthetic A02:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;)V
    .locals 0

    .line 72108
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6B()Ljava/lang/String;
    .locals 1

    .line 72109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A6U()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A03(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A6w()Lcom/facebook/ads/redexgen/X/0h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0j;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/0h;

    move-result-object v0

    return-object v0
.end method
