.class public final Lcom/facebook/ads/redexgen/X/O8;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Nm;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)Lcom/facebook/ads/redexgen/X/8x;
    .locals 1

    .line 46833
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46834
    new-instance v0, Lcom/facebook/ads/redexgen/X/1i;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/1i;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)V

    .line 46835
    :goto_0
    return-object v0

    .line 46836
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/26;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/26;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)V

    goto :goto_0
.end method
