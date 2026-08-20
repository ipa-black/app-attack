.class public final Lcom/facebook/ads/redexgen/X/EZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ee;->A0B(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ee;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ef;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Eg;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Eh;

.field public final synthetic A04:Ljava/io/IOException;

.field public final synthetic A05:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V
    .locals 0

    .line 31897
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EZ;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EZ;->A03:Lcom/facebook/ads/redexgen/X/Eh;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/EZ;->A01:Lcom/facebook/ads/redexgen/X/Ef;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/EZ;->A02:Lcom/facebook/ads/redexgen/X/Eg;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/EZ;->A04:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/EZ;->A05:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jt;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 31898
    .local v0, "this":Lcom/facebook/ads/redexgen/X/EZ;
    :try_start_0
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/EZ;->A03:Lcom/facebook/ads/redexgen/X/Eh;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/EZ;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Ee;->A00:I

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/EZ;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/ER;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/EZ;->A01:Lcom/facebook/ads/redexgen/X/Ef;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/EZ;->A02:Lcom/facebook/ads/redexgen/X/Eg;

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/EZ;->A04:Ljava/io/IOException;

    iget-boolean v8, v1, Lcom/facebook/ads/redexgen/X/EZ;->A05:Z

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Eh;->ABW(ILcom/facebook/ads/redexgen/X/ER;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V

    .line 31899
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/EZ;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Jt;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
