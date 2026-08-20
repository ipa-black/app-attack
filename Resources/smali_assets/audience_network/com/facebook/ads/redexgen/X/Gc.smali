.class public final Lcom/facebook/ads/redexgen/X/Gc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Um;->A01(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:J

.field public final synthetic A02:J

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Um;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Um;IJJ)V
    .locals 0

    .line 35134
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gc;->A03:Lcom/facebook/ads/redexgen/X/Um;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gc;->A00:I

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Gc;->A02:J

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Gc;->A01:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 35135
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Gc;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Gc;->A03:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A00(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/GR;

    move-result-object v2

    iget v3, v1, Lcom/facebook/ads/redexgen/X/Gc;->A00:I

    iget-wide v4, v1, Lcom/facebook/ads/redexgen/X/Gc;->A02:J

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/Gc;->A01:J

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/GR;->AAN(IJJ)V

    .line 35136
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Gc;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
