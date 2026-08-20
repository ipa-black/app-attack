.class public final Lcom/facebook/ads/redexgen/X/F8;
.super Lcom/facebook/ads/redexgen/X/Ze;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F6;->A0F(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F6;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Zw;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Eu;

.field public final synthetic A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 32702
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9yCAU6vHH5iW2uzgCW6HgdGPEZSQZZfL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J47"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6rlZoFx9Uu0Bsrona1cKRXumzm4YYBbS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bhq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "umQrlUDl61wUXIIBom7yT3QugrS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "j4Wkewb2uBFqLUCHLR63rcK9C"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eNU4QeIs11d2vjS0Im22LGZCKxJhHCKO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6j5HGQ5u8FmBkqYMwiejF76PKOqfr1XC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F8;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F6;ZZLcom/facebook/ads/redexgen/X/Eu;Lcom/facebook/ads/redexgen/X/Zw;)V
    .locals 0

    .line 32703
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/F6;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/F8;->A02:Lcom/facebook/ads/redexgen/X/Eu;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Ze;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 32704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/14;->ACT(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/AdError;)V

    .line 32705
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 32706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A02(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:Z

    if-eqz v0, :cond_0

    .line 32707
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/F6;

    .line 32708
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/F6;->A02(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F8;->A02:Lcom/facebook/ads/redexgen/X/Eu;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a3;-><init>(Lcom/facebook/ads/redexgen/X/F8;)V

    .line 32709
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;ILcom/facebook/ads/redexgen/X/OK;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 32710
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/F6;->A03(Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/OM;

    .line 32711
    :goto_0
    return-void

    .line 32712
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A05(Lcom/facebook/ads/redexgen/X/F6;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/F8;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F8;->A04:[Ljava/lang/String;

    const-string v1, "NG7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "cbl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/14;->ACQ(Lcom/facebook/ads/redexgen/X/Zw;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
