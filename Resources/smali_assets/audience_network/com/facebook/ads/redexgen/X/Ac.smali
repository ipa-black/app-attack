.class public final Lcom/facebook/ads/redexgen/X/Ac;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackParametersCheckpoint"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/9a;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9a;JJ)V
    .locals 0

    .line 21940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21941
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ac;->A02:Lcom/facebook/ads/redexgen/X/9a;

    .line 21942
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ac;->A00:J

    .line 21943
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Ac;->A01:J

    .line 21944
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9a;JJLcom/facebook/ads/redexgen/X/AY;)V
    .locals 0

    .line 21945
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ac;-><init>(Lcom/facebook/ads/redexgen/X/9a;JJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ac;)J
    .locals 1

    .line 21946
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ac;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ac;)J
    .locals 1

    .line 21947
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ac;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ac;)Lcom/facebook/ads/redexgen/X/9a;
    .locals 0

    .line 21948
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ac;->A02:Lcom/facebook/ads/redexgen/X/9a;

    return-object p0
.end method
