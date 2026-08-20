.class public final Lcom/facebook/ads/redexgen/X/Ax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/B2;->A00()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/B2;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/B3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/B2;Lcom/facebook/ads/redexgen/X/B3;)V
    .locals 0

    .line 22692
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:Lcom/facebook/ads/redexgen/X/B2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:Lcom/facebook/ads/redexgen/X/B3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 22693
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ax;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ax;->A01:Lcom/facebook/ads/redexgen/X/B3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/B3;->AAn()V

    .line 22694
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Ax;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
