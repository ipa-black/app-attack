.class public final Lcom/facebook/ads/redexgen/X/EM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/BR;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GX;[Lcom/facebook/ads/redexgen/X/BV;ILcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/GP;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/BR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BR;)V
    .locals 0

    .line 31784
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/BR;

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

    .line 31785
    .local v0, "this":Lcom/facebook/ads/redexgen/X/EM;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/BR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BR;->A0M(Lcom/facebook/ads/redexgen/X/BR;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31786
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/BR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BR;->A05(Lcom/facebook/ads/redexgen/X/BR;)Lcom/facebook/ads/redexgen/X/VB;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/BR;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ep;->AAc(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 31787
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/EM;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
