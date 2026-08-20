.class public final Lcom/facebook/ads/redexgen/X/Ec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ee;->A0C(Lcom/facebook/ads/redexgen/X/Eg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ee;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Eg;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Eh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 0

    .line 31929
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ec;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ec;->A02:Lcom/facebook/ads/redexgen/X/Eh;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ec;->A01:Lcom/facebook/ads/redexgen/X/Eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 31930
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Ec;
    :try_start_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Ec;->A02:Lcom/facebook/ads/redexgen/X/Eh;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ec;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ee;->A00:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ec;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/ER;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ec;->A01:Lcom/facebook/ads/redexgen/X/Eg;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Eh;->AAm(ILcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/Eg;)V

    .line 31931
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Ec;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
