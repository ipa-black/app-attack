.class public final Lcom/facebook/ads/redexgen/X/SL;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SG;->A0P(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SG;

.field public final synthetic A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52093
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UPn8XPbwEALUh69UMVXoUiPqGt8R4kTd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xdZVJjkszNZsmCCeX5Z25YrBhtN0pwn3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FeQmPyEiHax0mF5hQMzTPI1Ffvx0tG7b"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fvmioVuVICVgRcdenOF4sg60aa8ahOYc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VSPkGqnnwW3mFwqMeREhEXKooJI9EmdX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BoeGFpZQYNsfmUsiS6UyLTqqNWCMa5Si"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RMRc2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QDt69ZTuQHjtvDaFmv1xWY1HLwI8P5x9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SL;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SG;Z)V
    .locals 0

    .line 52094
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/SG;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/SL;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 52095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A08(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A08()Lcom/facebook/ads/redexgen/X/Li;

    move-result-object v3

    .line 52096
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Li;
    if-eqz v3, :cond_0

    .line 52097
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A01:Z

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Li;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Li;->setPageDetailsVisible(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/SL;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_2

    .line 52098
    sget-object v2, Lcom/facebook/ads/redexgen/X/SL;->A02:[Ljava/lang/String;

    const-string v1, "0vUmK8ViOKnLOUfa8Uz3HinzNmc8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SG;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    .line 52099
    :cond_0
    return-void

    .line 52100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
