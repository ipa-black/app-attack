.class public final Lcom/facebook/ads/redexgen/X/TG;
.super Lcom/facebook/ads/redexgen/X/4e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2M;->getOnScrollListener()Lcom/facebook/ads/redexgen/X/4e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2M;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 54316
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8Yn2PgyedH1iX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "R67HljoZMbsPm0e6EtybvG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "R8Pp2uuVTku92bGxcvFWCvwfHASfPd1y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2y5E80sPhAjkTDK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Itturke"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "abRBLy2wdT4xlnoMDCf2vtSzdY3x1mV2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QG421Xj1ReSIzqeVHucrcoJTP843GzsJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TG;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2M;)V
    .locals 0

    .line 54317
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/2M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4e;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/E9;I)V
    .locals 4

    .line 54318
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4e;->A0L(Lcom/facebook/ads/redexgen/X/E9;I)V

    .line 54319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/2M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/Ye;

    move-result-object v0

    .line 54320
    .local v0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/Ye;
    if-nez v0, :cond_0

    .line 54321
    return-void

    .line 54322
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A27()I

    move-result v1

    .line 54323
    .local v1, "scrollPosition":I
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/2M;

    .line 54324
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/2M;

    .line 54325
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 54326
    .end local v2
    :cond_1
    return-void

    .line 54327
    :cond_2
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/E9;->A1F(I)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Lm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TG;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_4

    .line 54328
    .local v2, "setAdToolBarClickListener":Lcom/facebook/ads/redexgen/X/Lm;
    sget-object v2, Lcom/facebook/ads/redexgen/X/TG;->A01:[Ljava/lang/String;

    const-string v1, "EBOsosi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 54329
    return-void

    .line 54330
    :cond_3
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Lm;->AEn()V

    .line 54331
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
