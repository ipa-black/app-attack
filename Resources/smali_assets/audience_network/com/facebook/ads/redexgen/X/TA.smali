.class public final Lcom/facebook/ads/redexgen/X/TA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T9;->A0T(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/T9;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 54283
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "loUGRX1wFwfO8pi8DgxPrGsPJe85sO42"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "t9Fx4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3oarn8HbUVUj6u6EULIVhfy23k9jn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MOoTM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MayuUyWiOMYLrKJeDUJbe9Zh46"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "X9niQtR04keYRbnSLMpJZHmvyyUcrdIf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5gFPyDfRsmHweMwy7A1yA2IFiPZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TA;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T9;I)V
    .locals 0

    .line 54284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAa()V
    .locals 4

    .line 54285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/T9;->A0R(Lcom/facebook/ads/redexgen/X/T9;Z)Z

    .line 54286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T9;->A0S()V

    .line 54287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T9;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    .line 54288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/T9;->A07:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/T9;->A06:Lcom/facebook/ads/redexgen/X/P5;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TA;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TA;->A02:[Ljava/lang/String;

    const-string v1, "KtnVXPQG8pyake3V1oVxr2XzOzf"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 54289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T9;->A06:Lcom/facebook/ads/redexgen/X/P5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P5;->A05()V

    .line 54290
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACC(F)V
    .locals 3

    .line 54291
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 54292
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A01:Lcom/facebook/ads/redexgen/X/T9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setProgress(F)V

    .line 54293
    return-void
.end method
