.class public final Lcom/facebook/ads/redexgen/X/Pw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Py;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadConfig"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Px;

.field public final A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Px;JZ)V
    .locals 0

    .line 49114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49115
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pw;->A01:Lcom/facebook/ads/redexgen/X/Px;

    .line 49116
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Pw;->A00:J

    .line 49117
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Pw;->A02:Z

    .line 49118
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Px;JZLcom/facebook/ads/redexgen/X/Pv;)V
    .locals 0

    .line 49119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Pw;-><init>(Lcom/facebook/ads/redexgen/X/Px;JZ)V

    return-void
.end method
