.class public final Lcom/facebook/ads/redexgen/X/5w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5v;
    }
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/5v;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5v;)V
    .locals 6

    .line 14932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5w;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5v;J)V

    .line 14933
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5v;J)V
    .locals 0

    .line 14934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14935
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5w;->A02:Ljava/lang/String;

    .line 14936
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Z

    .line 14937
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5w;->A01:Lcom/facebook/ads/redexgen/X/5v;

    .line 14938
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:J

    .line 14939
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/5w;
    .locals 6

    .line 14940
    new-instance v0, Lcom/facebook/ads/redexgen/X/5w;

    sget-object v3, Lcom/facebook/ads/redexgen/X/5v;->A06:Lcom/facebook/ads/redexgen/X/5v;

    const-string v1, ""

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5w;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5v;J)V

    return-object v0
.end method


# virtual methods
.method public final A01()J
    .locals 2

    .line 14941
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:J

    return-wide v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/5v;
    .locals 1

    .line 14942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A01:Lcom/facebook/ads/redexgen/X/5v;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 14943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Z
    .locals 1

    .line 14944
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Z

    return v0
.end method
