.class public final Lcom/facebook/ads/redexgen/X/Ef;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadEventInfo"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/Gb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gb;JJJ)V
    .locals 0

    .line 32029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32030
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ef;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    .line 32031
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ef;->A01:J

    .line 32032
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Ef;->A02:J

    .line 32033
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Ef;->A00:J

    .line 32034
    return-void
.end method
