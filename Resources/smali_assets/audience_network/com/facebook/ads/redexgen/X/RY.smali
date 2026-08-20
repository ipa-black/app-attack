.class public final Lcom/facebook/ads/redexgen/X/RY;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RW;->A08(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/LD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ia;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/LD;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/On;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/RW;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 50967
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9EcwbXL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xSjvPMkgWWioBuUjephCpzaMcXmM2sD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "H"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Z0OwbQNEejaaYPjBGD9d9AX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LifEXsQyKShCOMizwIOXiweZ0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XJXBCYBKjtegaNwUZmi8zWUKmanAO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UJgIUi3fLAa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "b39pUeydvHz6vxm1zIrt3qO8a47iYX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RY;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RW;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Ia;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 0

    .line 50968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RY;->A03:Lcom/facebook/ads/redexgen/X/RW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RY;->A04:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RY;->A02:Lcom/facebook/ads/redexgen/X/On;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RY;->A05:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/RY;->A01:Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 4

    .line 50969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A03:Lcom/facebook/ads/redexgen/X/RW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RW;->A04(Lcom/facebook/ads/redexgen/X/RW;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0Z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RY;->A04:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RY;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50970
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RY;->A06:[Ljava/lang/String;

    const-string v1, "G0eOJNFPtps4qsYKpGpuAXPxSINW56"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A03:Lcom/facebook/ads/redexgen/X/RW;

    .line 50971
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RW;->A03(Lcom/facebook/ads/redexgen/X/RW;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A02:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50972
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RY;->A00:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RY;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A05:Ljava/util/Map;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A03:Lcom/facebook/ads/redexgen/X/RW;

    .line 50973
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RW;->A07(Lcom/facebook/ads/redexgen/X/RW;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A01:Lcom/facebook/ads/redexgen/X/LD;

    .line 50974
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 50975
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 50976
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 50977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A03:Lcom/facebook/ads/redexgen/X/RW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RW;->A03(Lcom/facebook/ads/redexgen/X/RW;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RY;->A02:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 50978
    :cond_1
    return-void
.end method
