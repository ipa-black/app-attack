.class public final Lcom/facebook/ads/redexgen/X/Ds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadManager$TaskState$State;
    }
.end annotation


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

.field public final A05:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;IFJLjava/lang/Throwable;)V
    .locals 0

    .line 29170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29171
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ds;->A02:I

    .line 29172
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ds;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    .line 29173
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ds;->A01:I

    .line 29174
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ds;->A00:F

    .line 29175
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Ds;->A03:J

    .line 29176
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Ds;->A05:Ljava/lang/Throwable;

    .line 29177
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/facebook/ads/redexgen/X/Di;)V
    .locals 0

    .line 29178
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Ds;-><init>(ILcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;IFJLjava/lang/Throwable;)V

    return-void
.end method
