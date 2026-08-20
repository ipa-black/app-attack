.class public final Lcom/facebook/ads/redexgen/X/IE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/IF;->A05(Lcom/facebook/ads/redexgen/X/Ap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ap;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/IF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IF;Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 0

    .line 37983
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IE;->A01:Lcom/facebook/ads/redexgen/X/IF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IE;->A00:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 37984
    .local v0, "this":Lcom/facebook/ads/redexgen/X/IE;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/IE;->A00:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00()V

    .line 37985
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/IE;->A01:Lcom/facebook/ads/redexgen/X/IF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A00(Lcom/facebook/ads/redexgen/X/IF;)Lcom/facebook/ads/redexgen/X/IG;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/IE;->A00:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IG;->ACx(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 37986
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/IE;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
