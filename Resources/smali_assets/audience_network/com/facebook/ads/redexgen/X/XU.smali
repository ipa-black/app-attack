.class public final Lcom/facebook/ads/redexgen/X/XU;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7m;->A0C(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/7l;Lcom/facebook/ads/redexgen/X/7k;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 0

    .line 66756
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/Xb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 6

    .line 66757
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7m;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7n;

    .line 66758
    .local v1, "event":Lcom/facebook/ads/redexgen/X/7n;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XU;->A00:Lcom/facebook/ads/redexgen/X/Xb;

    .line 66759
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7n;->A02()Ljava/lang/String;

    move-result-object v3

    .line 66760
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7n;->A00()I

    move-result v2

    .line 66761
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7n;->A01()Lcom/facebook/ads/redexgen/X/7t;

    move-result-object v1

    const/4 v0, 0x0

    .line 66762
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7m;->A0B(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;Z)V

    .line 66763
    .end local v1    # "event":Lcom/facebook/ads/redexgen/X/7n;
    goto :goto_0

    .line 66764
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7m;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66765
    return-void
.end method
