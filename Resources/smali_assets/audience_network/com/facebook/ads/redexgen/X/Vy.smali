.class public final Lcom/facebook/ads/redexgen/X/Vy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/CP;)V
    .locals 0

    .line 61004
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vy;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4V()Lcom/facebook/ads/redexgen/X/Be;
    .locals 3

    .line 61005
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WU;-><init>(J)V

    return-object v0
.end method

.method public final ADq(Lcom/facebook/ads/redexgen/X/BW;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61006
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final AFR(J)J
    .locals 2

    .line 61007
    const-wide/16 v0, 0x0

    return-wide v0
.end method
