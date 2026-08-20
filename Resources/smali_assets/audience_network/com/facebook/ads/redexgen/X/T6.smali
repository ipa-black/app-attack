.class public final Lcom/facebook/ads/redexgen/X/T6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Od;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T0;->A0K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T0;)V
    .locals 0

    .line 54140
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T6;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABN()V
    .locals 2

    .line 54141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T6;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A0G(Lcom/facebook/ads/redexgen/X/T0;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T6;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A0U(Lcom/facebook/ads/redexgen/X/T0;)V

    .line 54143
    return-void
.end method
