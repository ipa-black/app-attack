.class public final Lcom/facebook/ads/redexgen/X/T1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/T0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewListenerImpl"
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T1;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T0;)V
    .locals 0

    .line 54063
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/T0;Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0

    .line 54064
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T1;-><init>(Lcom/facebook/ads/redexgen/X/T0;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T1;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T1;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1dt
        0x1bt
        0xdt
        0x1at
        0xbt
        0x4t
        0x1t
        0xbt
        0x3t
    .end array-data
.end method


# virtual methods
.method public final AAd()V
    .locals 5

    .line 54065
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/T0;->A0W(Lcom/facebook/ads/redexgen/X/T0;ZLjava/lang/String;)V

    .line 54066
    return-void
.end method

.method public final ABC()V
    .locals 4

    .line 54067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A03(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    .line 54069
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    .line 54070
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A0D(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Oy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    .line 54071
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A0D(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Oy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 54072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 54073
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 54074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A00(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/29;->A00(Ljava/lang/String;)V

    .line 54075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A02(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 54076
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A07(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A08(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/MC;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 54077
    return-void
.end method

.method public final ABX()V
    .locals 2

    .line 54078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A07(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A08(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/MC;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 54079
    return-void
.end method

.method public final ADD()V
    .locals 2

    .line 54080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T1;->A00:Lcom/facebook/ads/redexgen/X/T0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A07(Lcom/facebook/ads/redexgen/X/T0;)Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v1

    const/16 v0, 0xf

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->AAR(I)V

    .line 54081
    return-void
.end method
